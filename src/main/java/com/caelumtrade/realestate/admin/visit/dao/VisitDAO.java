package com.caelumtrade.realestate.admin.visit.dao;

import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface VisitDAO {
    // 고객 방문 총 갯수
    int get_visit_cnt(Map map);
    // 고객 방문 총 리스트
    List<Map> get_visit_list(Map map);
}

