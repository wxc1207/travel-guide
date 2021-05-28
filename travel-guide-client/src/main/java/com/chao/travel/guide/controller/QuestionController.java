package com.chao.travel.guide.controller;

import com.chao.travel.guide.entity.Comment;
import com.chao.travel.guide.entity.QuestionAnswer;
import com.chao.travel.guide.entity.UserInfo;
import com.chao.travel.guide.entity.View;
import com.chao.travel.guide.service.CommentService;
import com.chao.travel.guide.service.QuestionService;
import com.chao.travel.guide.service.UserInfoService;
import com.chao.travel.guide.util.DateToStringUtils;
import com.chao.travel.guide.vo.CommentVO;
import com.chao.travel.guide.vo.LayuiVO;
import com.chao.travel.guide.vo.QuestionVO;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

/**
 * @author : WXC
 * date    : 2021/3/10 14:54
 * desc    :-
 */
@Controller
@RequestMapping("/question")
public class QuestionController {
    @Autowired
    private CommentService commentService;

    @Autowired
    private QuestionService questionService;
    @Autowired
    private UserInfoService userInfoService;

    @GetMapping("/QuestionSearch")
    public String QuestionSearch(String question, ModelMap modelMap) {
        System.out.println(question);
        PageInfo<QuestionAnswer> pageInfo = questionService.listQuestionByQuestion(question);
        modelMap.put("questionVOPageInfo", pageInfo);
        modelMap.put("praiseQuestionList", questionService.listQuestionByPraiseCount(5));
        modelMap.put("watchQuestionList", questionService.listQuestionByWatchCount(5));

        return "question/question_list";
    }

    @RequestMapping("/listQuestion")
    public String listQuestion(@RequestParam(defaultValue = "1") Integer pageNum,
                               @RequestParam(defaultValue = "5") Integer pageSize,
                               ModelMap modelMap) {
        //question的VO封装
        PageInfo pageInfo = questionService.listQuestion(pageNum, pageSize);
        modelMap.put("questionVOPageInfo", pageInfo);
        modelMap.put("praiseQuestionList", questionService.listQuestionByPraiseCount(pageSize));
        modelMap.put("watchQuestionList", questionService.listQuestionByWatchCount(pageSize));
        return "question/question_list";
    }

    @RequestMapping("/addQuestion")
    @ResponseBody
    public LayuiVO addQuestion(QuestionAnswer questionAnswer) {
        questionService.addQuestion(questionAnswer);
        return LayuiVO.success();
    }

    @RequestMapping("/questionDetail")
    public String questionDetail(Integer id, ModelMap modelMap) {
        QuestionVO questionVO = questionService.getQuestionById(id);
        modelMap.put("questionVO", questionVO);
        List<Comment> commentList = commentService.listQuestionId(id);
        List<CommentVO> commentVOList = new ArrayList<>();
        for (Comment comment : commentList) {
            CommentVO commentVO = new CommentVO();
            BeanUtils.copyProperties(comment, commentVO);

            commentVO.setCreateTime(DateToStringUtils.dateToString(comment.getCreateTime()));
            commentVO.setUpdateTime(DateToStringUtils.dateToString(comment.getUpdateTime()));

            UserInfo userInfo = userInfoService.getUserInfoById(comment.getUserId());
            BeanUtils.copyProperties(userInfo, commentVO);
            commentVOList.add(commentVO);
        }

        modelMap.put("questionCommentVOList", commentVOList);
        return "question/question";
    }

    @RequestMapping("/listQuestionByUserId")
    @ResponseBody
    public LayuiVO listQuestionByUserId(@RequestParam(defaultValue = "1") Integer pageNum,
                                        @RequestParam(defaultValue = "5") Integer pageSize,
                                        ModelMap modelMap, Integer userId) {
        PageInfo<QuestionVO> pageInfo = questionService.listQuestionByUserId(pageNum, pageSize, userId);
        List<QuestionVO> questionVOList = pageInfo.getList();
        return LayuiVO.success(pageInfo.getTotal(), questionVOList);
    }

    @RequestMapping("/deleteQuestion")
    @ResponseBody
    public LayuiVO deleteQuestion(Integer id) {
        questionService.deleteQuestion(id);
        return LayuiVO.success();
    }

}
