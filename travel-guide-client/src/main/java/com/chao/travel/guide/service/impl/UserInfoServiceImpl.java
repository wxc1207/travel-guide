package com.chao.travel.guide.service.impl;

import com.chao.travel.guide.entity.User;
import com.chao.travel.guide.entity.UserInfo;
import com.chao.travel.guide.mapper.UserInfoMapper;
import com.chao.travel.guide.mapper.UserMapper;
import com.chao.travel.guide.service.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author : WXC
 * date    : 2021/1/31 11:58
 * desc    :-
 */
@Service
public class UserInfoServiceImpl implements UserInfoService {

    @Autowired
    private UserInfoMapper UserInfoMapper;

    @Override
    public UserInfo getUserInfoById(Integer id) {
        return UserInfoMapper.getUserInfoByUserId(id);
    }

    @Override
    public int updateUserInfo(UserInfo userInfo) {

        return UserInfoMapper.updateByPrimaryKeySelective(userInfo);
    }

    @Override
    public int insertUserInfo(UserInfo userInfo) {
        return UserInfoMapper.insertSelective(userInfo);
    }

}
