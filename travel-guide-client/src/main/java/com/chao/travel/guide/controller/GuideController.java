package com.chao.travel.guide.controller;

import com.chao.travel.guide.entity.Comment;
import com.chao.travel.guide.entity.Guide;
import com.chao.travel.guide.entity.UserInfo;
import com.chao.travel.guide.entity.View;
import com.chao.travel.guide.mapper.GuideMapper;
import com.chao.travel.guide.service.CommentService;
import com.chao.travel.guide.service.GuideService;
import com.chao.travel.guide.service.UserInfoService;
import com.chao.travel.guide.util.DateToStringUtils;
import com.chao.travel.guide.vo.CommentVO;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

/**
 * @author : WXC
 * date    : 2021/2/23 10:08
 * desc    :-
 */
@Controller
@RequestMapping("/guide")
public class GuideController {
    @Autowired
    private GuideService guideService;
    @Autowired
    private UserInfoService userInfoService;
    @Autowired
    private CommentService commentService;

    @GetMapping("/guideSearch")
    public String guideSearch(String title, ModelMap modelMap) {
        System.out.println(1);
        PageInfo<Guide> pageInfo = guideService.listGuideByName(title);
        modelMap.put("guideVOPageInfo", pageInfo);
//        modelMap.put("praiseViewList", viewService.listViewByPraiseCount(5));
//        modelMap.put("watchViewList", viewService.listViewByWatchCount(5));
        return "guide/guide_list";
    }

    @RequestMapping("/listGuide")
    public String listView(@RequestParam(defaultValue = "1") Integer pageNum,
                           @RequestParam(defaultValue = "5") Integer pageSize,
                           ModelMap modelMap) {
        PageInfo<Guide> pageInfo = guideService.listGuide(pageNum, pageSize);
        modelMap.put("guideVOPageInfo", pageInfo);
        System.out.println("这是指南界面");
        modelMap.put("praiseGuideList", guideService.listGuideByPraiseCount(pageSize));
        modelMap.put("watchGuideList", guideService.listGuideByWatchCount(pageSize));

        return "guide/guide_list";
    }

    @RequestMapping("/guideDetail")
    public String guideDetail(Integer id, ModelMap modelMap) {
        //存放内容
        modelMap.put("guideDetail", guideService.getGuideById(id));
        //存放 评论
        List<Comment> commentList = commentService.listWithId(id);
        List<CommentVO> guideCommentVOList = new ArrayList<>();
        for (Comment comment : commentList) {
            CommentVO commentVO = new CommentVO();
            BeanUtils.copyProperties(comment, commentVO);
            commentVO.setCreateTime(DateToStringUtils.dateToString(comment.getCreateTime()));
            commentVO.setUpdateTime(DateToStringUtils.dateToString(comment.getUpdateTime()));

            UserInfo userInfo = userInfoService.getUserInfoById(comment.getUserId());
            BeanUtils.copyProperties(userInfo, commentVO);
            guideCommentVOList.add(commentVO);

        }
        modelMap.put("guideCommentVOList", guideCommentVOList);
        return "guide/guide";
    }

}
