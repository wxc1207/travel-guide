package com.chao.travel.guide.mapper;

import com.chao.travel.guide.entity.TravelNotes;
import com.chao.travel.guide.entity.View;

import java.util.List;

public interface TravelNotesMapper {
    int deleteByPrimaryKey(Integer id);

    int deleteTravelByUserId(Integer id);

    int insert(TravelNotes record);

    int insertSelective(TravelNotes record);

    TravelNotes selectByPrimaryKey(Integer id);

    List<TravelNotes> listTravelNotes();

    List<TravelNotes> listTravelByUserId(Integer userId);

    int updateByPrimaryKeySelective(TravelNotes record);

    int updateByPrimaryKey(TravelNotes record);

    List<TravelNotes> listTravelNotesByWatchCount(Integer limitNum);

    List<TravelNotes> listTravelNotesByPraiseCount(Integer limitNum);

}