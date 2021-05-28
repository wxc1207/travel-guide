package com.chao.travel.guide.service.impl;

import com.chao.travel.guide.entity.ViewCategory;
import com.chao.travel.guide.mapper.ViewCategoryMapper;
import com.chao.travel.guide.service.ViewCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author : WXC
 * date    : 2021/1/11 13:44
 * desc    :-
 */
@Service
public class ViewCategoryServiceImpl implements ViewCategoryService {
    @Autowired
    private ViewCategoryMapper viewCategoryMapper;

    @Override
    public List<ViewCategory> listCategoryStructure() {

        return viewCategoryMapper.listCategoryStructure();
    }
}
