package com.caelumtrade.realestate.admin.jointBrokerage.web;

import com.caelumtrade.realestate.admin.jointBrokerage.dao.JointBrokerageDAO;
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
import java.util.HashMap;
import java.util.Map;

import static com.caelumtrade.realestate.util.Base.ADMIN;

/**
 * 공동 중개 컨트롤러
 */
@Controller
@RequestMapping(ADMIN)
@MapperScan(basePackages="com.caelumtrade.realestate.admin.jointBrokerage.dao")
public class JointBrokerageController extends Base {

    @Autowired
    private JointBrokerageDAO dao;

    /**
     * 공동 중개 리스트 이동 처리.
     * @param
     * @return
     * @throws Exception
     */
    @RequestMapping("/jointBrokerage/jointBrokerageList")
    public String inquiryListMove(Model model, Device device) throws Exception {

        return CommonUtil.device_move(device)+"/jointBrokerage/jointBrokerageList"+CommonUtil.device_gnb(device, "SUFFIX");
    }

    /**
     * 공동 중개 리스트 호출 처리.
     * @param map
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/jointBrokerage/get_jointBrokerage_list")
    @ResponseBody
    @Transactional
    public Map get_jointBrokerage_list(@RequestParam Map map, HttpServletRequest request) throws Exception {
        Map result = new HashMap();

        map.put("member_idx", request.getSession().getAttribute("admin_idx"));

        int total_count = dao.get_total_jointBrokerage_count(map);

        int page      = Integer.parseInt(map.get("page").toString());
        int pageSize  = 20;
        int blockSize = 10;

        map.put("start", (page-1)* pageSize+1);
        map.put("end",   page *pageSize);

        result.put("list",         dao.get_jointBrokerage_list(map));
        result.put("pagingString", PagingUtil.adminPaging(total_count, pageSize, blockSize, page));
        result.put("total_count",  total_count);

        return result;
    }

    /**
     * 공동 중개 등록 페이지 이동 처리.
     * @return
     * @throws Exception
     */
    @RequestMapping("/jointBrokerage/jointBrokerage_insert_move")
    public String jointBrokerage_insert_move(@RequestParam Map map, Model model, Device device) throws Exception {

        if(map.get("page") != null){
            model.addAttribute("page", map.get("page"));
        } else {
            model.addAttribute("page", 1);
        }

        return CommonUtil.device_move(device)+"/jointBrokerage/jointBrokerageInsert"+CommonUtil.device_gnb(device, "SUFFIX");
    }

    /**
     * 공동 중개 삭제
     * @param map
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/jointBrokerage/jointBrokerage_delete")
    @ResponseBody
    @Transactional
    public Map inquiry_delete(@RequestParam Map map, HttpServletRequest request) throws Exception {

        map.put("member_idx", request.getSession().getAttribute("admin_idx"));

        Map result = new HashMap();

        if(dao.jointBrokerage_delete(map) > 0){
            result.put("code", "S");
        } else {
            result.put("code", "E");
        }

        return result;
    }

}
