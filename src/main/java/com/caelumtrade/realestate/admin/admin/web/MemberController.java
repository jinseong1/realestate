package com.caelumtrade.realestate.admin.admin.web;

import com.caelumtrade.realestate.admin.admin.dao.MemberDAO;
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
@MapperScan(basePackages="com.caelumtrade.realestate.admin.admin.dao")
public class MemberController extends Base {

    @Autowired
    private MemberDAO dao;

    /**
     * 고객관리 리스트 이동 처리.
     * @param
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/memberList")
    public String customerListMove(Device device) throws Exception {
        return CommonUtil.device_move(device)+"/admin/memberList"+CommonUtil.device_gnb(device, "SUFFIX");
    }

    /**
     * 고객 리스트 호출 처리.
     * @param map
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/get_member_list")
    @ResponseBody
    @Transactional
    public Map get_member_list(@RequestParam Map map, HttpServletRequest request) throws Exception {
        Map result = new HashMap();

        if(!request.getSession().getAttribute("admin_level").equals(100)) {
            return result;
        }

        int total_count = dao.get_total_member_count(map);

        int page      = Integer.parseInt(map.get("page").toString());
        int pageSize  = 20;
        int blockSize = 10;

        map.put("start", (page-1)* pageSize+1);
        map.put("end",   page *pageSize);

        result.put("list",         dao.get_member_list(map));
        result.put("pagingString", PagingUtil.adminPaging(total_count, pageSize, blockSize, page));
        result.put("total_count",  total_count);

        return result;
    }


    //
    /**
     * 고객 리스트 호출 처리.
     * @param map
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/admin/member_agree")
    @ResponseBody
    @Transactional
    public Map member_agree(@RequestParam Map map, HttpServletRequest request) throws Exception {
        Map result = new HashMap();

        if(!request.getSession().getAttribute("admin_level").equals(100)) {
            return result;
        }

        if(dao.member_agree(map) > 0) {
            result.put("code", "S");
        } else {
            result.put("code", "E");
        }

        return result;
    }
}

