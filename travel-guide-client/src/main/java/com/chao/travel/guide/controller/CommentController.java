package com.chao.travel.guide.controller;

import com.chao.travel.guide.entity.Comment;
import com.chao.travel.guide.service.CommentService;
import com.chao.travel.guide.vo.CommentVO;
import com.chao.travel.guide.vo.LayuiVO;
import com.chao.travel.guide.vo.QuestionVO;
import com.chao.travel.guide.vo.WangEditorVO;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * @author : WXC
 * date    : 2021/2/2 19:08
 * desc    :-
 */
@Controller
@RequestMapping("/comment")
public class CommentController {
    @Autowired
    private CommentService commentService;

    @PostMapping("/addComment")
    @ResponseBody
    public LayuiVO addComment(String viewId, String userId, String comment, ModelMap modelMap, HttpServletRequest request, HttpServletResponse response) {
        Comment commentData = new Comment();
        commentData.setComment(comment);
        commentData.setViewId(Integer.valueOf(viewId));
        commentData.setUserId(Integer.valueOf(userId));
        commentService.addComment(commentData);
        return LayuiVO.success("?id=" + viewId);
    }

    @PostMapping("/addQuestionComment")
    @ResponseBody
    public LayuiVO addQuestionComment(String questionId, String userId, String comment) {
        Comment commentData = new Comment();
        commentData.setComment(comment);
        commentData.setQuestionAnswerId(Integer.valueOf(questionId));
        commentData.setUserId(Integer.valueOf(userId));
        commentService.addComment(commentData);
        return LayuiVO.success("?id=" + questionId);
    }

    @RequestMapping("/listCommentByUserId")
    @ResponseBody
    public LayuiVO listCommentByUserId(@RequestParam(defaultValue = "1") Integer pageNum,
                                       @RequestParam(defaultValue = "5") Integer pageSize,
                                       ModelMap modelMap, Integer userId) {
        PageInfo<CommentVO> pageInfo = commentService.listCommentByUserId(pageNum, pageSize, userId);
        List<CommentVO> commentVOList = pageInfo.getList();
        return LayuiVO.success(pageInfo.getTotal(), commentVOList);
    }

    @RequestMapping("/deleteComment")
    @ResponseBody
    public LayuiVO deleteComment(Integer id) {
        commentService.deleteById(id);
        return LayuiVO.success();
    }

}
