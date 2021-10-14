package com.caelumtrade.realestate.admin.user.dao;

import org.springframework.stereotype.Repository;

import java.util.Map;

@Repository
public interface UserDAO {

    int getUser(Map map);

}

