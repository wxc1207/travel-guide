package com.chao.travel.guide.controller;

import com.chao.travel.guide.entity.Admin;
import com.chao.travel.guide.entity.AdminInfo;
import com.chao.travel.guide.service.AdminInfoService;
import com.chao.travel.guide.service.AdminService;
import com.chao.travel.guide.vo.LayuiVO;
import com.sun.org.apache.regexp.internal.RE;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.UUID;

/**
 * @author : WXC
 * date    : 2021/1/10 20:26
 * desc    :-
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    private AdminService adminService;

    @Autowired
    private AdminInfoService adminInfoService;

    @RequestMapping("/loginView")
    public String loginView() {
        return "admin/login";
    }

    @PostMapping("/login")
    @ResponseBody
    public LayuiVO login(String username,
                         String password,
                         HttpServletRequest request,
                         HttpServletResponse response) {
        Admin admin = adminService.selectByUsername(username);
        if (admin == null) {
            return LayuiVO.error(1, "该用户不存在");

        }
        if (!admin.getPassword().equals(password)) {
            return LayuiVO.error(2, "密码不正确");

        }
        //生成token
        HttpSession session = request.getSession();
        session.setAttribute("admin", admin);
        session.setAttribute("adminInfo", adminInfoService.getAdminInfo(admin.getId()));
        return LayuiVO.success();
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request,
                         HttpServletResponse response) {
        String token = null;
        request.getSession().removeAttribute("admin");
        return "admin/logout";
    }

    @RequestMapping("/updateAdminPasswordView")
    public String updateAdminPasswordView(Integer id, HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.setAttribute("admin", adminService.getAdminById(id));
        return "admin/update_password";
    }

    @PostMapping("/updateAdminPassword")
    @ResponseBody
    public LayuiVO updateAdminPassword(@RequestBody Admin admin, HttpServletRequest request) {
        System.out.println(admin.getUsername());
        System.out.println(admin.getPassword());
        if (admin.getUsername() != null && admin.getPassword() != null) {
//            Admin newAdmin = adminService.selectByUsername(admin.getUsername());
//            admin.setPassword(admin.getPassword());
            adminService.updateAdminPassword(admin);
            return LayuiVO.success();
        }
        return LayuiVO.error(1, "修改密码失败");
    }

    @RequestMapping("/adminInfo")
    public String adminInfo(Integer id, HttpServletRequest request) {

        AdminInfo adminInfo = adminInfoService.getAdminInfo(id);
        request.getSession().setAttribute("adminInfo", adminInfo);
        return "admin/admin_info";
    }

}
