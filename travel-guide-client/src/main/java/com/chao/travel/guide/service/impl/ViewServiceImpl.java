package com.chao.travel.guide.service.impl;

import com.chao.travel.guide.entity.View;
import com.chao.travel.guide.mapper.ViewMapper;
import com.chao.travel.guide.service.ViewService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author : WXC
 * date    : 2021/1/28 22:22
 * desc    :-
 */
@Service
public class ViewServiceImpl implements ViewService {
    @Autowired
    private ViewMapper viewMapper;

    @Override
    public List<View> listViewByViewCategoryK(Integer limitNum) {
        return viewMapper.listViewByViewCategoryK(limitNum);
    }

    @Override
    public List<View> listViewByViewCategoryJ(Integer limitNum) {
        return viewMapper.listViewByViewCategoryJ(limitNum);
    }

    @Override
    public PageInfo listViewByName(String name) {
        PageHelper.startPage(1, 5);
        List<View> viewList = viewMapper.listViewByName(name);
        PageInfo<View> pageInfo = PageInfo.of(viewList);
        return pageInfo;
    }

    @Override
    public View getViewById(Integer id) {
        return viewMapper.selectByPrimaryKey(id);
    }

    @Override
    public PageInfo listView(Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<View> viewList = viewMapper.listViewWithCategoryDesc();
        PageInfo<View> pageInfo = PageInfo.of(viewList);
        return pageInfo;
    }

    @Override
    public List<View> listViewByPraiseCount(Integer limitNum) {
        return viewMapper.listViewByPraiseCount(limitNum);
    }

    @Override
    public List<View> listViewByWatchCount(Integer limitNum) {
        return viewMapper.listViewByWatchCount(limitNum);
    }
}
