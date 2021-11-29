package com.caelumtrade.realestate.common.web;

import com.caelumtrade.realestate.common.dao.CommonDAO;
import com.caelumtrade.realestate.util.PagingUtil;
import com.google.gson.JsonObject;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/common")
@MapperScan(basePackages="com.caelumtrade.realestate.common.dao")
public class CommonController {

    @Autowired
    private CommonDAO dao;

    /**
     * 행정구역 리스트 조회
     * @param param
     * @return
     * @throws Exception
     */
    @RequestMapping("/get_administrative_district")
    @ResponseBody
    public List<Map> get_administrative_district(@RequestParam Map param) throws Exception {
        return dao.get_administrative_district(param);
    }

}
