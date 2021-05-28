package com.chao.travel.guide.service;

import com.chao.travel.guide.entity.View;
import com.chao.travel.guide.vo.ViewVO;
import com.github.pagehelper.PageInfo;

/**
 * @author : WXC
 * date    : 2021/1/10 21:03
 * desc    :-
 */
public interface ViewService {

    PageInfo listView(Integer pageNum, Integer pageSize);

    int deleteViewByIds(Integer[] ids);

    int insertView(ViewVO viewVO);

    View getViewById(Integer id);

    int updateView(ViewVO viewVO);
}
