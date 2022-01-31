package com.caelumtrade.realestate.util;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;

@Slf4j
@Controller
public class Base {

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
}
