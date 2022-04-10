package com.caelumtrade.realestate.util;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;

@Slf4j
@Controller
public class Base {

    private static String upload_path;

    @Value("${file.upload.path}")
    public void setUploadPath(String path) throws Exception {
        upload_path = new String(path.getBytes("ISO-8859-1"), "UTF-8");
    }

    // 타일즈 경로
    public final static String ADMIN_PC_SIMPLE_SUFFIX = ".aPcSimple";
    public final static String ADMIN_MOB_SIMPLE_SUFFIX = ".aMobSimple";

    public final static String ADMIN_PC_MOVE_DEVICE = "/module/admin/pc";
    public final static String ADMIN_MOB_MOVE_DEVICE = "/module/admin/mob";

    public final static String ADMIN_PC_GNB_SUFFIX = ".aPcGnb";
    public final static String ADMIN_MOB_GNB_SUFFIX = ".aMobGnb";

    // view 시작 경로
    public final static String ADMIN = "/admin";

    /**
     * 관리자
     */
    // 회원관리
    public final static String MEMBER = "/admin/member";

    // 배너
    public String UPLOAD_HOMEPAGE        = upload_path+"homepage\\";
    public String UPLOAD_HOMEPAGE_URL    = "/upload/homepage/";
}
