package com.caelumtrade.realestate.common.dao;

import com.google.gson.JsonObject;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface CommonDAO {

    // 행정구역 조회
    List<Map> get_administrative_district(Map param);

    // 매칭되는 키 조회
    int get_js_key_match(Map mpa);
    // 문의 저장
    int inquiry_save(Map map);


}
