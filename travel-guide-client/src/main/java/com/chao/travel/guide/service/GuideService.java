package com.chao.travel.guide.service;

import com.chao.travel.guide.entity.Guide;
import com.chao.travel.guide.entity.View;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * @author : WXC
 * date    : 2021/2/23 10:25
 * desc    :-
 */

public interface GuideService {
    PageInfo listGuideByName(String title);

    PageInfo<Guide> listGuide(Integer pageNum, Integer pageSize);

    List<Guide> listGuideByPraiseCount(Integer limitNum);

    List<Guide> listGuideByWatchCount(Integer limitNum);

    Guide getGuideById(Integer id);
}
