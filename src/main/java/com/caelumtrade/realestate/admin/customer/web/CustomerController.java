package com.caelumtrade.realestate.admin.customer.web;

import com.caelumtrade.realestate.admin.customer.dao.CustomerDAO;
import com.caelumtrade.realestate.admin.user.dao.LoginDAO;
import com.caelumtrade.realestate.util.Base;
import com.caelumtrade.realestate.util.PagingUtil;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
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
@MapperScan(basePackages="com.caelumtrade.realestate.admin.customer.dao")
public class CustomerController extends Base {

    @Autowired
    private CustomerDAO dao;

    /**
     * 고객관리 리스트 이동 처리.
     * @param
     * @return
     * @throws Exception
     */
    @RequestMapping("/customer/customerList")
    public String customerListMove() throws Exception {
        return MODULE+"/admin/customer/customerList"+ADMIN_GNB_SUFFIX;
    }

    /**
     * 신규 고객 등록 페이지 이동 처리.
     * @return
     * @throws Exception
     */
    @RequestMapping("/customer/customer_insert_move")
    public String customer_insert_move(@RequestParam Map map, Model model) throws Exception {

        if(map.get("page") != null){
            model.addAttribute("page", map.get("page"));
        } else {
            model.addAttribute("page", 1);
        }

        return MODULE+"/admin/customer/customerInsert"+ADMIN_GNB_SUFFIX;
    }

    /**
     * 고객 정보 저장
     * @param map
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/customer/customer_insert")
    @ResponseBody
    @Transactional
    public Map customer_insert(@RequestParam Map map, HttpServletRequest request) throws Exception {
        Map result = new HashMap();

        map.put("member_idx", request.getSession().getAttribute("admin_idx"));

        if(map.get("m_start") == null || map.get("m_start").equals("")) {
            map.put("m_start", null);
        }
        if(map.get("m_end") == null || map.get("m_end").equals("")) {
            map.put("m_end", null);
        }
        if(map.get("socialSecurityNumber1") == null || map.get("socialSecurityNumber1").equals("")) {
            map.put("socialSecurityNumber1", null);
        }
        if(map.get("socialSecurityNumber2") == null || map.get("socialSecurityNumber2").equals("")) {
            map.put("socialSecurityNumber2", null);
        }

        if(dao.customer_insert(map) > 0){
            result.put("code", "S");
        } else {
            result.put("code", "E");
        }

        return result;
    }


    /**
     * 고객 정보 이동
     * @return
     * @throws Exception
     */
    @RequestMapping("/customer/customer_update_move")
    public String customer_update_move(@RequestParam Map map, Model model, HttpServletRequest request) throws Exception {
        model.addAttribute("top_type", "info");
        model.addAttribute("idx", map.get("idx"));

        map.put("member_idx", request.getSession().getAttribute("admin_idx"));

        if(map.get("page") != null && !map.get("page").equals("")){
            model.addAttribute("page", map.get("page"));
        } else {
            model.addAttribute("page", 1);
        }

        model.addAttribute("data", dao.get_customer_info(map));

        return MODULE+"/admin/customer/customerUpdate"+ADMIN_GNB_SUFFIX;
    }

    /**
     * 고객 정보 수정
     * @param map
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/customer/customer_update")
    @ResponseBody
    @Transactional
    public Map customer_update(@RequestParam Map map, HttpServletRequest request) throws Exception {
        Map result = new HashMap();

        map.put("member_idx", request.getSession().getAttribute("admin_idx"));

        if(map.get("m_start") == null || map.get("m_start").equals("")) {
            map.put("m_start", null);
        }
        if(map.get("m_end") == null || map.get("m_end").equals("")) {
            map.put("m_end", null);
        }
        if(map.get("socialSecurityNumber1") == null || map.get("socialSecurityNumber1").equals("")) {
            map.put("socialSecurityNumber1", null);
        }
        if(map.get("socialSecurityNumber2") == null || map.get("socialSecurityNumber2").equals("")) {
            map.put("socialSecurityNumber2", null);
        }

        if(dao.customer_update(map) > 0){
            result.put("code", "S");
        } else {
            result.put("code", "E");
        }

        return result;
    }

    /**
     * 고객 방문 등록 이동
     * @return
     * @throws Exception
     */
    @RequestMapping("/customer/customer_visit")
    public String customer_visit(@RequestParam Map map, Model model) throws Exception {
        model.addAttribute("top_type", "visit");
        model.addAttribute("idx", map.get("idx"));
        if(map.get("page") != null && !map.get("page").equals("")){
            model.addAttribute("page", map.get("page"));
        } else {
            model.addAttribute("page", 1);
        }

        return MODULE+"/admin/customer/customerVisit"+ADMIN_GNB_SUFFIX;
    }

