package com.chao.travel.guide.service.impl;

import com.chao.travel.guide.entity.Admin;
import com.chao.travel.guide.mapper.AdminMapper;
import com.chao.travel.guide.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author : WXC
 * date    : 2021/1/10 20:25
 * desc    :-
 */

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;

    @Override
    public Admin selectByUsername(String username) {
        adminMapper.selectByUsername(username);
        return adminMapper.selectByUsername(username);
    }

    @Override
    public Admin getAdminById(Integer id) {
        return adminMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateAdminPassword(Admin admin) {

        return  adminMapper.updateByPrimaryKeySelective(admin);
    }
}
