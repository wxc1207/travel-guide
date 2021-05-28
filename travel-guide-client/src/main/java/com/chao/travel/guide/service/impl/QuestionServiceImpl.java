package com.chao.travel.guide.service.impl;

import com.chao.travel.guide.entity.Comment;
import com.chao.travel.guide.entity.QuestionAnswer;
import com.chao.travel.guide.entity.View;
import com.chao.travel.guide.mapper.QuestionAnswerMapper;
import com.chao.travel.guide.service.QuestionService;
import com.chao.travel.guide.util.DateToStringUtils;
import com.chao.travel.guide.vo.QuestionVO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author : WXC
 * date    : 2021/3/10 14:58
 * desc    :-
 */
@Service
public class QuestionServiceImpl implements QuestionService {

    @Autowired
    private QuestionAnswerMapper questionAnswerMapper;

    @Override
    public PageInfo listQuestionByQuestion(String name) {
        PageHelper.startPage(1, 5);
        PageInfo<QuestionAnswer> pageInfo = PageInfo.of(questionAnswerMapper.listQuestionByQuestion(name));
        return pageInfo;
    }

    @Override
    public QuestionVO getQuestionById(Integer id) {
        QuestionAnswer questionAnswer = questionAnswerMapper.selectByPrimaryKey(id);
        QuestionVO questionVO = new QuestionVO();
        BeanUtils.copyProperties(questionAnswer, questionVO);
        questionVO.setCreateTime(DateToStringUtils.dateToString(questionAnswer.getCreateTime()));
        questionVO.setUpdateTime(DateToStringUtils.dateToString(questionAnswer.getUpdateTime()));
        return questionVO;
    }

    @Override
    public int deleteQuestion(Integer id) {

        return questionAnswerMapper.deleteByPrimaryKey(id);
    }

    @Override
    public PageInfo listQuestion(Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        PageInfo<QuestionAnswer> pageInfo = PageInfo.of(questionAnswerMapper.listQuestion());
        return pageInfo;
    }

    @Override
    public List<QuestionAnswer> listQuestionByPraiseCount(Integer limitNum) {
        return questionAnswerMapper.listQuestionByPraiseCount(limitNum);
    }

    @Override
    public PageInfo listQuestionByUserId(Integer pageNum, Integer pageSize, Integer userId) {
        PageHelper.startPage(pageNum, pageSize);
        List<QuestionAnswer> questionList = questionAnswerMapper.listQuestionByUserId(userId);
        List<QuestionVO> questionVOList = new ArrayList<>();

        for (QuestionAnswer questionAnswer : questionList) {
            QuestionVO questionVO = new QuestionVO();
            BeanUtils.copyProperties(questionAnswer, questionVO);
            questionVO.setCreateTime(DateToStringUtils.dateToString(questionAnswer.getCreateTime()));
            questionVO.setUpdateTime(DateToStringUtils.dateToString(questionAnswer.getUpdateTime()));
            questionVOList.add(questionVO);
        }

        PageInfo<QuestionVO> pageInfo = PageInfo.of(questionVOList);
        return pageInfo;
    }

    @Override
    public List<QuestionAnswer> listQuestionByWatchCount(Integer limitNum) {
        return questionAnswerMapper.listQuestionByWatchCount(limitNum);
    }

    @Override
    public int addQuestion(QuestionAnswer questionAnswer) {
        questionAnswer.setWatchCount(0);
        questionAnswer.setPraiseCount(0);
        questionAnswer.setCreateTime(new Date());
        questionAnswer.setUpdateTime(new Date());
        return questionAnswerMapper.insert(questionAnswer);
    }
}
