package com.chao.travel.guide.controller;

import com.chao.travel.guide.entity.AdminInfo;
import com.chao.travel.guide.service.AdminInfoService;
import com.chao.travel.guide.service.AdminService;
import com.chao.travel.guide.vo.LayuiVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @author : WXC
 * date    : 2021/1/12 20:03
 * desc    :-
 */
@Controller
@RequestMapping("/adminInfo")
public class AdminInfoController {
    @Autowired
    private AdminInfoService adminInfoService;

    @PostMapping("/adminInfoUpdate")
    @ResponseBody
    public LayuiVO adminInfoUpdate(@RequestBody AdminInfo adminInfo, HttpServletRequest  request) {

        int i = adminInfoService.updateAdminInfo(adminInfo);
        if (i == 1) {
            HttpSession session = request.getSession();
            session.setAttribute("adminInfo",adminInfoService.getAdminInfo(adminInfo.getAdminId()));
            return LayuiVO.success();
        }
        return null;
    }
}
