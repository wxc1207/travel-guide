package com.chao.travel.guide.service.impl;

import com.chao.travel.guide.entity.TravelNotes;
import com.chao.travel.guide.mapper.TravelNotesMapper;
import com.chao.travel.guide.service.TravelNotesService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author : WXC
 * date    : 2021/1/15 10:38
 * desc    :-
 */
@Service
public class TravelNotesServiceImpl implements TravelNotesService {
    @Autowired
    private TravelNotesMapper travelNotesMapper;

    @Override
    public PageInfo listTravelNotes(Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        return PageInfo.of(travelNotesMapper.listTravelNotes());
    }
}
