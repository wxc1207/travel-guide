package com.chao.travel.guide.mapper;

import com.chao.travel.guide.entity.TravelNotesDetail;

public interface TravelNotesDetailMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TravelNotesDetail record);

    int insertSelective(TravelNotesDetail record);

    TravelNotesDetail selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(TravelNotesDetail record);

    int updateByPrimaryKey(TravelNotesDetail record);
}