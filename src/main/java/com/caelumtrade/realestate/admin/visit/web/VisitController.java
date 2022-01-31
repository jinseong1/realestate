package com.caelumtrade.realestate.admin.visit.web;

import com.caelumtrade.realestate.admin.visit.dao.VisitDAO;
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

@Controller
@RequestMapping(ADMIN)
@MapperScan(basePackages="com.caelumtrade.realestate.admin.visit.dao")
public class VisitController extends Base {

    @Autowired
    private VisitDAO dao;

    /**
     * 고객관리 리스트 이동 처리.
     * @param
     * @return
     * @throws Exception
     */
    @RequestMapping("/visit/visitList")
    public String visitListMove(Model model, Device device) throws Exception {

        model.addAttribute("start", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));

        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.DATE, 3);

        model.addAttribute("end", new SimpleDateFormat("yyyy-MM-dd").format(cal.getTime()));

        return CommonUtil.device_move(device) +"/visit/visitList"+CommonUtil.device_gnb(device, "SUFFIX");
    }

    /**
     * 고객 상담 리스트 호출 처리.
     * @param map
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/visit/get_visit_list")
    @ResponseBody
    @Transactional
    public Map get_visit_list(@RequestParam Map map, HttpServletRequest request) throws Exception {
        Map result = new HashMap();

        map.put("member_idx", request.getSession().getAttribute("admin_idx"));

        int total_count = dao.get_visit_cnt(map);

        int page      = Integer.parseInt(map.get("page").toString());
        int pageSize  = 20;
        int blockSize = 10;

        map.put("start", (page-1)* pageSize+1);
        map.put("end",   page *pageSize);

        result.put("list",         dao.get_visit_list(map));
        result.put("pagingString", PagingUtil.adminPaging(total_count, pageSize, blockSize, page));
        result.put("total_count",  total_count);

        return result;
    }


}

