package com.chao.travel.guide.controller;

import com.chao.travel.guide.entity.Guide;
import com.chao.travel.guide.entity.UserInfo;
import com.chao.travel.guide.service.GuideCategoryService;
import com.chao.travel.guide.service.GuideService;
import com.chao.travel.guide.service.UserInfoService;
import com.chao.travel.guide.service.UserService;
import com.chao.travel.guide.vo.GuideVO;
import com.chao.travel.guide.vo.LayuiVO;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

/**
 * @author : WXC
 * date    : 2021/1/14 13:37
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
    private GuideCategoryService guideCategoryService;

    @GetMapping("/listGuide")
    @ResponseBody
    public LayuiVO listGuide(@RequestParam(defaultValue = "1") Integer pageNum,
                             @RequestParam(defaultValue = "10") Integer pageSize) {
        PageInfo<Guide> pageInfo = guideService.listGuide(pageNum, pageSize);
        List<Guide> guideList = pageInfo.getList();
        List<GuideVO> guideVOList = new ArrayList<>();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        for (Guide guide : guideList) {
            GuideVO guideVO = new GuideVO();
            BeanUtils.copyProperties(guide, guideVO);
            guideVO.setName(guide.getGuideCategory().getName());
            guideVO.setStartTime(sdf.format(guide.getStartTime()));
            guideVO.setCreateTime(sdf.format(guide.getCreateTime()));
            guideVO.setUpdateTime(sdf.format(guide.getUpdateTime()));
            guideVO.setUsername(userInfoService.getUserByUserId(guide.getUserId()).getNickname());
            guideVOList.add(guideVO);
        }
        System.out.println(guideVOList);
        return LayuiVO.success(pageInfo.getTotal(), guideVOList);

    }

    @RequestMapping("/guideAddView")
    public String guideAddView(ModelMap modelMap) {
        modelMap.put("guideCategoryList", guideCategoryService.listGuideCategory());
        return "guide/guide_add";
    }

    @RequestMapping("/deleteGuideByIds")
    @ResponseBody
    public LayuiVO deleteGuideByIds(Integer[] ids){
        int result = guideService.deleteByIds(ids);
        if (result == 0){
            LayuiVO.error(1,"要删除的id不存在");
        }
        return LayuiVO.success();
    }

}
