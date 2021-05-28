package com.chao.travel.guide.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * @author : WXC
 * date    : 2021/1/14 22:41
 * desc    :-
 */
public interface CommentService {
    PageInfo listQuestionAnswer(Integer pageNum, Integer pageSize);

    int deleteCommentById(Integer id);
}
