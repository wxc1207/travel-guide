package com.chao.travel.guide.controller;

import com.chao.travel.guide.entity.Comment;
import com.chao.travel.guide.entity.TravelNotes;
import com.chao.travel.guide.entity.TravelNotesDetail;
import com.chao.travel.guide.entity.UserInfo;
import com.chao.travel.guide.service.CommentService;
import com.chao.travel.guide.service.TravelNotesDetailService;
import com.chao.travel.guide.service.TravelNotesService;
import com.chao.travel.guide.service.UserInfoService;
import com.chao.travel.guide.util.DateToStringUtils;
import com.chao.travel.guide.vo.*;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.time.Period;
import java.util.ArrayList;
import java.util.List;

/**
 * @author : WXC
 * date    : 2021/3/8 16:09
 * desc    :-
 */
@Controller
@RequestMapping("/travel")
public class TravelNotesController {

    @Autowired
    private TravelNotesService travelNotesService;
    @Autowired
    private UserInfoService userInfoService;

    @Autowired
    private TravelNotesDetailService travelNotesDetailService;

    @Autowired
    private CommentService commentService;

    @RequestMapping("/listTravelNotes")
    public String listTravelNotes(@RequestParam(defaultValue = "1") Integer pageNum,
                                  @RequestParam(defaultValue = "5") Integer pageSize,
                                  ModelMap modelMap) {
        PageInfo<TravelNotes> pageInfo = travelNotesService.listTravelNotes(pageNum, pageSize);
        modelMap.put("travelNotesVOPageInfo", pageInfo);

        modelMap.put("praiseTravelNotesList", travelNotesService.listTravelNotesByPraiseCount(pageSize));
        modelMap.put("watchTravelNotesList", travelNotesService.listTravelNotesByWatchCount(pageSize));
        return "travel/travel_notes_list";
    }

    @RequestMapping("/travelNotesDetail")
    public String travelNotesDetail(Integer id, ModelMap modelMap) {
        //获取旅游信息
        TravelNotes travelNotesById = travelNotesService.getTravelNotesById(id);
        TravelNotesVO travelNotesVO = new TravelNotesVO();
        //转化为VO
        BeanUtils.copyProperties(travelNotesById, travelNotesVO);
        System.out.println("=======================================");
        System.out.println(id);
        System.out.println(travelNotesDetailService.getByTravelNotesId(id));
        System.out.println("=======================================");
        travelNotesVO.setTravelNotesDetailList(travelNotesDetailService.getByTravelNotesId(id));

        travelNotesVO.setStartTime(DateToStringUtils.dateToStringYTD(travelNotesById.getStartTime()));
        travelNotesVO.setCreateTime(DateToStringUtils.dateToString(travelNotesById.getCreateTime()));
        travelNotesVO.setUpdateTime(DateToStringUtils.dateToString(travelNotesById.getUpdateTime()));

        modelMap.put("travelNotesVO", travelNotesVO);
        //获取要用户信息
        modelMap.put("userInfo", userInfoService.getUserInfoById(travelNotesById.getUserId()));
//存放评论信息
        List<Comment> commentList = commentService.listTravelNotesId(id);
        List<CommentVO> travelNotesCommentVOList = new ArrayList<>();
        for (Comment comment : commentList) {
            CommentVO commentVO = new CommentVO();
            BeanUtils.copyProperties(comment, commentVO);
            commentVO.setCreateTime(DateToStringUtils.dateToString(comment.getCreateTime()));
            commentVO.setUpdateTime(DateToStringUtils.dateToString(comment.getUpdateTime()));

            UserInfo userInfo = userInfoService.getUserInfoById(comment.getUserId());
            BeanUtils.copyProperties(userInfo, commentVO);
            travelNotesCommentVOList.add(commentVO);
        }
        modelMap.put("travelNotesCommentVOList", travelNotesCommentVOList);
        return "travel/travel_notes";
    }

    @RequestMapping("/listTravelByUserId")
    @ResponseBody
    public LayuiVO listTravelByUserId(@RequestParam(defaultValue = "1") Integer pageNum,
                                      @RequestParam(defaultValue = "5") Integer pageSize,
                                      ModelMap modelMap, Integer userId) {
        PageInfo<TravelNotes> pageInfo = travelNotesService.listTravelByUserId(pageNum, pageSize, userId);
        List<TravelNotes> travelNotesList = pageInfo.getList();

        List<TravelNotesVO> travelNotesVOList = new ArrayList<>();
        for (TravelNotes travelNotes : travelNotesList) {
            TravelNotesVO travelNotesVO = new TravelNotesVO();
            BeanUtils.copyProperties(travelNotes, travelNotesVO);
            travelNotesVO.setStartTime(DateToStringUtils.dateToStringYTD(travelNotes.getStartTime()));
            travelNotesVO.setCreateTime(DateToStringUtils.dateToString(travelNotes.getCreateTime()));
            travelNotesVO.setUpdateTime(DateToStringUtils.dateToString(travelNotes.getUpdateTime()));
            travelNotesVOList.add(travelNotesVO);
        }

        return LayuiVO.success(pageInfo.getTotal(), travelNotesVOList);
    }

    @RequestMapping("/deleteTravel")
    @ResponseBody
    public LayuiVO deleteTravel(Integer id) {
        travelNotesService.deleteTravelByUserId(id);
        return LayuiVO.success();
    }

    @RequestMapping("/addTravelView")
    public String addTravelView(Integer userId) {

        System.out.println(userId + "即将进入游记添加页面");
        return "user/add_travel";
    }

    @PostMapping("/travelAdd")
    @ResponseBody
    public LayuiVO travelAdd(@RequestBody TravelNotesVO travelNotesVO, BindingResult bindingResult) {
        TravelNotes travelNotes = new TravelNotes();
        BeanUtils.copyProperties(travelNotesVO, travelNotes);
        travelNotesService.addTravel(travelNotes);
        return LayuiVO.success();
    }
}
