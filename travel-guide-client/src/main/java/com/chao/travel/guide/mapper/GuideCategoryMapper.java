package com.chao.travel.guide.mapper;

import com.chao.travel.guide.entity.GuideCategory;

import java.util.List;

public interface GuideCategoryMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(GuideCategory record);

    int insertSelective(GuideCategory record);

    List<GuideCategory> listGuideCategory();

    GuideCategory selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(GuideCategory record);

    int updateByPrimaryKey(GuideCategory record);
}