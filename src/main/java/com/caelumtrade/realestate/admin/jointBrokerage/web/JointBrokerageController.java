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

        try {
            map.put("member_idx", request.getSession().getAttribute("admin_idx"));

            int total_count = dao.get_total_jointBrokerage_count(map);

            int page = Integer.parseInt(map.get("page").toString());
            int pageSize = 20;
            int blockSize = 10;

            map.put("start", (page - 1) * pageSize + 1);
            map.put("end", page * pageSize);

            result.put("list", dao.get_jointBrokerage_list(map));
            result.put("pagingString", PagingUtil.adminPaging(total_count, pageSize, blockSize, page));
            result.put("total_count", total_count);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

    /**
     * 공동 중개 등록 페이지 이동 처리.
     * @return
     * @throws Exception
     */
    @RequestMapping("/jointBrokerage/jointBrokerage_insert_move")
    public String jointBrokerage_insert_move(@RequestParam Map map, Model model, Device device, HttpServletRequest request) throws Exception {

        if(map.get("idx") != null){
            map.put("id", CommonUtil.getSessionId(request));
            Map data = dao.get_jointBrokerage(map);
            map.put("data", data);
        }

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
    @RequestMapping("/jointBrokerage/jointBrokerage_save")
    @ResponseBody
    @Transactional
    public Map jointBrokerage_save(@RequestParam Map map, MultipartHttpServletRequest multipartRequest, HttpServletRequest req) throws Exception {

        Map result = new HashMap();

        try {

            map.put("id", CommonUtil.getSessionId(req));

            String[] keys = new String[]{"short_rental_yn", "built_in_yn", "elevator_yn", "veranda_yn"};
            CommonUtil.mapNullChk(map, "N", keys); // 빈값 N으로 세팅 처리

            // 방 종류
            keys = new String[]{"type_charter", "type_rental", "type_sell", "type_parcel_out"};
            CommonUtil.mapAddVal(map, "type", keys);

            // 관리비 항목
            keys = new String[]{"maintenance_cost_type_1", "maintenance_cost_type_2", "maintenance_cost_type_3", "maintenance_cost_type_4", "maintenance_cost_type_5", "maintenance_cost_type_6", "maintenance_cost_type_7", "maintenance_cost_type_8"};
            CommonUtil.mapAddVal(map, "maintenance_cost_list", keys);

            // 관리비 별도 항목
            keys = new String[]{"maintenance_cost_out_type_1", "maintenance_cost_out_type_2", "maintenance_cost_out_type_3", "maintenance_cost_out_type_4", "maintenance_cost_out_type_5", "maintenance_cost_out_type_6", "maintenance_cost_out_type_7", "maintenance_cost_out_type_8"};
            CommonUtil.mapAddVal(map, "maintenance_cost_out_list", keys);

            // 방향
            keys = new String[]{"east", "west", "south", "north"};
            CommonUtil.mapAddVal(map, "direction", keys);

            // 옵션
            keys = new String[]{"option_1", "option_2", "option_3", "option_4", "option_5", "option_6", "option_7", "option_8", "option_9"};
            CommonUtil.mapAddVal(map, "option", keys);

            // 보안
            keys = new String[]{"security_1", "security_2", "security_3", "security_4", "security_5"};
            CommonUtil.mapAddVal(map, "security", keys);

            // , 제거 처리
            keys = new String[]{"sale_in_lots_price", "sale_in_lots_fee", "sell_price",
                                "sell_fee", "charter_deposit", "rent_deposit", "rent_price",
                                "all_area", "exclusive_area", "common_area", "maintenance_cost",
                                "all_parking_cnt", "one_parking_cnt", "room_cnt", "restroom_cnt", "zip_code"};
            CommonUtil.mapRemoveComma(map, keys);

            // 동영상 업로드
            MultipartFile preview_video = multipartRequest.getFile("preview_video");
            if (preview_video != null && preview_video.getSize() != 0) {
                // aws 업로드 후 경로 받기
                map.put("zip_name", preview_video.getOriginalFilename());
                map.put("zip_path", CommonUtil.file_upload(preview_video, UPLOAD_VIDEO, UPLOAD_VIDEO_URL));
            }

            // 사진 업로드
            int img_idx = 0;
            for (int i = 1; i < 11; i++) {
                if (map.get("preview_txt_img_" + i) != null && !map.get("preview_txt_img_" + i).equals("")) {
                    MultipartFile img = multipartRequest.getFile("preview_img_" + i);
                    if (img != null && img.getSize() != 0) {
                        // aws 업로드 후 경로 받기
                        map.put("img_name_" + img_idx, img.getOriginalFilename());
                        map.put("img_path_" + img_idx, CommonUtil.file_upload(img, UPLOAD_JOINT_BROKER_VIDEO, UPLOAD_JOINT_BROKER_VIDEO_URL));
                    } else {
                        map.put("img_name_" + img_idx, map.get("preview_txt_img_" + i));
                        map.put("img_path_" + img_idx, map.get("preview_path_img_" + i));
                    }
                    img_idx++;
                }
            }

            // 헤드 저장 혹은 수정
            if (map.get("idx") != null && !map.get("idx").equals("")) { // 수정
                if (dao.jointBrokerage_update(map) > 0) {

                    dao.jointBrokerage_img_delete(map);

                    // IMG 넣기
                    for(int i = 1; i > img_idx; i++) {
                        Map data = new HashMap();
                        data.put("j_idx",     map.get("idx"));
                        data.put("img_name",  map.get("img_name_"+i));
                        data.put("img_path",  map.get("img_path_"+i));
                        data.put("id",        map.get("id"));
                        data.put("order_num", i);
                        dao.jointBrokerage_img_save(data);
                    }

                    // 전세
                    if (map.get("type_charter") != null && map.get("type_charter").equals("Y")) {

                    }
                    // 월세
                    if (map.get("type_rental") != null && map.get("type_rental").equals("Y")) {

                    }
                    // 매매
                    if (map.get("type_sell") != null && map.get("type_sell").equals("Y")) {

                    }
                    // 분양
                    if (map.get("type_parce_out") != null && map.get("type_parcel_out").equals("Y")) {

                    }
                    result.put("code", "S");
                } else {
                    result.put("code", "E");
                }
            } else { // 저장
                if (dao.jointBrokerage_insert(map) > 0) {

                    // IMG 넣기
                    for (int i = 1; img_idx > i; i++) {
                        Map data = new HashMap();
                        data.put("j_idx",     map.get("idx"));
                        data.put("img_name",  map.get("img_name_"+i));
                        data.put("img_path",  map.get("img_path_"+i));
                        data.put("id",        map.get("id"));
                        data.put("order_num", i);
                        dao.jointBrokerage_img_save(data);
                    }

                    // 전세
                    if (map.get("type_charter") != null && map.get("type_charter").equals("Y")) {
                        map.put("type", "C");

                        // 방 종류
                        keys = new String[]{"one_room", "two_room", "three_room", "for_room", "office"};
                        CommonUtil.mapAddVal(map, "house_type", keys);

                        map.put("price", map.get("charter_deposit"));

                        dao.jointBrokerage_detail_save(map);
                    }
                    // 월세
                    if (map.get("type_rental") != null && map.get("type_rental").equals("Y")) {
                        map.put("type", "R");

                        // 방 종류
                        keys = new String[]{"one_room", "two_room", "three_room", "for_room", "office"};
                        CommonUtil.mapAddVal(map, "house_type", keys);

                        map.put("price", map.get("rent_deposit"));
                        map.put("rent_price", map.get("rent_price"));

                        dao.jointBrokerage_detail_save(map);
                    }
                    // 매매
                    if (map.get("type_sell") != null && map.get("type_sell").equals("Y")) {
                        map.put("type", "S");

                        // 방 종류
                        keys = new String[]{"sell_1", "sell_2", "sell_3", "sell_4", "sell_5", "sell_6", "sell_7", "sell_8", "sell_9", "sell_10"};
                        CommonUtil.mapAddVal(map, "house_type", keys);

                        map.put("price", map.get("sell_price"));
                        map.put("fee", map.get("sell_fee"));

                        dao.jointBrokerage_detail_save(map);
                    }
                    // 분양
                    if (map.get("type_parce_out") != null && map.get("type_parcel_out").equals("Y")) {
                        map.put("type", "P");

                        // 방 종류
                        keys = new String[]{"sale_in_lots_1", "sale_in_lots_2", "sale_in_lots_3", "sale_in_lots_4", "sale_in_lots_5", "sale_in_lots_6", "sale_in_lots_7", "sale_in_lots_8", "sale_in_lots_9", "sale_in_lots_10"};
                        CommonUtil.mapAddVal(map, "house_type", keys);

                        map.put("price", map.get("sale_in_lots_price"));
                        map.put("fee", map.get("sale_in_lots_fee"));

                        dao.jointBrokerage_detail_save(map);
                    }
                    result.put("code", "S");
                } else {
                    result.put("code", "E");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

}
