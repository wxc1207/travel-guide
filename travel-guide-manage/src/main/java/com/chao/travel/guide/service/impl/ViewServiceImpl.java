package com.chao.travel.guide.service.impl;

import com.chao.travel.guide.entity.View;
import com.chao.travel.guide.mapper.ViewMapper;
import com.chao.travel.guide.service.ViewService;
import com.chao.travel.guide.vo.ViewVO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * @author : WXC
 * date    : 2021/1/10 21:11
 * desc    :-
 */

@Service
public class ViewServiceImpl implements ViewService {

    @Autowired
    private ViewMapper viewMapper;

    @Override
    public PageInfo listView(Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<View> viewList = viewMapper.listViewWithCategoryDesc();
        PageInfo<View> pageInfo = PageInfo.of(viewList);
        return pageInfo;
    }

    @Override
    public int deleteViewByIds(Integer[] ids) {

        return viewMapper.deleteByIds(ids);
    }

    @Override
    public int insertView(ViewVO viewVO) {
        View view = new View();
        BeanUtils.copyProperties(viewVO, view);
        Date date = new Date();
        view.setCreateTime(date);
        view.setUpdateTime(date);
        view.setWatchCount(0);
        view.setPraiseCount(0);
        return viewMapper.insert(view);
    }

    @Override
    public View getViewById(Integer id) {

        return viewMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateView(ViewVO viewVO) {
        View view = new View();
        BeanUtils.copyProperties(viewVO, view);
        view.setUpdateTime(new Date());
        return viewMapper.updateByPrimaryKeySelective(view);
    }
}
