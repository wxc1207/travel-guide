package com.chao.travel.guide.service;

import com.github.pagehelper.PageInfo;

/**
 * @author : WXC
 * date    : 2021/1/15 10:37
 * desc    :-
 */
public interface TravelNotesService {

    PageInfo listTravelNotes(Integer pageNum,Integer pageSize);
}
