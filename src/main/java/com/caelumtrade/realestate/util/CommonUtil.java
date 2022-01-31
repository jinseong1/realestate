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
     * 고객 접속 아이디
     * @param req
     * @return
     */
    public static String getSessionIdFront(HttpServletRequest req){
        if(req.getSession().getAttribute("userId") != null && !req.getSession().getAttribute("userId").equals("")){
            return req.getSession().getAttribute("userId").toString();
        } else {
            return "";
        }
    }

    /**
     * JsonObject를 Map<String, String>으로 변환한다.
     *
     * @param jsonObj JSONObject.
     * @return Map<String, Object>.
     */
    @SuppressWarnings("unchecked")
    public static Map<String, Object> getMapFromJsonObject(String jsonObj)
    {
        ObjectMapper mapper = new ObjectMapper();

        Map<String, Object> map = new HashMap<String, Object>();

        map = mapper.convertValue(jsonObj, (JavaType)map);

        return map;
    }

    /**
     * String -> JSOM 변환
     * @param data
     * @return
     * @throws ParseException
     */
    public static org.json.simple.JSONObject stringToJson(String data) throws ParseException {

        JSONParser parser = new JSONParser();
        Object obj = parser.parse(data);

        return (org.json.simple.JSONObject) obj;
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
     * Null, 빈값 체크
     * @param data
     * @return
     */
    public static boolean nullAndEmptyCheck(String data){
        if(data != null && !data.equals("")){
          return true;
        } else{
            return false;
        }
    }

    /**
     * 파일 업로드
     * @param file
     * @param path
     * @throws IOException
     */
    public static void file_upload(MultipartFile file, String filename, String path) throws IOException {

        // 업로드 경로 유무 확인 후 없으면 생성 처리.
        File dir = new File(path);
        if(!dir.isDirectory()) dir.mkdirs();

        // 업로드 처리.
        if(file != null && file.getSize() != 0) file.transferTo(new File(path + filename));
    }

    /**
     * 임시 비밀번호 생성 처리.
     * @param size
     * @return
     */
    public static String getRandomPassword(int size) {
        char[] charSet = new char[] {
                '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
                'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',
                'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
        StringBuffer sb = new StringBuffer();
        SecureRandom sr = new SecureRandom();
        sr.setSeed(new Date().getTime());
        int idx = 0;
        int len = charSet.length;
        for (int i = 0; i<size; i++) {
            idx = sr.nextInt(len);
            sb.append(charSet[idx]);
        }
        return sb.toString();
    }

    /**
     * 년월일시분 화면에서 받을 데이터를 MSSQL 날짜 형식에 맞추어 가공 처리.
     * @param map
     * @return
     */
    public static String mssql_date_format(Map map){
        StringBuffer bf = new StringBuffer();

        bf.append(map.get("date") + " ");
        String date_h = map.get("date_h").toString();

        if(date_h.length() == 1){
            bf.append("0"+date_h);
        } else {
            bf.append(date_h);
        }

        String date_m = map.get("date_m").toString();
        if(date_m.length() == 1){
            bf.append(":0"+date_m+":00");
        } else {
            bf.append(":"+date_m+":00");
        }

        return bf.toString();
    }

    /**
     * 1970년 01월 01일 01시 01분 01초부터 흘러온
     * millis 를 Second 시간으로 변경한다.
     */
    public static Long millisToSecond(){
        return System.currentTimeMillis() / 1000;
    }

    /**
     * 1970년 01월 01일 01시 01분 01초부터 흘러온
     * second 를 millis 시간으로 변경한다.
     */
    public static Long secondToMillis(Long seconds){
        return seconds * 1000;
    }

    /**
     * 1970년 01월 01일 01시 01분 01초부터 흘러온
     * millis 원하는 날짜 형식으로 변경한다.
     */
    public static String millisDateFormat(Long millis, String type){
        return new SimpleDateFormat(type).format(new Date(millis));
    }

    /**
     * 1970년 01월 01일 01시 01분 01초부터 흘러온
     * second 원하는 날짜 형식으로 변경한다.
     */
    public static String secondDateFormat(Long second, String type){
        return new SimpleDateFormat(type).format(new Date(second * 1000));
    }

    /**
     * 화면 달력시간을 밀리터리 시간으로 변경
     * @param yyyy_MM_dd
     * @param type
     * @return
     * @throws java.text.ParseException
     */
    public static String getMillisTime(String yyyy_MM_dd, String type) throws java.text.ParseException {

        System.out.println("==============================================");
        System.out.println(yyyy_MM_dd);


        String millisTime = "";

        if(type.equals("START")){
            millisTime = String.valueOf(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(yyyy_MM_dd + " 00:00:00").getTime()).substring(0, 10);
        } else if(type.equals("END")){
            millisTime = String.valueOf(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(yyyy_MM_dd + " 23:59:59").getTime()).substring(0, 10);
        }

        System.out.println(millisTime);
        System.out.println("==============================================");
        return millisTime;
    }

    /**
     * Editor 이미지 업로드 처리.
     * @param resp
     * @param multiFile
     * @param upload_path
     * @param upload_url
     * @return
     * @throws IOException
     */
    public static String edit_img_upload(HttpServletResponse resp,
                                         MultipartHttpServletRequest multiFile,
                                         String upload_path,
                                         String upload_url) throws IOException {
        JsonObject json = new JsonObject();
        PrintWriter printWriter = null;
        OutputStream out = null;
        MultipartFile file = multiFile.getFile("upload");
        if(file != null){
            if(file.getSize() > 0 && org.apache.commons.lang3.StringUtils.isNotEmpty(file.getName())){
                if(file.getContentType().toLowerCase().startsWith("image/")){
                    try{
                        String extensions = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."), file.getOriginalFilename().length());

                        String fileName = file.getName();
                        byte[] bytes = file.getBytes();
                        String uploadPath = upload_path;

                        File uploadFile = new File(uploadPath);
                        if (!uploadFile.exists()) {
                            uploadFile.mkdirs();
                        }
                        fileName = CommonUtil.fileName();
                        uploadPath = uploadPath + "/" + fileName + extensions;
                        out = new FileOutputStream(new File(uploadPath));

                        out.write(bytes);

                        printWriter = resp.getWriter();
                        resp.setContentType("text/html");
                        String fileUrl = upload_url + fileName + extensions;

                        json.addProperty("uploaded", 1);
                        json.addProperty("fileName", fileName);
                        json.addProperty("url", fileUrl);

                        printWriter.println(json);

                    }catch(IOException e){
                        e.printStackTrace();
                    } finally{
                        if(out != null){
                            out.close();
                        }
                        if(printWriter != null){
                            printWriter.close();
                        }
                    }
                }
            }
        }
        return null;
    }

    /**
     * 문자 sType 구하기
     * @param data
     * @return
     */
    public static String getSmssType(String data){
        if(data.getBytes().length < 90){
            return "SMS";
        } else {
            return "LMS";
        }
    }

    /**
     * String 마지막 문자 제거
     * @param data
     * @return
     */
    public static String lastStringRemove(String data){
        return data.substring(0, data.length()-1);
    }

    /**
     * System.out.println() 함축 처리.
     * @param msg
     */
    public static void print(String... msg){
        for(String message : msg){
            System.out.println(message);
        }
    }

    /**
     * HttpServletRequest - > HashMap 자동 변경 처리 및 value 값을 자동 trim 처리한다.
     */
    public static Map auto_setting(HttpServletRequest request){
        Map result = new HashMap();

        Enumeration params = request.getParameterNames();
        while(params.hasMoreElements()){
            String name = String.valueOf(params.nextElement());
            result.put(name, request.getParameter(name).trim());
        }

        return result;
    }



}
