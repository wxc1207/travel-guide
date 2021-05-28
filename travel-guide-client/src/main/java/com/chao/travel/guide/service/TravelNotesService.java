package com.chao.travel.guide.service;

import com.chao.travel.guide.entity.Guide;
import com.chao.travel.guide.entity.TravelNotes;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * @author : WXC
 * date    : 2021/3/8 16:16
 * desc    :-
 */
public interface TravelNotesService {
    PageInfo<TravelNotes> listTravelNotes(Integer pageNum, Integer pageSize);

    PageInfo listTravelByUserId(Integer pageNum, Integer pageSize, Integer userId);

    List<TravelNotes> listTravelNotesByPraiseCount(Integer limitNum);

    List<TravelNotes> listTravelNotesByWatchCount(Integer limitNum);

    TravelNotes getTravelNotesById(Integer id);

    int deleteTravelByUserId(Integer userId);

    int addTravel(TravelNotes travelNotes);
}
