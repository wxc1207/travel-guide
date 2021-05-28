package com.chao.travel.guide.service;

import com.chao.travel.guide.entity.AdminInfo;

/**
 * @author : WXC
 * date    : 2021/1/12 19:20
 * desc    :-
 */
public interface AdminInfoService {

    AdminInfo getAdminInfo(Integer adminId);
    int updateAdminInfo(AdminInfo adminInfo);
}
