package com.caelumtrade.realestate.admin.jointBrokerage.dao;

import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface JointBrokerageDAO {
    int get_total_jointBrokerage_count(Map map);

    List<Map> get_jointBrokerage_list(Map map);
    int jointBrokerage_insert(Map mpa);
    int jointBrokerage_update(Map mpa);
    int jointBrokerage_delete(Map map);
    int jointBrokerage_img_delete(Map map);
    int jointBrokerage_img_save(Map map);
    Map get_jointBrokerage(Map map);
    int jointBrokerage_detail_save(Map map);
}
