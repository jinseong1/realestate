package com.caelumtrade.realestate.common.dao;

import com.google.gson.JsonObject;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface CommonDAO {

    // 행정구역 조회
    List<Map> get_administrative_district(Map param);

}
