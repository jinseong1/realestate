package com.caelumtrade.realestate.admin.real.web;

import com.caelumtrade.realestate.admin.real.dao.RealDAO;
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
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import static com.caelumtrade.realestate.util.Base.ADMIN;

/**
 * 부동산 관리
 */
@Controller
@RequestMapping(ADMIN)
@MapperScan(basePackages="com.caelumtrade.realestate.admin.real.dao")
public class RealController extends Base {

    @Autowired
    private RealDAO dao;

    /**
     * 부동산 리스트 이동 처리.
     * @param model
     * @return
     */
    @RequestMapping("/real/realList")
    public String realListMove(Model model){

        model.addAttribute("start", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));

        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.DATE, 3);

        model.addAttribute("end", new SimpleDateFormat("yyyy-MM-dd").format(cal.getTime()));

        return MODULE+"/admin/real/realList"+ADMIN_GNB_SUFFIX;
    }

    /**
     * 부동산 리스트 호출
     * @param map
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/real/get_real_list")
    @ResponseBody
    @Transactional
    public Map get_real_list(@RequestParam Map map, HttpServletRequest request) throws Exception {
        Map result = new HashMap();

        map.put("member_idx", request.getSession().getAttribute("admin_idx"));

        int total_count = dao.get_real_cnt(map);

        int page      = Integer.parseInt(map.get("page").toString());
        int pageSize  = 20;
        int blockSize = 10;

        map.put("start", (page-1)* pageSize+1);
        map.put("end",   page *pageSize);

        result.put("list",         dao.get_real_list(map));
        result.put("pagingString", PagingUtil.adminPaging(total_count, pageSize, blockSize, page));
        result.put("total_count",  total_count);

        return result;
    }




}
