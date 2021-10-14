package com.caelumtrade.realestate.config;

import com.caelumtrade.realestate.admin.user.dao.LoginDAO;
import com.caelumtrade.realestate.admin.user.vo.MemberVO;
import com.caelumtrade.realestate.util.BCryptCipherUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/**
 * 인증 프로바이더
 * 로그인시 사용자가 입력한 아이디와 비밀번호를 확인하고 해당 권한을 주는 클래스
 *
 * @author wedul
 *
 */
@Component("authProvider")
public class AuthProvider implements AuthenticationProvider {

    @Autowired
    LoginDAO loginDAO;

    /**
     * login checked
     * @param authentication
     * @return
     * @throws AuthenticationException
     */
    @Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {

        String id       = authentication.getName();
        String password = authentication.getCredentials().toString();

        // 바밀번호 암호화
        MemberVO memberVO = new MemberVO();
        memberVO.setId(id);

        MemberVO user = null;
        try {
            user = loginDAO.selectUser(memberVO);
        } catch (Exception e){
            e.printStackTrace();
        }

        //email에 맞는 user가 없거나 비밀번호가 맞지 않는 경우.
        if (null == user || !BCryptCipherUtil.matches(password, user.getPw())) {
            return null;
        }

        List<GrantedAuthority> grantedAuthorityList = new ArrayList<>();

        // 로그인 성공시 로그인 사용자 정보 반환
        return new MyAuthenticaion(id, password, grantedAuthorityList, user);
    }

    @Override
    public boolean supports(Class<?> authentication) {
        return authentication.equals(UsernamePasswordAuthenticationToken.class);
    }

}
