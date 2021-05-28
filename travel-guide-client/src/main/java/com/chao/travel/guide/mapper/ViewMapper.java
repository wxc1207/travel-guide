package com.chao.travel.guide.mapper;

import com.chao.travel.guide.entity.View;

import java.util.List;

public interface ViewMapper {

    List<View> listViewByViewCategoryK( Integer limitNum);
    List<View> listViewByViewCategoryJ( Integer limitNum);
    int deleteByPrimaryKey(Integer id);

    int deleteByIds(Integer[] ids);
    int insert(View record);

    int insertSelective(View record);

    View selectByPrimaryKey(Integer id);

    List<View> listViewWithCategoryDesc();

    List<View> listView();
    List<View> listViewByWatchCount(Integer limitNum);
    List<View> listViewByPraiseCount(Integer limitNum);
    List<View> listViewByName(String name);

    int updateByPrimaryKeySelective(View record);

    int updateByPrimaryKey(View record);
}