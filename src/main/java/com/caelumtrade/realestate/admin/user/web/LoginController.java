package com.caelumtrade.realestate.admin.user.web;

import com.caelumtrade.realestate.admin.user.dao.LoginDAO;
import com.caelumtrade.realestate.admin.user.vo.MenuVO;
import com.caelumtrade.realestate.util.BCryptCipherUtil;
import com.caelumtrade.realestate.util.Base;
import com.caelumtrade.realestate.util.CommonUtil;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mobile.device.Device;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.caelumtrade.realestate.util.Base.ADMIN;

@Controller
@RequestMapping(ADMIN)
@MapperScan(basePackages="com.caelumtrade.realestate.admin.user.dao")
public class LoginController extends Base {

    @Value("${spring.profiles.active}")
    private String active;

    @Autowired
    private LoginDAO loginDAO;

    /**
     * Admin 로그인 페이지 이동
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/user/login")
    public String admin_login_page(Model model, Device device) throws Exception{

        String active_type = null;

        if(active.equals("local")){
            active_type = "로컬";
        } else if(active.equals("dev")){
            active_type = "개발";
        } else if(active.equals("prd")){
            active_type = "운영";
        } else {
            active_type = "active 잘못됨";
        }

        model.addAttribute("active", active_type);

        return CommonUtil.device_move(device)+"/user/login"+CommonUtil.device_gnb(device, "SIMPLE");
    }

    @RequestMapping("/user/sing_up_move")
    public String sing_up_move(Model model, Device device) throws Exception{
        return CommonUtil.device_move(device)+"/user/sing_up"+CommonUtil.device_gnb(device, "SIMPLE");
    }

    @RequestMapping("/user/singUpAction")
    @Transactional
    public String singUpAction(@RequestParam Map map, Model model, Device device) throws Exception{

        if(map.get("id") == null || map.get("id").equals("")) {
            model.addAttribute("code", "");
            model.addAttribute("msg", "");
            return CommonUtil.device_move(device)+"/user/sing_up"+CommonUtil.device_gnb(device, "SIMPLE");
        } else if(loginDAO.singUpCheck(map) > 0) {
            model.addAttribute("param", map);
            model.addAttribute("code", "F");
            model.addAttribute("msg", "중복된 아이디가 있습니다.");
            return CommonUtil.device_move(device)+"/user/sing_up"+CommonUtil.device_gnb(device, "SIMPLE");
        }

        map.put("password", BCryptCipherUtil.encode(map.get("password1").toString()));

        if(loginDAO.singUp(map) > 0){
            model.addAttribute("code", "S");
            model.addAttribute("msg", "가입 신청 성공하였습니다.");
        } else {
            model.addAttribute("param", map);
            model.addAttribute("code", "F");
            model.addAttribute("msg", "에러가 발생하였습니다. 관리자에게 문의 바랍니다.");
        }
        return CommonUtil.device_move(device)+"/user/sing_up"+CommonUtil.device_gnb(device, "SIMPLE");

    }

    /**
     * Admin Login 처리
     * @param model
     * @return
     * @throws Exception
     */
    @RequestMapping("/user/loginConfirm")
    @Transactional
    public String admin_login_action(Model model, HttpServletRequest req, HttpServletResponse resp, Device device) throws Exception{
        model.addAttribute("page", req.getParameter("page"));

        Map input_data = new HashMap();
        input_data.put("id", CommonUtil.getSessionId(req));

        input_data.put("level", req.getSession().getAttribute("admin_level"));

        String url = loginDAO.loginConfirm(input_data); // 권한별 메뉴 가져오기

        if(url == null){ // 메뉴 권한이 없는 경우 로그인 페이지로 이동 처리한다.
            return CommonUtil.device_move(device)+"/user/login"+CommonUtil.device_gnb(device, "SIMPLE");
        }

        return "redirect:" + url;
    }

    /**
     * Admin Menu 불러오기
     * @param map
     * @param
     * @return
     * @throws Exception
     */
    @RequestMapping("/getMenu")
    @ResponseBody
    @Transactional
    public String admin_getMenu(@RequestParam Map map, HttpServletRequest req) throws Exception{
        map.put("id",    CommonUtil.getSessionId(req));
        map.put("level", CommonUtil.getSessionLevel(req));

        StringBuilder bf = new StringBuilder();
        List<MenuVO> result =  loginDAO.menuList(map);

        for(MenuVO menuLevel1 : result){
            bf.append("<li id='"+menuLevel1.getActive_id()+"'>");
            if(menuLevel1.getMenuSubList().size() != 0){
                bf.append("    <a href='"+menuLevel1.getMenuSubList().get(0).getMenu_url()+"'>");
            } else {
                bf.append("    <a href='"+menuLevel1.getMenu_url()+"'>");
            }
            bf.append("        "+menuLevel1.getMenu_name());
            bf.append("    </a>");
            if(menuLevel1.getMenuSubList().size() != 0){
                bf.append("    <ul class='hover_menu'>");
                for(MenuVO menuLevel2 : menuLevel1.getMenuSubList()){
                    bf.append("<li id='"+menuLevel2.getActive_id()+"'>");
                    bf.append("    <a href='"+menuLevel2.getMenu_url()+"'>");
                    bf.append("        "+menuLevel2.getMenu_name());
                    bf.append("    </a>");
                    bf.append("</li>");
                }
                bf.append("    </ul>");
            }
            bf.append("</li>");
        }

        return bf.toString();
    }

    @RequestMapping("/getLeftMenu")
    @ResponseBody
    @Transactional
    public String admin_getLeftMenu(@RequestParam Map map) throws Exception{

        StringBuilder bf = new StringBuilder();
        List<Map> result =  loginDAO.menuLeftList(map);

        bf.append("<nav>");
        bf.append("    <ul>");

        for(Map menuLevel3 : result){
            bf.append("    <li id='"+menuLevel3.get("activeId")+"'>");
            bf.append("        <h4>");
            bf.append("        <a href='"+menuLevel3.get("menuUrl")+"'>");
            bf.append("            "+menuLevel3.get("menuName"));
            bf.append("        </a>");
            bf.append("        </h4>");
            bf.append("    </li>");
        }
        bf.append("    </ul>");
        bf.append("</nav>");
        return bf.toString();
    }

    @RequestMapping("/user/chk1")
    public String chk1(Model model, Device device) throws Exception{
        return CommonUtil.device_move(device)+"/user/chk1"+CommonUtil.device_gnb(device, "SIMPLE");
    }
    @RequestMapping("/user/chk2")
    public String chk2(Model model, Device device) throws Exception{
        return CommonUtil.device_move(device)+"/user/chk2"+CommonUtil.device_gnb(device, "SIMPLE");
    }

}
