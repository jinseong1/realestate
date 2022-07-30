package com.caelumtrade.realestate.front.home.dao;

import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface MainDAO {
    int connect_info_save(Map map);
    Map get_main(Map map);
}

