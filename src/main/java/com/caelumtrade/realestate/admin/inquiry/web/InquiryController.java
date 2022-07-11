package com.caelumtrade.realestate.admin.inquiry.web;

import com.caelumtrade.realestate.admin.inquiry.dao.InquiryDAO;
import com.caelumtrade.realestate.util.Base;
import com.caelumtrade.realestate.util.CommonUtil;
import com.caelumtrade.realestate.util.PagingUtil;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mobile.device.Device;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.*;

import static com.caelumtrade.realestate.util.Base.ADMIN;

/**
 * 문의 관리 컨트롤러
 */
@Controller
@RequestMapping(ADMIN)
@MapperScan(basePackages="com.caelumtrade.realestate.admin.inquiry.dao")
public class InquiryController extends Base {

    @Autowired
    private InquiryDAO dao;

    /**
     * 문의관리 리스트 이동 처리.
     * @param
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/inquiryList")
    public String inquiryListMove(Model model, Device device) throws Exception {

        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.DATE, -14);

        model.addAttribute("start", new SimpleDateFormat("yyyy-MM-dd").format(cal.getTime()));
        model.addAttribute("end", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));

        return CommonUtil.device_move(device)+"/admin/inquiryList"+CommonUtil.device_gnb(device, "SUFFIX");
    }

    /**
     * 문의 리스트 호출 처리.
     * @param map
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/get_inquiry_list")
    @ResponseBody
    @Transactional
    public Map get_inquiry_list(@RequestParam Map map, HttpServletRequest request) throws Exception {
        Map result = new HashMap();

        map.put("member_idx", request.getSession().getAttribute("admin_idx"));

        int total_count = dao.get_total_inquiry_count(map);

        int page      = Integer.parseInt(map.get("page").toString());
        int pageSize  = 20;
        int blockSize = 10;

        map.put("start", (page-1)* pageSize+1);
        map.put("end",   page *pageSize);

        result.put("list",         dao.get_inquiry_list(map));
        result.put("pagingString", PagingUtil.adminPaging(total_count, pageSize, blockSize, page));
        result.put("total_count",  total_count);

        return result;
    }


    /**
     * 문의 처리 완료
     * @param map
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/inquiry_agree")
    @ResponseBody
    @Transactional
    public Map inquiry_agree(@RequestParam Map map, HttpServletRequest request) throws Exception {

        map.put("member_idx", request.getSession().getAttribute("admin_idx"));

        Map result = new HashMap();

        if(dao.inquiry_agree(map) > 0){
            result.put("code", "S");
        } else {
            result.put("code", "E");
        }

        return result;
    }

    /**
     * 문의 삭제
     * @param map
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/inquiry_delete")
    @ResponseBody
    @Transactional
    public Map inquiry_delete(@RequestParam Map map, HttpServletRequest request) throws Exception {

        Map result = new HashMap();

        try{
            List list = new ArrayList();
            String[] temp = map.get("idx").toString().split("-");
            for(int i = 0 ; temp.length > i ; i++){
                list.add(temp[i]);
            }
            if(dao.inquiry_delete(list) > 0){
                result.put("code", "S");
            } else {
                result.put("code", "E");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }


        return result;
    }

}
