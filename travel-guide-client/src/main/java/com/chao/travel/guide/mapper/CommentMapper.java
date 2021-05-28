package com.chao.travel.guide.mapper;

import com.chao.travel.guide.entity.Comment;
import org.omg.PortableInterceptor.INACTIVE;

import java.util.List;

public interface CommentMapper {
    List<Comment> listViewId(Integer viewId);

    List<Comment> listTravelNotesId(Integer travelNotesId);

    List<Comment> listQuestionId(Integer questionId);

    List<Comment> listWithQuestionAnswer();

    List<Comment> listByUserId(Integer userId);

    int deleteByPrimaryKey(Integer id);

    int insert(Comment record);

    int insertSelective(Comment record);

    Comment selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Comment record);

    int updateByPrimaryKey(Comment record);
}
