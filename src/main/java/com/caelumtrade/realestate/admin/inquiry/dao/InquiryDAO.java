package com.caelumtrade.realestate.admin.inquiry.dao;

import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface InquiryDAO {

    // 등록 고객 총 갯수
    int get_total_inquiry_count(Map map);
    // 등록 고객 리스트
    List<Map> get_inquiry_list(Map map);
    // 문의 삭제
    int inquiry_delete(Map mpa);
}
