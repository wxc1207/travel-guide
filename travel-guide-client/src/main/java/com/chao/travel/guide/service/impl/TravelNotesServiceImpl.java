package com.chao.travel.guide.service.impl;

import com.chao.travel.guide.entity.Guide;
import com.chao.travel.guide.entity.TravelNotes;
import com.chao.travel.guide.mapper.TravelNotesMapper;
import com.chao.travel.guide.service.TravelNotesService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * @author : WXC
 * date    : 2021/3/8 16:18
 * desc    :-
 */
@Service
public class TravelNotesServiceImpl implements TravelNotesService {
    @Autowired
    private TravelNotesMapper travelNotesMapper;

    @Override
    public PageInfo<TravelNotes> listTravelNotes(Integer pageNum, Integer pageSize) {

        PageHelper.startPage(pageNum, pageSize);
        List<TravelNotes> travelNotesList = travelNotesMapper.listTravelNotes();
        PageInfo<TravelNotes> pageInfo = PageInfo.of(travelNotesList);
        return pageInfo;
    }

    @Override
    public PageInfo listTravelByUserId(Integer pageNum, Integer pageSize, Integer userId) {
        PageHelper.startPage(pageNum, pageSize);
        List<TravelNotes> travelNotesList = travelNotesMapper.listTravelByUserId(userId);
        PageInfo<TravelNotes> pageInfo = PageInfo.of(travelNotesList);
        return pageInfo;
    }

    @Override
    public List<TravelNotes> listTravelNotesByPraiseCount(Integer limitNum) {
        return travelNotesMapper.listTravelNotesByPraiseCount(limitNum);
    }

    @Override
    public List<TravelNotes> listTravelNotesByWatchCount(Integer limitNum) {
        return travelNotesMapper.listTravelNotesByWatchCount(limitNum);
    }

    @Override
    public TravelNotes getTravelNotesById(Integer id) {
        return travelNotesMapper.selectByPrimaryKey(id);
    }

    @Override
    public int deleteTravelByUserId(Integer id) {
        return travelNotesMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int addTravel(TravelNotes travelNotes) {
        travelNotes.setUpdateTime(new Date());
        travelNotes.setStartTime(new Date());
        travelNotes.setCreateTime(new Date());
        travelNotes.setPraiseCount(0);
        travelNotes.setWatchCount(0);
        return travelNotesMapper.insert(travelNotes);
    }

}
