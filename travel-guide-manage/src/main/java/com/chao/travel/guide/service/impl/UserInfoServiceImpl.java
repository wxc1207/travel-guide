package com.chao.travel.guide.service.impl;

import com.chao.travel.guide.entity.UserInfo;
import com.chao.travel.guide.mapper.UserInfoMapper;
import com.chao.travel.guide.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author : WXC
 * date    : 2021/1/14 15:44
 * desc    :-
 */

@Service
public class UserInfoServiceImpl implements UserInfoService {
    @Autowired
    private UserInfoMapper userInfoMapper;

    @Override
    public UserInfo getUserByUserId(Integer id) {

        return userInfoMapper.getUserInfoByUserId(id);
    }
}
