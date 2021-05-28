package com.chao.travel.guide.mapper;

import com.chao.travel.guide.entity.ViewCategory;

import java.util.List;

public interface ViewCategoryMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(ViewCategory record);

    int insertSelective(ViewCategory record);

    ViewCategory selectByPrimaryKey(Integer id);

    List<ViewCategory> listCategoryStructure();

    int updateByPrimaryKeySelective(ViewCategory record);

    int updateByPrimaryKey(ViewCategory record);
}