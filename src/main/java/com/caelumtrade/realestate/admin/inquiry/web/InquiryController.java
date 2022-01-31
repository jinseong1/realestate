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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

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
     * 고객관리 리스트 이동 처리.
     * @param
     * @return
     * @throws Exception
     */
    @RequestMapping("/inquiry/inquiryList")
    public String inquiryListMove(Device device) throws Exception {
        return CommonUtil.device_move(device) +"/admin/inquiry/inquiryList"+ADMIN_GNB_SUFFIX;
    }

    /**
     * 고객 문의 리스트 호출 처리.
     * @param map
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/inquiry/get_inquiry_list")
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

}
