package com.chao.travel.guide.mapper;
import com.chao.travel.guide.entity.Comment;

import java.util.List;

public interface CommentMapper {
    List<Comment> listWithQuestionAnswer();
    int deleteByPrimaryKey(Integer id);

    int insert(Comment record);

    int insertSelective(Comment record);

    Comment selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Comment record);

    int updateByPrimaryKey(Comment record);
}
