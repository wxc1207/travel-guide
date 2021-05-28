package com.chao.travel.guide.service;

import com.chao.travel.guide.entity.User;
import com.chao.travel.guide.entity.UserInfo;

/**
 * @author : WXC
 * date    : 2021/1/31 11:58
 * desc    :-
 */
public interface UserInfoService {
    UserInfo getUserInfoById(Integer id);

    int updateUserInfo(UserInfo userInfo);

    int insertUserInfo(UserInfo userInfo);
    
}
