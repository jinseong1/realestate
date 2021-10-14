package com.caelumtrade.realestate.config;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * 로그인 실패 핸들러
 *
 * @author wedul
 *
 */
@Component
public class AuthFailureHandler extends SimpleUrlAuthenticationFailureHandler {

    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException exception) throws IOException, ServletException {
        HttpSession session = request.getSession();
        session.removeAttribute("admin_id");
        session.removeAttribute("admin_name");
        session.setAttribute("msg", "ID 혹은 비밀번호가 일치하지 않습니다.");
        response.sendRedirect("/admin/user/login");
    }
}

