package com.caelumtrade.realestate.admin.user.web;

import com.caelumtrade.realestate.admin.user.dao.LoginDAO;
import com.caelumtrade.realestate.admin.user.dao.UserDAO;
import com.caelumtrade.realestate.util.Base;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
    public String admin_login_page(Model model, HttpServletRequest request) throws Exception{

        Map inputData = new HashMap();
        inputData.put("admin_idx", request.getSession().getAttribute("admin_idx"));

        model.addAttribute("data", dao.getUser(inputData));

        return MODULE+"/admin/user/userChange"+ADMIN_SIMPLE_SUFFIX;
    }



}