    /**
     * 고객 상담 리스트 호출 처리.
     * @param map
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/customer/get_visit_list")
    @ResponseBody
    @Transactional
    public Map get_visit_list(@RequestParam Map map, HttpServletRequest request) throws Exception {
        Map result = new HashMap();

        map.put("member_idx", request.getSession().getAttribute("admin_idx"));

        int total_count = dao.get_member_visit_cnt(map);

        int page      = Integer.parseInt(map.get("page").toString());
        int pageSize  = 20;
        int blockSize = 10;

        map.put("start", (page-1)* pageSize+1);
        map.put("end",   page *pageSize);

        result.put("list",         dao.get_member_visit_list(map));
        result.put("pagingString", PagingUtil.adminPaging(total_count, pageSize, blockSize, page));
        result.put("total_count",  total_count);

        return result;
    }

    /**
     * 고객 상담 저장
     * @param map
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/customer/visit_save")
    @ResponseBody
    @Transactional
    public Map visit_save(@RequestParam Map map, HttpServletRequest request) throws Exception {
        Map result = new HashMap();

        map.put("member_idx", request.getSession().getAttribute("admin_idx"));

        if(dao.visit_save(map) > 0){
            result.put("code", "S");
        } else {
            result.put("code", "E");
        }

        return result;
    }

    /**
     * 고객 상담 삭제
     * @param map
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/customer/member_visit_delete")
    @ResponseBody
    @Transactional
    public Map member_visit_delete(@RequestParam Map map, HttpServletRequest request) throws Exception {
        Map result = new HashMap();

        map.put("member_idx", request.getSession().getAttribute("admin_idx"));

        if(dao.member_visit_delete(map) > 0){
            result.put("code", "S");
        } else {
            result.put("code", "E");
        }

        return result;
    }

    /**
     * 고객 계약 내역 리스트 이동
     * @return
     * @throws Exception
     */
    @RequestMapping("/customer/customer_payList")
    public String customer_payList(@RequestParam Map map, Model model) throws Exception {
        model.addAttribute("top_type", "payList");
        model.addAttribute("idx", map.get("idx"));
        if(map.get("page") != null && !map.get("page").equals("")){
            model.addAttribute("page", map.get("page"));
        } else {
            model.addAttribute("page", 1);
        }

        return MODULE+"/admin/customer/customerUpdate"+ADMIN_GNB_SUFFIX;
    }

    /**
     * 고객 상담 이동
     * @return
     * @throws Exception
     */
    @RequestMapping("/customer/customer_counseling")
    public String customer_counseling(@RequestParam Map map, Model model) throws Exception {
        model.addAttribute("top_type", "counseling");
        model.addAttribute("idx", map.get("idx"));
        if(map.get("page") != null && !map.get("page").equals("")){
            model.addAttribute("page", map.get("page"));
        } else {
            model.addAttribute("page", 1);
        }

        return MODULE+"/admin/customer/customerCounseling"+ADMIN_GNB_SUFFIX;
    }

    /**
     * 고객 상담 리스트 호출 처리.
     * @param map
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/customer/get_counseling_list")
    @ResponseBody
    @Transactional
    public Map get_counseling_list(@RequestParam Map map, HttpServletRequest request) throws Exception {
        Map result = new HashMap();

        map.put("member_idx", request.getSession().getAttribute("admin_idx"));

        int total_count = dao.get_total_customerMemo_count(map);

        int page      = Integer.parseInt(map.get("page").toString());
        int pageSize  = 20;
        int blockSize = 10;

        map.put("start", (page-1)* pageSize+1);
        map.put("end",   page *pageSize);

        result.put("list",         dao.get_customerMemo_list(map));
        result.put("pagingString", PagingUtil.adminPaging(total_count, pageSize, blockSize, page));
        result.put("total_count",  total_count);

        return result;
    }

    /**
     * 고객 상담 저장
     * @param map
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/customer/customer_counseling_save")
    @ResponseBody
    @Transactional
    public Map customer_counseling_save(@RequestParam Map map, HttpServletRequest request) throws Exception {
        Map result = new HashMap();

        if(dao.customer_counseling_save(map) > 0){
            result.put("code", "S");
        } else {
            result.put("code", "E");
        }

        return result;
    }

    /**
     * 고객 상담 수정
     * @param map
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/customer/member_counseling_update")
    @ResponseBody
    @Transactional
    public Map member_counseling_update(@RequestParam Map map, HttpServletRequest request) throws Exception {
        Map result = new HashMap();

        if(dao.member_counseling_update(map) > 0){
            result.put("code", "S");
        } else {
            result.put("code", "E");
        }

        return result;
    }

    /**
     * 고객 상담 삭제
     * @param map
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/customer/member_counseling_delete")
    @ResponseBody
    @Transactional
    public Map member_counseling_delete(@RequestParam Map map, HttpServletRequest request) throws Exception {
        Map result = new HashMap();

        if(dao.member_counseling_delete(map) > 0){
            result.put("code", "S");
        } else {
            result.put("code", "E");
        }

        return result;
    }

    /**
     * 고객 리스트 호출 처리.
     * @param map
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/customer/get_customer_list")
    @ResponseBody
    @Transactional
    public Map get_customer_list(@RequestParam Map map, HttpServletRequest request) throws Exception {
        Map result = new HashMap();

        map.put("member_idx", request.getSession().getAttribute("admin_idx"));

        int total_count = dao.get_total_customer_count(map);

        int page      = Integer.parseInt(map.get("page").toString());
        int pageSize  = 20;
        int blockSize = 10;

        map.put("start", (page-1)* pageSize+1);
        map.put("end",   page *pageSize);

        result.put("list",         dao.get_customer_list(map));
        result.put("pagingString", PagingUtil.adminPaging(total_count, pageSize, blockSize, page));
        result.put("total_count",  total_count);

        return result;
    }

    /**
     * 고객 삭제 처리.
     * @param map
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/customer/customer_delete")
    @ResponseBody
    @Transactional
    public Map customer_delete(@RequestParam Map map, HttpServletRequest request) throws Exception {
        Map result = new HashMap();

        List list = new ArrayList();
        String[] temp = map.get("idx").toString().split("-");
        for(int i = 0 ; temp.length > i ; i++){
            list.add(temp[i]);
        }
        if(dao.customer_delete(list) > 0) {
            result.put("code", "S");
        } else {
            result.put("code", "E");
        }

        return result;
    }


}

