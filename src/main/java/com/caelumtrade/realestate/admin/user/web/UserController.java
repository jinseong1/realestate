package com.caelumtrade.realestate.admin.user.web;

import com.caelumtrade.realestate.admin.user.dao.LoginDAO;
import com.caelumtrade.realestate.admin.user.dao.UserDAO;
import com.caelumtrade.realestate.util.BCryptCipherUtil;
import com.caelumtrade.realestate.util.Base;
import com.caelumtrade.realestate.util.PagingUtil;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.HashMap;
import java.util.Map;

import static com.caelumtrade.realestate.util.Base.ADMIN;

@Controller
@RequestMapping(ADMIN)
@MapperScan(basePackages="com.caelumtrade.realestate.admin.user.dao")
public class UserController extends Base {

    @Value("${spring.profiles.active}")
    String active;

    @Autowired
    private UserDAO dao;

    /**
     * Admin 로그인 페이지 이동
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/user/user_change")
    public String user_change(Model model, HttpServletRequest request) throws Exception{

        Map inputData = new HashMap();
        inputData.put("admin_idx", request.getSession().getAttribute("admin_idx"));

        model.addAttribute("data", dao.getUser(inputData));

        return MODULE+"/admin/user/user_change"+ADMIN_GNB_SUFFIX;
    }

    //
    @RequestMapping("/user/user_change_save")
    @ResponseBody
    @Transactional
    public Map user_change_save(@RequestParam Map map, HttpServletRequest request) throws Exception {
        Map result = new HashMap();

        map.put("admin_idx", request.getSession().getAttribute("admin_idx"));

        // 비밀번호 암호화 처리.
        if(map.get("pwd") != null && !map.get("pwd").equals("")) {
            map.put("pwd", BCryptCipherUtil.encode(map.get("pwd").toString()));
        }
        map.put("id", map.get("temp_id"));

        if(dao.user_change_save(map) > 0){ // 내정보 수정
            map.put("code", "S");
        } else {
            map.put("code", "E");
        }

        return result;
    }



}
