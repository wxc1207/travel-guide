package com.chao.travel.guide.service.impl;

import com.chao.travel.guide.entity.Comment;
import com.chao.travel.guide.mapper.CommentMapper;
import com.chao.travel.guide.mapper.UserInfoMapper;
import com.chao.travel.guide.service.CommentService;
import com.chao.travel.guide.util.DateToStringUtils;
import com.chao.travel.guide.vo.CommentVO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @author : WXC
 * date    : 2021/1/14 22:42
 * desc    :-
 */
@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentMapper commentMapper;
    @Autowired
    private UserInfoMapper userInfoMapper;

    @Override
    public PageInfo listQuestionAnswer(Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<Comment> commentList = commentMapper.listWithQuestionAnswer();
        List<CommentVO> commentVOList = new ArrayList<>();
        for (Comment comment : commentList) {
            CommentVO commentVO = new CommentVO();
            BeanUtils.copyProperties(comment, commentVO);
            commentVO.setUserTo(userInfoMapper.getUserInfoByUserId(comment.getUserId()).getNickname());
            commentVO.setUserFrom(userInfoMapper.getUserInfoByUserId(comment.getQuestionAnswer().getUserId()).getNickname());
            commentVO.setcUserId(comment.getUserId());
            commentVO.setcCreateTime(DateToStringUtils.dateToStringYTD(comment.getCreateTime()));
            commentVO.setcUpdateTime(DateToStringUtils.dateToStringYTD(comment.getUpdateTime()));
            commentVO.setqId(comment.getQuestionAnswer().getId());
            commentVO.setqUserId(comment.getQuestionAnswer().getUserId());
            commentVO.setqCreateTime(DateToStringUtils.dateToStringYTD(comment.getQuestionAnswer().getCreateTime()));
            commentVO.setqUpdateTime(DateToStringUtils.dateToStringYTD(comment.getQuestionAnswer().getUpdateTime()));
            commentVO.setQuestion(comment.getQuestionAnswer().getQuestion());
            commentVO.setPraiseCount(comment.getQuestionAnswer().getPraiseCount());
            commentVO.setWatchCount(comment.getQuestionAnswer().getWatchCount());
            commentVO.setcId(comment.getId());
            commentVOList.add(commentVO);
        }
//          测试封装commentVO，出现问题，所以进行手动封装，原因，修改了mapper的字段，导致不一致，所以封装失败
//        System.out.println("==========================================");
//        System.out.println(commentVOList);
//        System.out.println("==========================================");
        PageInfo<CommentVO> pageInfo = PageInfo.of(commentVOList);
        return pageInfo;
    }

    @Override
    public int deleteCommentById(Integer id) {
        return commentMapper.deleteByPrimaryKey(id);
    }

}
