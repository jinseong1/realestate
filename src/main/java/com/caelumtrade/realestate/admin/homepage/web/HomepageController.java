package com.caelumtrade.realestate.admin.homepage.web;

import com.caelumtrade.realestate.admin.homepage.dao.HomepageDAO;
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
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.caelumtrade.realestate.util.Base.ADMIN;

@Controller
@RequestMapping(ADMIN)
@MapperScan(basePackages="com.caelumtrade.realestate.admin.homepage.dao")
public class HomepageController extends Base {

    @Autowired
    private HomepageDAO dao;

    /**
     * 홈페이지 관리 리스트 이동 처리.
     * @param
     * @return
     * @throws Exception
     */
    @RequestMapping("/homepage/homepageList")
    public String homepageListMove(Device device) throws Exception {
        return CommonUtil.device_move(device)+"/homepage/homepageList"+CommonUtil.device_gnb(device, "SUFFIX");
    }

    /**
     * 홈페이지 리스트 호출 처리.
     * @param map
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/homepage/get_homepage_list")
    @ResponseBody
    @Transactional
    public Map get_homepage_list(@RequestParam Map map, HttpServletRequest request) throws Exception {
        Map result = new HashMap();

        map.put("member_idx", request.getSession().getAttribute("admin_idx"));

        int total_count = dao.get_total_homepage_count(map);

        int page      = Integer.parseInt(map.get("page").toString());
        int pageSize  = 20;
        int blockSize = 10;

        map.put("start", (page-1)* pageSize+1);
        map.put("end",   page *pageSize);

        result.put("list",         dao.get_homepage_list(map));
        result.put("pagingString", PagingUtil.adminPaging(total_count, pageSize, blockSize, page));
        result.put("total_count",  total_count);

        return result;
    }

    /**
     * 홈페이지 관리 상세 이동
     * @return
     * @throws Exception
     */
    @RequestMapping("/homepage/homepage_detail_move")
    public String homepage_detail_move(@RequestParam Map map, Model model, Device device) throws Exception {

        model.addAttribute("IDX", map.get("idx"));

        return CommonUtil.device_move(device)+"/homepage/homepageDetail"+CommonUtil.device_gnb(device, "SUFFIX");
    }

    /**
     * 홈페이지 정보 저장
     * @param map
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/homepage/homepage_save")
    @ResponseBody
    @Transactional
    public Map homepage_save(@RequestParam Map map, HttpServletRequest request) throws Exception {
        Map result = new HashMap();

        return result;
    }

}

