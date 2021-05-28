package com.chao.travel.guide.mapper;

import com.chao.travel.guide.entity.UserInfo;

public interface UserInfoMapper {
    int deleteByPrimaryKey(Integer id);

    int deleteByUserId(Integer id);

    int insert(UserInfo record);

    int insertSelective(UserInfo record);

    /**
     * 通过userId获取用户信息
     * @param id userId
     * @return 用户信息
     */
    UserInfo getUserInfoByUserId(Integer id);

    UserInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(UserInfo record);

    int updateByPrimaryKey(UserInfo record);
}