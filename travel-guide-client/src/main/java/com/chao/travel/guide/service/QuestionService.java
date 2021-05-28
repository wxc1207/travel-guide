package com.chao.travel.guide.service;

import com.chao.travel.guide.entity.QuestionAnswer;
import com.chao.travel.guide.entity.View;
import com.chao.travel.guide.vo.QuestionVO;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * @author : WXC
 * date    : 2021/3/10 14:56
 * desc    :-
 */
public interface QuestionService {

    PageInfo listQuestionByQuestion(String name);

    PageInfo listQuestion(Integer pageNum, Integer pageSize);

    List<QuestionAnswer> listQuestionByPraiseCount(Integer limitNum);

    PageInfo listQuestionByUserId(Integer pageNum, Integer pageSize, Integer userId);

    List<QuestionAnswer> listQuestionByWatchCount(Integer limitNum);

    int addQuestion(QuestionAnswer questionAnswer);

    QuestionVO getQuestionById(Integer id);

    int deleteQuestion(Integer id);

}
