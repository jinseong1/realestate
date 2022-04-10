package com.caelumtrade.realestate.util;

import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.JsonObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.context.support.MessageSourceAccessor;
import org.springframework.mobile.device.Device;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.*;

public class CommonUtil extends Base{

    private static Properties properties = null;
    private static MessageSourceAccessor messageSourceAccessor = null;


    /**
     * 모바일, 피씨 구분 처리
     * @param device
     * @return
     */
    public static String device_move(Device device){
        if(device.isMobile() || device.isTablet()){
            return ADMIN_MOB_MOVE_DEVICE;
        } else {
            return ADMIN_PC_MOVE_DEVICE;
        }
    }
    public static String device_gnb(Device device, String type){
        String gnb = null;
        if(device.isMobile() || device.isTablet()){
            if(type.equals("SIMPLE")) {
                gnb = ADMIN_MOB_SIMPLE_SUFFIX;
            } else if (type.equals("SUFFIX")) {
                gnb = ADMIN_MOB_GNB_SUFFIX;
            }
        } else {
            if(type.equals("SIMPLE")) {
                gnb = ADMIN_PC_SIMPLE_SUFFIX;
            } else if (type.equals("SUFFIX")) {
                gnb = ADMIN_PC_GNB_SUFFIX;
            }
        }
        return gnb;
    }

    /**
     * 쿠키 세팅
     * @param cookieName
     * @param cookieValue
     * @param path
     * @param day
     * @param response
     */
    public static void setCookie(String cookieName, String cookieValue, String path, int day, HttpServletResponse response){
        Cookie cookie = new Cookie(cookieName, cookieValue);
        if(path != null) cookie.setPath(path);
        if(day != -1) cookie.setMaxAge(60*60*24*day);
        response.addCookie(cookie);
    }

    /**
     * 쿠키 -> Map 변경
     * @param request
     * @return
     */
    public static Map cookieToMap(HttpServletRequest request){
        Map result = new HashMap();
        Cookie[] cookieList = request.getCookies();
        for(Cookie cookie : cookieList){
            result.put(cookie.getName(), cookie.getValue());
        }
        return result;
    }

    /**
     * 어드민 접속 아이디
     * @param req
     * @return
     */
    public static String getSessionId(HttpServletRequest req){
        return req.getSession().getAttribute("admin_id").toString();
    }

    /**
     * 어드민 접속명
     * @param req
     * @return
     */
    public static String getSessionName(HttpServletRequest req){
        return req.getSession().getAttribute("admin_name").toString();
    }

    /**
     * 어드민 level
     * @param req
     * @return
     */
    public static String getSessionLevel(HttpServletRequest req){
        return req.getSession().getAttribute("admin_level").toString();
    }

    /**
     * 파일 랜덤명
     * @return
     */
    public static String fileName(String... file_name){
        if(file_name.length == 0){
            return new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + UUID.randomUUID();
        } else {
            return new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + UUID.randomUUID() + file_name[0].substring(file_name[0].lastIndexOf("."), file_name[0].length());
        }
    }

    /**
     * 파일 업로드
     * @param file
     * @param path
     * @throws IOException
     */
    public static String file_upload(MultipartFile file, String path, String save_path) throws IOException {

        String filename = fileName(file.getOriginalFilename());

        // 업로드 경로 유무 확인 후 없으면 생성 처리.
        File dir = new File(path);
        if(!dir.isDirectory()) dir.mkdirs();

        // 업로드 처리.
        if(file != null && file.getSize() != 0) file.transferTo(new File(path + filename));

        return save_path + filename;
    }

}
