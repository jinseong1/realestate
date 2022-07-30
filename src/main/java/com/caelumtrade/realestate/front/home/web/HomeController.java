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

    @Value("${spring.profiles.active}")
    private String active;

    private String MANI = "https://www.truecode.co.kr";
    private String MARKETING_A = "http://samplea.truecode.co.kr";
    private String MARKETING_B = "http://sampleb.truecode.co.kr";
    private String MARKETING_C = "http://samplec.truecode.co.kr";
    private String MARKETING_D = "http://sampled.truecode.co.kr";


    @RequestMapping("/")
    public String main(HttpServletRequest request, Model model){

        Map map = new HashMap();

        String url = request.getRequestURL().substring(0, request.getRequestURL().length() - 1);
        String return_url;

        if(active.equals("local")) {
            url = MARKETING_A;
        }

        map.put("url", url);

        String ip = request.getHeader("X-Forwarded-For");

        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        } if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        } if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("HTTP_CLIENT_IP");
        } if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("HTTP_X_FORWARDED_FOR");
        } if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("X-Real-IP");
        } if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("X-RealIP");
        } if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("REMOTE_ADDR");
        } if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }

        map.put("ip", ip);

        // 접속 정보 저장
        dao.connect_info_save(map);

        Map data = dao.get_main(map);
        if(data != null) {
            model.addAttribute("data", data);
            return_url = "marketing_"+data.get("TEMPLATE_TYPE");
        } else {
            return_url = "/main";
        }


        return return_url;
    }

}
