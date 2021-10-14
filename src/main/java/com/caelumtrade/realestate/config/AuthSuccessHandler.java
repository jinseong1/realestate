package com.caelumtrade.realestate.config;

import com.caelumtrade.realestate.admin.user.dao.AdminDAO;
import com.caelumtrade.realestate.admin.user.dao.LoginDAO;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * 로그인 성공 핸들러
 *
 * @author wedul
 *
 */
@Component
@MapperScan(basePackages="com.caelumtrade.realsetate.admin.user.dao")
public class AuthSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {

    @Autowired
    private LoginDAO dao;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws ServletException, IOException {
        HttpSession session = request.getSession();

        Map input_data = new HashMap();
        input_data.put("id", request.getParameter("id"));
        input_data = dao.get_member(input_data);

        session.removeAttribute("msg");
        session.setAttribute("admin_idx",  input_data.get("idx"));
        session.setAttribute("admin_id",   request.getParameter("id"));
        session.setAttribute("admin_name", input_data.get("name"));

        response.sendRedirect("/admin/user/loginConfirm");
    }

}
