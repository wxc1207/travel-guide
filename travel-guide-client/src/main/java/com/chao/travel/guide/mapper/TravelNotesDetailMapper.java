package com.chao.travel.guide.mapper;

import com.chao.travel.guide.entity.TravelNotesDetail;

import java.util.List;

public interface TravelNotesDetailMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TravelNotesDetail record);

    int insertSelective(TravelNotesDetail record);

    TravelNotesDetail selectByPrimaryKey(Integer id);

    List<TravelNotesDetail> getByTravelNotesId(Integer id);

    int updateByPrimaryKeySelective(TravelNotesDetail record);

    int updateByPrimaryKey(TravelNotesDetail record);
}