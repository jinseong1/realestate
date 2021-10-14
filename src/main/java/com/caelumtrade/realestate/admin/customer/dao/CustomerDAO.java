package com.caelumtrade.realestate.admin.customer.dao;

import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface CustomerDAO {

    // 등록 고객 총 갯수
    int get_total_customer_count(Map map);
    // 등록 고객 리스트
    List<Map> get_customer_list(Map map);
    // 신규 고객 등록하기
    int customer_insert(Map map);
    // 고객 수정하기
    int customer_update(Map map);
    // 고객 삭제하기
    int customer_delete(List list);
    // 고객 상세 조회
    Map get_customer_info(Map map);
    // 고객 상담 총 갯수
    int get_total_customerMemo_count(Map map);
    // 고객 상담 리스트
    List<Map> get_customerMemo_list(Map map);
    // 고객 상담 저장
    int customer_counseling_save(Map map);
    // 고객 상담 수정
    int member_counseling_update(Map map);
    // 고객 상담 삭제
    int member_counseling_delete(Map map);
}

