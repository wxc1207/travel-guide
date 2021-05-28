package com.chao.travel.guide.service.impl;

import com.chao.travel.guide.entity.User;
import com.chao.travel.guide.mapper.UserInfoMapper;
import com.chao.travel.guide.mapper.UserMapper;
import com.chao.travel.guide.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author : WXC
 * date    : 2020/12/7 17:17
 * desc    :-
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private UserInfoMapper userInfoMapper;

    @Override
    public User getUserById(Integer id) {
        return userMapper.selectByPrimaryKey(id);
    }

    @Override
    public PageInfo listUser(Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<User> userList = userMapper.listUserWithUserInfo();
        PageInfo<User> pageInfo = PageInfo.of(userList);
        return pageInfo;
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public int deleteByUserId(Integer id) {

        int userCount = userMapper.deleteByPrimaryKey(id);
        int userInfoCount = userInfoMapper.deleteByUserId(id);
        if (userCount != 1 || userInfoCount != 1) {
            //抛出异常，事务回滚，即动作A撤销，动作B不执行
            throw new RuntimeException("删除用户失败，请联系维护人员");
        }
        return 1;
    }

}
