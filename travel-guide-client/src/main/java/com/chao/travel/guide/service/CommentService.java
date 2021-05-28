package com.chao.travel.guide.service;

import com.chao.travel.guide.entity.Comment;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * @author : WXC
 * date    : 2021/1/30 13:06
 * desc    :-
 */
public interface CommentService {
    List<Comment> listWithId(Integer viewId);

    List<Comment> listTravelNotesId(Integer travelNotesId);

    List<Comment> listQuestionId(Integer questionId);

    int addComment(Comment comment);

    PageInfo listCommentByUserId(Integer pageNum, Integer pageSize, Integer userId);

    int deleteById(Integer id);
}
