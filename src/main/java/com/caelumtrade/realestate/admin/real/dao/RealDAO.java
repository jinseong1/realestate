package com.caelumtrade.realestate.admin.real.dao;

import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface RealDAO {
    // 부동산 리스트 총 갯수
    int get_real_cnt(Map map);
    // 부동산 리스트
    List<Map> get_real_list(Map map);
}
