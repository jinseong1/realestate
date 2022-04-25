package com.caelumtrade.realestate.admin.admin.dao;

import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface MemberDAO {
    int get_total_member_count(Map map);
    List<Map> get_member_list(Map map);
    int member_agree(Map map);
}

