package com.chao.travel.guide.service;

import com.chao.travel.guide.entity.View;
import com.chao.travel.guide.mapper.GuideMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * @author : WXC
 * date    : 2021/1/14 14:59
 * desc    :-
 */
public interface GuideService {

    PageInfo listGuide(Integer pageNum, Integer pageSize);

    int deleteByIds(Integer[] ids);

}
