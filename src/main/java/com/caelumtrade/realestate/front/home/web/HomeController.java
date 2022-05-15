package com.caelumtrade.realestate.front.home.web;

import com.caelumtrade.realestate.front.home.dao.MainDAO;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
@MapperScan(basePackages="com.caelumtrade.realestate.front.home.dao")
public class HomeController {

    @Autowired
    private MainDAO dao;

    @RequestMapping("/")
    public String main(HttpServletRequest request, Model model){

        Map map = new HashMap();
        map.put("url", request.getRequestURL().substring(0, request.getRequestURL().length() - 1));
        Map data = dao.get_main(map);
        if(data != null) {
            model.addAttribute("data", data);
            return "marketing_"+data.get("TEMPLATE_TYPE");
        } else {
            return "/main";
        }
    }

}
