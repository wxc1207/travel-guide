package com.chao.travel.guide.service;

import com.chao.travel.guide.entity.User;
import com.chao.travel.guide.entity.UserInfo;

/**
 * @author : WXC
 * date    : 2021/1/14 15:43
 * desc    :-
 */
public interface UserInfoService {
    UserInfo getUserByUserId(Integer id);
}
