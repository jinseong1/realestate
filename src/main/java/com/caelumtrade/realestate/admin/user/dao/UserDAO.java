package com.caelumtrade.realestate.admin.user.dao;

import org.springframework.stereotype.Repository;

import java.util.Map;

@Repository
public interface UserDAO {

    Map getUser(Map map);

    int user_change_save(Map map);

}

