package com.caelumtrade.realestate.admin.homepage.dao;

import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface HomepageDAO {

    int get_total_homepage_count(Map map);
    List<Map> get_homepage_list(Map map);
    Map get_homepage_h(Map map);
    int homepage_temp_save(Map map);
    int homepage_save(Map map);
    int homepage_detail_save(Map map);
    Map get_homepage_detail(Map map);
}

