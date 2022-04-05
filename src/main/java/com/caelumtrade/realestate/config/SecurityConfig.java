package com.caelumtrade.realestate.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.configuration.EnableGlobalAuthentication;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;


@Configuration
@EnableWebSecurity
@EnableGlobalAuthentication
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    AuthProvider authProvider;

    @Autowired
    AuthFailureHandler authFailureHandler;

    @Autowired
    AuthSuccessHandler authSuccessHandler;

    @Override
    public void configure(WebSecurity web) throws Exception {
        // 허용되어야 할 경로들
        web.ignoring().antMatchers(
                "/resources/**",
                "/upload/**",
                "/favicon.ico"
               ); // #3
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {

        // 로그인 설정
        http.authorizeRequests()
                // ROLE_USER, ROLE_ADMIN으로 권한 분리 유알엘 정의
                .antMatchers("/", "/admin/user/login", "/error**").permitAll()
                .antMatchers("/admin/user/sing_up_move").permitAll()
                .antMatchers("/admin/user/singUpAction").permitAll()
                .antMatchers("/**").access("ROLE_USER")
                .antMatchers("/**").access("ROLE_ADMIN")
                .antMatchers("/admin/**").access("ROLE_ADMIN")
                .antMatchers("/**").authenticated(); //  로그인된 사용자가 요청을 수행할 떄 필요하다  만약 사용자가 인증되지 않았다면, 스프링 시큐리티 필터는 요청을 잡아내고 사용자를 로그인 페이지로 리다이렉션 해준다.

        // 로그인 페이지 및 성공 url, handler 그리고 로그인 시 사용되는 id, password 파라미터 정의
        http.formLogin()
                .loginPage("/admin/user/login") //  로그인 페이지 이동 url
                .loginProcessingUrl("/admin/user/loginAction") // 로그인form의  action과 일치시켜주어야 함.
                .successHandler(authSuccessHandler) // 성공시 핸들러
                .failureHandler(authFailureHandler) // 실패시 핸들러
                .usernameParameter("id") // 아이디 파라미터
                .passwordParameter("password") // 미빌번호 파라미터
                .and()
                .authenticationProvider(authProvider); // 로그인 핸들러

        // 로그아웃 관련 설정
        http.logout().logoutRequestMatcher(new AntPathRequestMatcher("/admin/user/logout")) // 로그아웃 이동 url
                .logoutSuccessUrl("/admin/user/login") // 로그아웃 성공시 url
                .invalidateHttpSession(true);

        http.csrf().disable();

        //Prevent X-Frame-Options
        http.headers().frameOptions().disable();

    }

}
