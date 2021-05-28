package com.chao.travel.guide.controller;

import com.chao.travel.guide.entity.User;
import com.chao.travel.guide.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author : WXC
 * date    : 2020/12/7 11:05
 * desc    :- 项目创建的测试类
 */
@Controller
public class TestController {
    @Autowired
    private UserService userService;

    @RequestMapping("/test")
    public String test() {
        return "index";
    }

    @RequestMapping("/test1")
    public User test1() {
        return userService.getUserById(1);
    }
}
