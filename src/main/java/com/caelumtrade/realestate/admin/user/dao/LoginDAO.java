package com.caelumtrade.realestate.admin.user.dao;

import com.caelumtrade.realestate.admin.user.vo.MemberVO;
import com.caelumtrade.realestate.admin.user.vo.MenuVO;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface LoginDAO {
    Map get_member(Map map);
    MemberVO selectUser(MemberVO memberVO);
    List<Map> testList(Map map);
    List<MenuVO> menuList(Map map);
    List<Map> menuLeftList(Map map);
    int update_last_login(Map map);
    String getRoleMenu(Map map);
    String loginConfirm(Map map);
};
