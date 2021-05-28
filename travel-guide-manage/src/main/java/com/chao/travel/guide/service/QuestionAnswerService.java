package com.chao.travel.guide.service;

import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * @author : WXC
 * date    : 2021/1/14 21:44
 * desc    :-
 */
public interface QuestionAnswerService {
    PageInfo listQuestionAnswer(Integer pageNum,Integer pageSize);
}
