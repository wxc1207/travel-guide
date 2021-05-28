package com.chao.travel.guide.mapper;

import com.chao.travel.guide.entity.Guide;

import java.util.List;

public interface GuideMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Guide record);

    int deleteByIds(Integer[] ids);

    int insertSelective(Guide record);

    List<Guide> listGuideWithCategory();

    List<Guide> listGuideByName(String title);

    Guide selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Guide record);

    int updateByPrimaryKey(Guide record);

    List<Guide> listGuideByPraiseCount(Integer limitNum);

    List<Guide> listGuideByWatchCount(Integer limitNum);
}