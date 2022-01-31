package com.caelumtrade.realestate.admin.real.web;

import com.caelumtrade.realestate.admin.real.dao.RealDAO;
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
    public String realListMove(Model model, Device device){

        model.addAttribute("start", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));

        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.DATE, 3);

        model.addAttribute("end", new SimpleDateFormat("yyyy-MM-dd").format(cal.getTime()));

        return CommonUtil.device_move(device)+"/admin/real/realList"+ADMIN_GNB_SUFFIX;
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

    /**
     * 부동산 등록 이동
     * @param map
     * @param model
     * @return
     */
    @RequestMapping("/real/real_insert_move")
    public String real_insert_move(@RequestParam Map map, Model model,  HttpServletRequest request, Device device){

        map.put("member_idx", request.getSession().getAttribute("admin_idx"));

        // 수정일 시
        if(map.get("idx") != null && !map.get("idx").equals("")){
            model.addAttribute("data", dao.get_real(map));
        }

        return CommonUtil.device_move(device)+"/admin/real/realInsert"+ADMIN_GNB_SUFFIX;
    }

    /**
     * 부동산 저장
     * @param map
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/real/real_save")
    @ResponseBody
    @Transactional
    public Map real_save(@RequestParam Map map, HttpServletRequest request) throws Exception {
        Map result = new HashMap();

        map.put("member_idx", request.getSession().getAttribute("admin_idx"));

        StringBuffer preference = new StringBuffer();
        if(nvl(map.get("preference_1"), "").equals("Y")){
            preference.append("1A");
        }
        if(nvl(map.get("preference_2"), "").equals("Y")){
            preference.append("2A");
        }
        if(nvl(map.get("preference_3"), "").equals("Y")){
            preference.append("3A");
        }
        if(nvl(map.get("preference_4"), "").equals("Y")){
            preference.append("4A");
        }
        if(nvl(map.get("preference_5"), "").equals("Y")){
            preference.append("5A");
        }
        if(nvl(map.get("preference_6"), "").equals("Y")){
            preference.append("6A");
        }
        if(nvl(map.get("preference_7"), "").equals("Y")){
            preference.append("7A");
        }
        if(nvl(map.get("preference_8"), "").equals("Y")){
            preference.append("8A");
        }
        if(nvl(map.get("preference_9"), "").equals("Y")){
            preference.append("9A");
        }

        map.put("preference", preference.toString());
        if(map.get("idx") != null && !map.get("idx").equals("")){ // 수정
            if(dao.real_update(map) > 0){
                result.put("code", "S");
            } else {
                result.put("code", "E");
            }
        } else { // 저장
            if(dao.real_insert(map) > 0){
                result.put("code", "S");
            } else {
                result.put("code", "E");
            }
        }

        return result;
    }

    public Object nvl(Object obj, Object defaults) {
        if(obj == null || obj.equals("")){
            return defaults;
        } else {
            return obj;
        }
    }


}
