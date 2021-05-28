package com.chao.travel.guide.service.impl;

import com.chao.travel.guide.entity.AdminInfo;
import com.chao.travel.guide.mapper.AdminInfoMapper;
import com.chao.travel.guide.service.AdminInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author : WXC
 * date    : 2021/1/12 19:23
 * desc    :-
 */
@Service
public class AdminInfoServiceImpl implements AdminInfoService {
    @Autowired
    private AdminInfoMapper adminInfoMapper;

    @Override
    public AdminInfo getAdminInfo(Integer adminId) {
        adminInfoMapper.selectByAdminId(adminId);
        return adminInfoMapper.selectByAdminId(adminId);
    }

    @Override
    public int updateAdminInfo(AdminInfo adminInfo) {
        return adminInfoMapper.updateByPrimaryKeySelective(adminInfo);
    }
}
