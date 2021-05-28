package com.chao.travel.guide.service;

import com.chao.travel.guide.entity.View;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * @author : WXC
 * date    : 2021/1/28 22:21
 * desc    :-
 */
public interface ViewService {
    List<View> listViewByViewCategoryK(Integer limitNum);

    List<View> listViewByViewCategoryJ(Integer limitNum);

    PageInfo listViewByName(String name);

    View getViewById(Integer id);

    PageInfo listView(Integer pageNum, Integer pageSize);

    List<View> listViewByPraiseCount(Integer limitNum);

    List<View> listViewByWatchCount(Integer limitNum);
}
