package com.caelumtrade.realestate.admin.homepage.web;

import com.caelumtrade.realestate.admin.homepage.dao.HomepageDAO;
import com.caelumtrade.realestate.util.Base;
import com.caelumtrade.realestate.util.CommonUtil;
import com.caelumtrade.realestate.util.PagingUtil;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mobile.device.Device;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import twitter4j.internal.http.HttpRequest;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.caelumtrade.realestate.util.Base.ADMIN;

@Controller
@RequestMapping(ADMIN)
@MapperScan(basePackages="com.caelumtrade.realestate.admin.homepage.dao")
public class HomepageController extends Base {

    @Autowired
    private HomepageDAO dao;

    /**
     * 홈페이지 관리 리스트 이동 처리.
     * @param
     * @return
     * @throws Exception
     */
    @RequestMapping("/homepage/homepageList")
    public String homepageListMove(Device device, HttpServletRequest request, Model model) throws Exception {
        model.addAttribute("member_level", request.getSession().getAttribute("admin_level"));
        return CommonUtil.device_move(device)+"/homepage/homepageList"+CommonUtil.device_gnb(device, "SUFFIX");
    }

    /**
     * 홈페이지 리스트 호출 처리.
     * @param map
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/homepage/get_homepage_list")
    @ResponseBody
    @Transactional
    public Map get_homepage_list(@RequestParam Map map, HttpServletRequest request) throws Exception {
        Map result = new HashMap();

        map.put("member_idx", request.getSession().getAttribute("admin_idx"));
        map.put("member_level", request.getSession().getAttribute("admin_level"));

        int total_count = dao.get_total_homepage_count(map);

        int page      = Integer.parseInt(map.get("page").toString());
        int pageSize  = 20;
        int blockSize = 10;

        map.put("start", (page-1)* pageSize+1);
        map.put("end",   page *pageSize);

        result.put("list",         dao.get_homepage_list(map));
        result.put("pagingString", PagingUtil.adminPaging(total_count, pageSize, blockSize, page));
        result.put("total_count",  total_count);

        return result;
    }

    /**
     * 홈페이지 등록 이동
     * @return
     * @throws Exception
     */
    @RequestMapping("/homepage/homepage_insert_move")
    public String homepage_insert_move(@RequestParam Map map, Model model, Device device, HttpServletRequest request) throws Exception {

        if(!request.getSession().getAttribute("admin_level").equals("100")){
            return CommonUtil.device_move(device)+"/homepage/homepageList"+CommonUtil.device_gnb(device, "SUFFIX");
        }

        return CommonUtil.device_move(device)+"/homepage/homepageInsert"+CommonUtil.device_gnb(device, "SUFFIX");
    }

    /**
     * 홈페이지 정보 저장
     * @param map
     * @return
     * @throws Exception
     */
    @RequestMapping("/homepage/homepage_temp_save")
    @ResponseBody
    @Transactional
    public Map homepage_temp_save(@RequestParam Map map, MultipartHttpServletRequest multipartRequest, HttpServletRequest request) throws Exception {

        Map result = new HashMap();

        if(!request.getSession().getAttribute("admin_level").equals("100")){
            result.put("code", "F");
            result.put("msg", "저장 실패하였습니다. 저장 권한이 없습니다.");
        }

        map.put("member_idx", request.getSession().getAttribute("admin_idx"));

        MultipartFile zip = multipartRequest.getFile("zip");
        if(!zip.isEmpty()) {
            map.put("zip_name", zip.getOriginalFilename());
            map.put("zip_path", CommonUtil.file_upload(zip, UPLOAD_HOMEPAGE, UPLOAD_HOMEPAGE_URL));
        }

        if(dao.homepage_temp_save(map) != 0) {
            result.put("code", "S");
            result.put("msg", "저장 성공하였습니다.");
        } else {
            result.put("code", "F");
            result.put("msg", "저장 실패하였습니다. 관리자에게 문의 바랍니다.");
        }

        return result;
    }

    /**
     * 홈페이지 관리 상세 이동
     * @return
     * @throws Exception
     */
    @RequestMapping("/homepage/homepage_detail_move")
    public String homepage_detail_move(@RequestParam Map map, Model model, Device device, HttpServletRequest request) throws Exception {

        map.put("member_idx", request.getSession().getAttribute("admin_idx"));
        map.put("member_level", request.getSession().getAttribute("admin_level"));

        model.addAttribute("data", dao.get_homepage_h(map));

        return CommonUtil.device_move(device)+"/homepage/homepageDetail"+CommonUtil.device_gnb(device, "SUFFIX");
    }

    /**
     * 홈페이지 정보 저장
     * @param map
     * @return
     * @throws Exception
     */
    @RequestMapping("/homepage/homepage_save")
    @ResponseBody
    @Transactional
    public Map homepage_save(@RequestParam Map map, MultipartHttpServletRequest multipartRequest, HttpServletRequest request) throws Exception {

        map.put("member_idx", request.getSession().getAttribute("admin_idx"));

        Map result = new HashMap();

        MultipartFile main_img = multipartRequest.getFile("main_img");
        if(!main_img.isEmpty()) {
            map.put("main_img_name", main_img.getOriginalFilename());
            map.put("main_img_path", CommonUtil.file_upload(main_img, UPLOAD_HOMEPAGE, UPLOAD_HOMEPAGE_URL));
        }

        if(dao.homepage_save(map) != 0) {
            result.put("code", "S");
            result.put("msg", "저장 성공하였습니다.");
        } else {
            result.put("code", "F");
            result.put("msg", "저장 실패하였습니다. 관리자에게 문의 바랍니다.");
        }

        return result;
    }


    @RequestMapping("/homepage/get_homepage_detail")
    @ResponseBody
    @Transactional
    public Map get_homepage_detail(@RequestParam Map map, HttpServletRequest request) throws Exception {

        map.put("member_idx", request.getSession().getAttribute("admin_idx"));

        map.put("data", dao.get_homepage_detail(map));

        return map;
    }

    /**
     * 홈페이지 정보 저장
     * @param map
     * @return
     * @throws Exception
     */
    @RequestMapping("/homepage/homepage_detail_save")
    @ResponseBody
    @Transactional
    public Map homepage_detail_save(@RequestParam Map map, MultipartHttpServletRequest multipartRequest, HttpServletRequest request) throws Exception {

        map.put("member_idx", request.getSession().getAttribute("admin_idx"));

        Map result = new HashMap();

        String[] fileNames = {"img_1", "img_2", "img_3", "img_4", "img_5", "img_6", "img_7", "img_8", "img_9", "img_10"};
        String[] saveName  = {"img_name1","img_name2","img_name3","img_name4","img_name5","img_name6","img_name7","img_name8","img_name9","img_name10"};
        String[] savePath  = {"img_path1","img_path2","img_path3","img_path4","img_path5","img_path6","img_path7","img_path8","img_path9","img_path10"};

        CommonUtil.auto_file_upload(multipartRequest, "imgList", map, fileNames, saveName, savePath, UPLOAD_HOMEPAGE, UPLOAD_HOMEPAGE_URL);

        if(dao.homepage_detail_save(map) != 0) {
            result.put("code", "S");
            result.put("msg", "저장 성공하였습니다.");
        } else {
            result.put("code", "F");
            result.put("msg", "저장 실패하였습니다. 관리자에게 문의 바랍니다.");
        }

        return result;
    }

}

