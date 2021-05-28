package com.chao.travel.guide.service;

import com.chao.travel.guide.entity.User;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * @author : WXC
 * date    : 2020/12/7 17:16
 * desc    :-
 */
public interface UserService {
    User getUserById(Integer id);

    PageInfo listUser(Integer pageNum,Integer pageSize);

    int deleteByUserId(Integer id);
}
