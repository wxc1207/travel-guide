package com.chao.travel.guide.controller;

import com.chao.travel.guide.entity.Comment;
import com.chao.travel.guide.service.CommentService;
import com.chao.travel.guide.vo.CommentVO;
import com.chao.travel.guide.vo.LayuiVO;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * @author : WXC
 * date    : 2021/1/14 22:45
 * desc    :-
 */
@Controller
@RequestMapping("/comment")
public class CommentController {
    @Autowired
    private CommentService commentService;

    @GetMapping("/listComment")
    @ResponseBody
    public LayuiVO listComment(@RequestParam(defaultValue = "1") Integer pageNum,
                               @RequestParam(defaultValue = "10") Integer pageSize) {
        PageInfo<CommentVO> pageInfo = commentService.listQuestionAnswer(pageNum, pageSize);
        List<CommentVO> CommentVOList = pageInfo.getList();
        return LayuiVO.success(pageInfo.getTotal(), CommentVOList);
    }

    @GetMapping("/deleteCommentById")
    @ResponseBody
    public LayuiVO deleteCommentById(Integer id) {
        commentService.deleteCommentById(id);
        return LayuiVO.success();
    }

}
