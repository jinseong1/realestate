package com.caelumtrade.realestate.config;
import com.caelumtrade.realestate.admin.user.vo.MemberVO;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;

import java.util.List;

public class MyAuthenticaion extends UsernamePasswordAuthenticationToken {

    private  static final long serialVersionUID = 1L;

    MemberVO user;

    public MyAuthenticaion (String id, String password, List<GrantedAuthority> grantedAuthorityList, MemberVO user) {
        super(id, password, grantedAuthorityList);
        this.user = user;
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }
    public MemberVO getUser() {
        return user;
    }
    public void setUser(MemberVO user) {
        this.user = user;
    }

}