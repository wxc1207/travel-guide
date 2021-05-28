package com.chao.travel.guide.mapper;

import com.chao.travel.guide.entity.View;

import java.util.List;

public interface ViewMapper {
    int deleteByPrimaryKey(Integer id);

    int deleteByIds(Integer[] ids);
    int insert(View record);

    int insertSelective(View record);

    View selectByPrimaryKey(Integer id);

    List<View> listViewWithCategoryDesc();

    List<View> listView();

    int updateByPrimaryKeySelective(View record);

    int updateByPrimaryKey(View record);
}