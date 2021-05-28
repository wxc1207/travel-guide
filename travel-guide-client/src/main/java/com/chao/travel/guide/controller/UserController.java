package com.chao.travel.guide.controller;

import com.chao.travel.guide.entity.Admin;
import com.chao.travel.guide.entity.User;
import com.chao.travel.guide.entity.UserInfo;
import com.chao.travel.guide.service.UserInfoService;
import com.chao.travel.guide.service.UserService;
import com.chao.travel.guide.vo.LayuiVO;
import com.chao.travel.guide.vo.UserVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author : WXC
 * date    : 2021/2/1 13:27
 * desc    :-
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private UserInfoService userInfoService;

    @GetMapping("/loginView")
    public String loginView() {
        return "user/login";
    }

    @PostMapping("/login")
    @ResponseBody
    public LayuiVO login(String username,
                         String password,
                         HttpServletRequest request,
                         HttpServletResponse response) {
        User user = userService.getUserByUsername(username);
        if (user == null) {
            return LayuiVO.error(1, "该账号不存在");

        }
        if (!user.getPassword().equals(password)) {
            return LayuiVO.error(2, "密码不正确");

        }
        HttpSession session = request.getSession();
        session.setAttribute("user", user);
        session.setAttribute("userInfo", userInfoService.getUserInfoById(user.getId()));
        return LayuiVO.success();
    }

    @GetMapping("userInfo")
    public String userInfo(HttpServletRequest request) {
        UserInfo u = userInfoService.getUserInfoById(1);
        HttpSession session = request.getSession();
        session.setAttribute("userInfo", u);
        return "user/user_info";
    }

    @GetMapping("/updateUserInfoView")
    public String updateUserInfoView() {

        return "user/update_user_info";
    }

    @GetMapping("/updateUserView")
    public String updateUserView() {

        return "user/update_user";
    }

    @PostMapping("/updateUser")
    public String updateUser(@RequestBody User user) {
        userService.updateUser(user);
        return "user/user_info";
    }

    @PostMapping("/updateUserInfo")
    public String updateUserInfo(@RequestBody UserInfo userInfo, HttpServletRequest request) {
        userInfoService.updateUserInfo(userInfo);
        HttpSession session = request.getSession();
        UserInfo u = userInfoService.getUserInfoById(1);
        session.setAttribute("userInfo", u);
        return "user/user_info";
    }

    @GetMapping("/questionList")
    public String questionList(@RequestParam(defaultValue = "1") Integer pageNum,
                               @RequestParam(defaultValue = "5") Integer pageSize,
                               ModelMap modelMap, Integer userId) {
        System.out.println(userId);
        modelMap.put("userId", userId);
        return "user/question_list";
    }

    @GetMapping("/travelList")
    public String travelList(ModelMap modelMap, Integer userId) {
        System.out.println(userId);
        modelMap.put("userId", userId);
        return "user/travel_list";
    }

    @GetMapping("/commentList")
    public String commentList(ModelMap modelMap, Integer userId) {
        System.out.println(userId);
        modelMap.put("userId", userId);
        return "user/comment_list";
    }

    @GetMapping("/logout")
    public String logout(HttpServletRequest request,
                         HttpServletResponse response) {
        request.getSession().removeAttribute("user");
        return "index";
    }

    @GetMapping("/registerView")
    public String registerView() {
        return "user/register";
    }

    @PostMapping("/registerUser")
    public String registerUser(@RequestBody UserVO userVO) {
        System.out.println("注册成功");
        System.out.println(userVO);
        User user = new User();
        user.setUsername(userVO.getUsername());
        user.setPassword(userVO.getPassword());
        int result = userService.insertUser(user);
        if (result == 1) {
            User userGetID = userService.getUserByUsername(user.getUsername());
            //封装userInfo
            UserInfo userInfo = new UserInfo();
            userInfo.setUserId(userGetID.getId());
            userInfo.setNickname(userVO.getNickname());
            userInfo.setPhone(userVO.getPhone());
            userInfo.setEmail(userVO.getEmail());
            userInfo.setHeadImage("http://localhost:8888/191209e0-7872-4842-978b-a2521478da5f.jpg");
            userInfo.setSignature(userVO.getSignature());
            userInfoService.insertUserInfo(userInfo);
        }

        return "view/view_list";
    }
}
