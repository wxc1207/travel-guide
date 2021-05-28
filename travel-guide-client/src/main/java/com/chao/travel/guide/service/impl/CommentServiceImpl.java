package com.chao.travel.guide.service.impl;

import com.chao.travel.guide.entity.Comment;
import com.chao.travel.guide.entity.QuestionAnswer;
import com.chao.travel.guide.mapper.CommentMapper;
import com.chao.travel.guide.service.CommentService;
import com.chao.travel.guide.util.DateToStringUtils;
import com.chao.travel.guide.vo.CommentVO;
import com.chao.travel.guide.vo.QuestionVO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author : WXC
 * date    : 2021/1/30 13:07
 * desc    :-
 */
@Service
public class CommentServiceImpl implements CommentService {
    @Autowired
    private CommentMapper commentMapper;

    @Override
    public List<Comment> listWithId(Integer viewId) {
        return commentMapper.listViewId(viewId);
    }

    @Override
    public List<Comment> listTravelNotesId(Integer travelNotesId) {
        return commentMapper.listTravelNotesId(travelNotesId);
    }

    @Override
    public List<Comment> listQuestionId(Integer questionId) {
        return commentMapper.listQuestionId(questionId);
    }

    @Override
    public int addComment(Comment comment) {
        comment.setCreateTime(new Date());
        comment.setUpdateTime(new Date());
        return commentMapper.insert(comment);
    }

    @Override
    public PageInfo listCommentByUserId(Integer pageNum, Integer pageSize, Integer userId) {
        PageHelper.startPage(pageNum, pageSize);
        List<Comment> commentList = commentMapper.listByUserId(userId);
        List<CommentVO> commentVOList = new ArrayList<>();
        for (Comment comment : commentList) {
            CommentVO commentVO = new CommentVO();
            BeanUtils.copyProperties(comment, commentVO);
            commentVO.setCreateTime(DateToStringUtils.dateToString(comment.getCreateTime()));
            commentVO.setUpdateTime(DateToStringUtils.dateToString(comment.getUpdateTime()));
            commentVOList.add(commentVO);
        }

        PageInfo<CommentVO> pageInfo = PageInfo.of(commentVOList);
        return pageInfo;
    }

    @Override
    public int deleteById(Integer id) {
        return commentMapper.deleteByPrimaryKey(id);
    }
}
