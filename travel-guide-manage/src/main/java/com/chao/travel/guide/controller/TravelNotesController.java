package com.chao.travel.guide.controller;

import com.chao.travel.guide.entity.TravelNotes;
import com.chao.travel.guide.entity.View;
import com.chao.travel.guide.service.TravelNotesService;
import com.chao.travel.guide.service.UserInfoService;
import com.chao.travel.guide.util.DateToStringUtils;
import com.chao.travel.guide.vo.LayuiVO;
import com.chao.travel.guide.vo.TravelNotesVO;
import com.chao.travel.guide.vo.ViewVO;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

/**
 * @author : WXC
 * date    : 2021/1/15 10:41
 * desc    :-
 */
@Controller
@RequestMapping("/travelNotes")
public class TravelNotesController {
    @Autowired
    private TravelNotesService travelNotesService;

    @Autowired
    private UserInfoService userInfoService;

    @GetMapping("/listTravelNotes")
    @ResponseBody
    public LayuiVO listTravelNotes(@RequestParam(defaultValue = "1") Integer pageNum,
                                   @RequestParam(defaultValue = "10") Integer pageSize) {
        PageInfo<TravelNotes> pageInfo = travelNotesService.listTravelNotes(pageNum, pageSize);
        List<TravelNotes> travelNotesList = pageInfo.getList();
        List<TravelNotesVO> travelNotesVOList = new ArrayList<>();
        for (TravelNotes travelNotes : travelNotesList) {
            TravelNotesVO travelNotesVO = new TravelNotesVO();
            BeanUtils.copyProperties(travelNotes, travelNotesVO);
            travelNotesVO.setNickname(userInfoService.getUserByUserId(travelNotes.getUserId()).getNickname());
            travelNotesVO.setCreateTime(DateToStringUtils.dateToString(travelNotes.getCreateTime()));
            travelNotesVO.setUpdateTime(DateToStringUtils.dateToString(travelNotes.getUpdateTime()));
            travelNotesVO.setStartTime(DateToStringUtils.dateToStringYTD(travelNotes.getStartTime()));
            travelNotesVOList.add(travelNotesVO);
            System.out.println("==========================");
            System.out.println("travelNotes.getStartTime()"+DateToStringUtils.dateToStringYTD(travelNotes.getStartTime()));
        }

        return LayuiVO.success(pageInfo.getTotal(), travelNotesVOList);
    }

}
