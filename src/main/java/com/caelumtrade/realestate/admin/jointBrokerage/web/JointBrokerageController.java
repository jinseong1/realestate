package com.caelumtrade.realestate.admin.jointBrokerage.web;

import com.caelumtrade.realestate.admin.jointBrokerage.dao.JointBrokerageDAO;
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

import javax.servlet.http.HttpServletRequest;
import java.util.*;

import static com.caelumtrade.realestate.util.Base.ADMIN;

/**
 * 공동 중개 컨트롤러
 */
@Controller
@RequestMapping(ADMIN)
@MapperScan(basePackages="com.caelumtrade.realestate.admin.jointBrokerage.dao")
public class JointBrokerageController extends Base {

    @Autowired
    private JointBrokerageDAO dao;

    /**
     * 공동 중개 리스트 이동 처리.
     * @param
     * @return
     * @throws Exception
     */
    @RequestMapping("/jointBrokerage/jointBrokerageList")
    public String inquiryListMove(Model model, Device device) throws Exception {

        return CommonUtil.device_move(device)+"/jointBrokerage/jointBrokerageList"+CommonUtil.device_gnb(device, "SUFFIX");
    }

    /**
     * 공동 중개 리스트 호출 처리.
     * @param map
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/jointBrokerage/get_jointBrokerage_list")
    @ResponseBody
    @Transactional
    public Map get_jointBrokerage_list(@RequestParam Map map, HttpServletRequest request) throws Exception {
        Map result = new HashMap();

        map.put("member_idx", request.getSession().getAttribute("admin_idx"));

        int total_count = dao.get_total_jointBrokerage_count(map);

        int page      = Integer.parseInt(map.get("page").toString());
        int pageSize  = 20;
        int blockSize = 10;

        map.put("start", (page-1)* pageSize+1);
        map.put("end",   page *pageSize);

        result.put("list",         dao.get_jointBrokerage_list(map));
        result.put("pagingString", PagingUtil.adminPaging(total_count, pageSize, blockSize, page));
        result.put("total_count",  total_count);

        return result;
    }

    /**
     * 공동 중개 등록 페이지 이동 처리.
     * @return
     * @throws Exception
     */
    @RequestMapping("/jointBrokerage/jointBrokerage_insert_move")
    public String jointBrokerage_insert_move(@RequestParam Map map, Model model, Device device) throws Exception {

        if(map.get("page") != null){
            model.addAttribute("page", map.get("page"));
        } else {
            model.addAttribute("page", 1);
        }

        return CommonUtil.device_move(device)+"/jointBrokerage/jointBrokerageInsert"+CommonUtil.device_gnb(device, "SUFFIX");
    }

    /**
     * 공동 중개 삭제
     * @param map
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping("/jointBrokerage/jointBrokerage_delete")
    @ResponseBody
    @Transactional
    public Map inquiry_delete(@RequestParam Map map, HttpServletRequest request) throws Exception {

        map.put("member_idx", request.getSession().getAttribute("admin_idx"));

        Map result = new HashMap();

        if(dao.jointBrokerage_delete(map) > 0){
            result.put("code", "S");
        } else {
            result.put("code", "E");
        }

        return result;
    }

    /**
     *  공동중개 저장
     * @return
     */
    @RequestMapping("/jointBrokerage_save")
    @ResponseBody
    @Transactional
    public Map jointBrokerage_save(@RequestParam Map map, MultipartHttpServletRequest multipartRequest, HttpServletRequest req) throws Exception {
        Map result = new HashMap();

        map.put("id", CommonUtil.getSessionId(req));

        MultipartFile preview_video = multipartRequest.getFile("preview_video");
        if(preview_video != null && preview_video.getSize() != 0){
            // aws 업로드 후 경로 받기
        }

        for(int i = 1 ; i > 11 ; i++) {

            if(map.get("preview_txt_img_"+i) != null && !map.get("preview_txt_img_"+i).equals("")) {
                MultipartFile img = multipartRequest.getFile("preview_img_"+i);
                if(img != null && img.getSize() != 0){
                    // aws 업로드 후 경로 받기
                } else {
                    map.put("img_name_"+i, map.get("preview_txt_img_"+i));
                    map.put("img_path_"+i, map.get("preview_path_img_"+i));
                }
            }

        }

        // 헤드 저장 혹은 수정
        if(map.get("idx") != null && !map.get("idx").equals("")){ // 수정
            if(dao.jointBrokerage_update(map) > 0){
                // 전세
                if(map.get("type_charter") != null && map.get("type_charter").equals("Y")) {

                }
                // 월세
                if(map.get("type_rental") != null && map.get("type_rental").equals("Y")) {

                }
                // 매매
                if(map.get("type_sell") != null && map.get("type_sell").equals("Y")) {

                }
                // 분양
                if(map.get("type_parce_out") != null && map.get("type_parcel_out").equals("Y")) {

                }
                result.put("code", "S");
            } else {
                result.put("code", "E");
            }
        } else { // 저장
            if(dao.jointBrokerage_insert(map) > 0){
                // 전세
                if(map.get("type_charter") != null && map.get("type_charter").equals("Y")) {

                }
                // 월세
                if(map.get("type_rental") != null && map.get("type_rental").equals("Y")) {

                }
                // 매매
                if(map.get("type_sell") != null && map.get("type_sell").equals("Y")) {

                }
                // 분양
                if(map.get("type_parce_out") != null && map.get("type_parcel_out").equals("Y")) {

                }
                result.put("code", "S");
            } else {
                result.put("code", "E");
            }
        }

        return result;
    }

}
