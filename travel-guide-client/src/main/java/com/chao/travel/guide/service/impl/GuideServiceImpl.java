package com.chao.travel.guide.service.impl;

import com.chao.travel.guide.entity.Guide;
import com.chao.travel.guide.entity.View;
import com.chao.travel.guide.mapper.GuideMapper;
import com.chao.travel.guide.service.GuideService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author : WXC
 * date    : 2021/2/23 10:26
 * desc    :-
 */
@Service
public class GuideServiceImpl implements GuideService {

    @Autowired
    private GuideMapper guideMapper;

    @Override
    public PageInfo listGuideByName(String title) {
        PageHelper.startPage(1, 5);
        List<Guide> guideList = guideMapper.listGuideByName(title);
        PageInfo<Guide> pageInfo = PageInfo.of(guideList);
        return pageInfo;
    }

    @Override
    public PageInfo<Guide> listGuide(Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<Guide> guideList = guideMapper.listGuideWithCategory();
        PageInfo<Guide> pageInfo = PageInfo.of(guideList);
        return pageInfo;
    }

    @Override
    public List<Guide> listGuideByPraiseCount(Integer limitNum) {

        return guideMapper.listGuideByPraiseCount(limitNum);
    }

    @Override
    public List<Guide> listGuideByWatchCount(Integer limitNum) {
        return guideMapper.listGuideByWatchCount(limitNum);
    }

    @Override
    public Guide getGuideById(Integer id) {
        return guideMapper.selectByPrimaryKey(id);
    }
}
