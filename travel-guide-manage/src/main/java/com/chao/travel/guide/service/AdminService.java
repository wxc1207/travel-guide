package com.chao.travel.guide.service;

import com.chao.travel.guide.entity.Admin;

/**
 * @author : WXC
 * date    : 2021/1/10 20:24
 * desc    :-
 */
public interface AdminService {
    Admin selectByUsername(String username);

    Admin getAdminById(Integer id);

    int updateAdminPassword(Admin admin);

}
