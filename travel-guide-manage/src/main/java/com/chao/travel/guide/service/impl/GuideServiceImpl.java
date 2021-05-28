package com.chao.travel.guide.service.impl;

import com.chao.travel.guide.entity.Guide;
import com.chao.travel.guide.entity.View;
import com.chao.travel.guide.mapper.GuideMapper;
import com.chao.travel.guide.service.GuideService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author : WXC
 * date    : 2021/1/14 15:00
 * desc    :-
 */
@Service
public class GuideServiceImpl implements GuideService {
    @Autowired
    private GuideMapper guideMapper;

    @Override
    public PageInfo listGuide(Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<Guide> guideList = guideMapper.listGuideWithCategory();
        PageInfo<Guide> pageInfo = PageInfo.of(guideList);
        return pageInfo;
    }

    @Override
    public int deleteByIds(Integer[] ids) {
        return guideMapper.deleteByIds(ids);
    }

}
