package com.caelumtrade.realestate.admin.user.vo;

import java.io.Serializable;
import java.util.List;

public class MenuVO implements Serializable {

    private String idx;
    private String menu_name;
    private String menu_parent_idx;
    private String menu_level;
    private String menu_sno;
    private String active_id;
    private String menu_url;
    private String role_detail_code;
    private List<MenuVO> menuSubList;

    public String getIdx() {
        return idx;
    }

    public void setIdx(String idx) {
        this.idx = idx;
    }

    public String getMenu_name() {
        return menu_name;
    }

    public void setMenu_name(String menu_name) {
        this.menu_name = menu_name;
    }

    public String getMenu_parent_idx() {
        return menu_parent_idx;
    }

    public void setMenu_parent_idx(String menu_parent_idx) {
        this.menu_parent_idx = menu_parent_idx;
    }

    public String getMenu_level() {
        return menu_level;
    }

    public void setMenu_level(String menu_level) {
        this.menu_level = menu_level;
    }

    public String getMenu_sno() {
        return menu_sno;
    }

    public void setMenu_sno(String menu_sno) {
        this.menu_sno = menu_sno;
    }

    public String getActive_id() {
        return active_id;
    }

    public void setActive_id(String active_id) {
        this.active_id = active_id;
    }

    public String getMenu_url() {
        return menu_url;
    }

    public void setMenu_url(String menu_url) {
        this.menu_url = menu_url;
    }

    public String getRole_detail_code() {
        return role_detail_code;
    }

    public void setRole_detail_code(String role_detail_code) {
        this.role_detail_code = role_detail_code;
    }

    public List<MenuVO> getMenuSubList() {
        return menuSubList;
    }

    public void setMenuSubList(List<MenuVO> menuSubList) {
        this.menuSubList = menuSubList;
    }
}
