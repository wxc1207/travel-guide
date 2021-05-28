package com.chao.travel.guide.service.impl;

import com.chao.travel.guide.entity.User;
import com.chao.travel.guide.mapper.UserMapper;
import com.chao.travel.guide.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * @author : WXC
 * date    : 2021/2/1 13:31
 * desc    :-
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public User getUserByUsername(String username) {
        return userMapper.getUserByUsername(username);
    }

    @Override
    public int updateUser(User user) {
        return userMapper.updateByPrimaryKeySelective(user);
    }

    @Override
    public int insertUser(User user) {
        User userResult = userMapper.getUserByUsername(user.getUsername());
        if (userResult != null){
            //用户注册返回0
            return 0;
        }

        user.setCreateTime(new Date());
        user.setUpdateTime(new Date());
        return userMapper.insertSelective(user);
    }
}
