package com.chao.travel.guide.service.impl;

import com.chao.travel.guide.entity.GuideCategory;
import com.chao.travel.guide.mapper.GuideCategoryMapper;
import com.chao.travel.guide.service.GuideCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author : WXC
 * date    : 2021/1/14 18:51
 * desc    :-
 */

@Service
public class GuideCategoryServiceImpl implements GuideCategoryService {
    @Autowired
    private GuideCategoryMapper guideCategoryMapper;

    @Override
    public List<GuideCategory> listGuideCategory() {

        return guideCategoryMapper.listGuideCategory();
    }
}
