package com.chao.travel.guide.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author : WXC
 * date    : 2021/1/23 13:12
 * desc    :-
 */
@Controller
@RequestMapping("/view")
public class ViewJumpController {

    /**
     * 根据接受的路径进行跳转
     *
     * @param path 接受的路径
     * @return
     */
    @RequestMapping("/jump")
    public String jump(String path) {
        return path;
    }

    /**
     * 首页地址的跳转
     *
     * @return
     */
    @GetMapping("/index")
    public String index() {
        return "index";
    }
}

