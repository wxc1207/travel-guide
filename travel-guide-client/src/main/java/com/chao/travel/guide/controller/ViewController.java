package com.chao.travel.guide.controller;

import com.chao.travel.guide.entity.Comment;
import com.chao.travel.guide.entity.UserInfo;
import com.chao.travel.guide.entity.View;
import com.chao.travel.guide.service.CommentService;
import com.chao.travel.guide.service.UserInfoService;
import com.chao.travel.guide.service.ViewService;
import com.chao.travel.guide.util.DateToStringUtils;
import com.chao.travel.guide.vo.CommentVO;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * @author : WXC
 * date    : 2021/1/27 16:53
 * desc    :-
 */
@RequestMapping("/view")
@Controller
public class ViewController {
    @Autowired
    private ViewService viewService;

    @Autowired
    private CommentService commentService;

    @Autowired
    private UserInfoService userInfoService;

    @GetMapping("/viewSearch")
    public String viewSearch(String title, ModelMap modelMap) {
//        System.out.println(1);
        PageInfo<View> pageInfo = viewService.listViewByName(title);
        modelMap.put("viewVOPageInfo", pageInfo);
        modelMap.put("praiseViewList", viewService.listViewByPraiseCount(5));
        modelMap.put("watchViewList", viewService.listViewByWatchCount(5));
        return "view/view_list";
    }

    @RequestMapping("/viewDetail")
    public String viewDetail(Integer id, ModelMap modelMap) {
        View view = viewService.getViewById(id);
//        存放景点
        modelMap.put("view", view);
        //存放(处理的子图片)
        String[] subImages = view.getSubImages().split(",");
        modelMap.put("subImages", subImages);
//        存放评论问题
        List<Comment> commentList = commentService.listWithId(id);
        List<CommentVO> viewCommentVOList = new ArrayList<>();
        for (Comment comment : commentList) {
            CommentVO commentVO = new CommentVO();
            BeanUtils.copyProperties(comment, commentVO);
            commentVO.setCreateTime(DateToStringUtils.dateToString(comment.getCreateTime()));
            commentVO.setUpdateTime(DateToStringUtils.dateToString(comment.getUpdateTime()));

            UserInfo userInfo = userInfoService.getUserInfoById(comment.getUserId());
            BeanUtils.copyProperties(userInfo, commentVO);
            viewCommentVOList.add(commentVO);

//            System.out.println("---------------------------------------------------------");
//            System.out.println(commentVO);
//            System.out.println("---------------------------------------------------------");
        }
        modelMap.put("viewCommentVOList", viewCommentVOList);
        return "view/view";
    }

    @RequestMapping("/index.html")
    public String index(ModelMap modelMap) {
        modelMap.put("kList", viewService.listViewByViewCategoryK(8));
        modelMap.put("jList", viewService.listViewByViewCategoryJ(8));

        return "index";
    }

    @RequestMapping("/listView")
    public String listView(@RequestParam(defaultValue = "1") Integer pageNum,
                           @RequestParam(defaultValue = "5") Integer pageSize,
                           ModelMap modelMap) {
        PageInfo<View> pageInfo = viewService.listView(pageNum, pageSize);
        modelMap.put("viewVOPageInfo", pageInfo);

        modelMap.put("praiseViewList", viewService.listViewByPraiseCount(pageSize));
        modelMap.put("watchViewList", viewService.listViewByWatchCount(pageSize));
        //暂时性忽略，后续可删除，
        /*

        List<View> viewList = pageInfo.getList();
        List<ViewVO> viewVOList = new ArrayList<>();
        for (View view : viewList) {
            ViewVO viewVO = new ViewVO();
            //使用spring自带的BeanUtils的对象属性拷贝功能
            BeanUtils.copyProperties(view, viewVO);
            //属性名不一致时，导致拷贝失败，需要手动进行设置
            viewVO.setCategoryName(view.getViewCategory().getName());
            viewVOList.add(viewVO);
        }
        PageInfo<ViewVO> viewVOPageInfo = PageInfo.of(viewVOList);

        modelMap.put("viewVOPsageInfo", viewVOPageInfo);
        System.out.println("=====================================");
        System.out.println(viewVOPageInfo);
 */

        return "view/view_list";
    }
}
