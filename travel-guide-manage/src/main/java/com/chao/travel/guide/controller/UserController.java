package com.chao.travel.guide.controller;

import com.chao.travel.guide.entity.User;
import com.chao.travel.guide.mapper.UserMapper;
import com.chao.travel.guide.service.UserService;
import com.chao.travel.guide.util.DateToStringUtils;
import com.chao.travel.guide.vo.LayuiVO;
import com.chao.travel.guide.vo.UserVO;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * @author : WXC
 * date    : 2020/11/10 19:31
 * desc    :-
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/loginView")
    public String loginView() {
        return "user/login";
    }

    @PostMapping("/login")
    @ResponseBody
    public LayuiVO login(String username,
                         String password,
                         HttpServletRequest request,
                         HttpServletResponse response) {

        return LayuiVO.success();
    }

    @GetMapping("/listUser")
    @ResponseBody
    public LayuiVO listUser(@RequestParam(defaultValue = "1") Integer pageNum,
                            @RequestParam(defaultValue = "10") Integer pageSize) {

        PageInfo<User> pageInfo = userService.listUser(pageNum, pageSize);
        List<User> userList = pageInfo.getList();
        List<UserVO> userVOList = new ArrayList<>();
        for (User user : userList) {
            UserVO userVO = new UserVO();
            BeanUtils.copyProperties(user, userVO);
            BeanUtils.copyProperties(user.getUserInfo(), userVO);
            userVO.setId(user.getId());
            userVO.setCreateTime(DateToStringUtils.dateToString(user.getCreateTime()));
            userVO.setUpdateTime(DateToStringUtils.dateToString(user.getUpdateTime()));
            userVOList.add(userVO);
        }
        return LayuiVO.success(pageInfo.getTotal(), userVOList);
    }

    @GetMapping("/userAddView")
    public String userAddView() {
        return "user/user_add";
    }

    @GetMapping("/deleteUserById")
    @ResponseBody
    public LayuiVO deleteUserById(Integer id) {
        userService.deleteByUserId(id);
        return LayuiVO.success();
    }
}
