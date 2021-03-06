package com.caelumtrade.realestate.admin.admin.dao;

import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface MemberDAO {
    int get_total_member_count(Map map);
    List<Map> get_member_list(Map map);
    Map get_member(Map map);
    int member_save(Map map);
    int member_agree(Map map);

    int get_total_marketing_count(Map map);
    List<Map> get_marketing_list(Map map);
    int marketing_delete(Map map);
}

