package com.chao.travel.guide.mapper;

import com.chao.travel.guide.entity.QuestionAnswer;

import java.util.List;

public interface QuestionAnswerMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(QuestionAnswer record);

    int insertSelective(QuestionAnswer record);

    QuestionAnswer selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(QuestionAnswer record);

    int updateByPrimaryKey(QuestionAnswer record);

    List<QuestionAnswer> listQuestionByUserId(Integer userId);

    List<QuestionAnswer> listQuestion();

    List<QuestionAnswer> listQuestionByQuestion(String question);

    List<QuestionAnswer> listQuestionByPraiseCount(Integer limitNum);

    List<QuestionAnswer> listQuestionByWatchCount(Integer limitNum);

}