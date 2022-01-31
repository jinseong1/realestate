package com.caelumtrade.realestate.util;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;

@Slf4j
@Controller
public class Base {

    // 타일즈 경로
    protected final static String ADMIN_SIMPLE_SUFFIX = ".aSimple";
    public final static String ADMIN_GNB_SUFFIX = ".aGnb";

    // view 시작 경로
    public final static String ADMIN = "/admin";

    /**
     * 관리자
     */
    // 회원관리
    public final static String MEMBER = "/admin/member";
}
