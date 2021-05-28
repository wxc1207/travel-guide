package com.chao.travel.guide.service.impl;

import com.chao.travel.guide.mapper.QuestionAnswerMapper;
import com.chao.travel.guide.service.QuestionAnswerService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author : WXC
 * date    : 2021/1/14 21:45
 * desc    :-
 */
@Service
public class QuestionAnswerServiceImpl implements QuestionAnswerService {
    @Autowired
    private QuestionAnswerMapper questionAnswerMapper;

    @Override
    public PageInfo listQuestionAnswer(Integer pageNum, Integer pageSize) {
        return null;
    }
}
