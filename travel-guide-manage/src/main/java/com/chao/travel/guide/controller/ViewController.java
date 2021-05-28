package com.chao.travel.guide.controller;

import com.chao.travel.guide.entity.View;
import com.chao.travel.guide.service.ViewCategoryService;
import com.chao.travel.guide.service.ViewService;
import com.chao.travel.guide.vo.LayuiVO;
import com.chao.travel.guide.vo.ViewVO;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.function.ServerResponse;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

/**
 * @author : WXC
 * date    : 2021/1/10 21:14
 * desc    :-
 */

@Controller
@RequestMapping("/view")
public class ViewController {
    @Autowired
    private ViewService viewService;
    @Autowired
    private ViewCategoryService viewCategoryService;

@GetMapping("/listView")
@ResponseBody
public LayuiVO listView(@RequestParam(defaultValue = "1") Integer pageNum,
                        @RequestParam(defaultValue = "10") Integer pageSize) {
    PageInfo<View> pageInfo = viewService.listView(pageNum, pageSize);
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
    return LayuiVO.success(pageInfo.getTotal(), viewVOList);
}

    @GetMapping("/deleteViewByIds")
    @ResponseBody
    public LayuiVO deleteViewByIds(Integer[] ids) {
        int rows = viewService.deleteViewByIds(ids);
        if (rows == 0) {
            return LayuiVO.error(1, "要删除的id不存在");
        }
        return LayuiVO.success();
    }

    @RequestMapping("/viewAddView")
    public String viewAddView(ModelMap modelMap) {
        modelMap.put("categoryList", viewCategoryService.listCategoryStructure());
//        System.out.println(1111);
        System.out.println(viewCategoryService.listCategoryStructure());
        return "view/view_add";
    }

    @PostMapping("/viewAdd")
    @ResponseBody
    public LayuiVO viewAdd(@RequestBody ViewVO viewVO, BindingResult bindingResult) {
        //判断是否有错误
        viewService.insertView(viewVO);
//        System.out.println(viewVO);
        return LayuiVO.success(viewVO);
    }

    @GetMapping("/viewUpdateView")
    public String viewUpdateView(Integer id, ModelMap modelMap) {
        //首先查询分类
        modelMap.put("categoryList", viewCategoryService.listCategoryStructure());
        //其次查询商品
        View view = viewService.getViewById(id);
        modelMap.put("view", view);
        String[] subImages = view.getSubImages().split(",");
        modelMap.put("subImages", subImages);
        return "view/view_update";
    }

    @PostMapping("/viewUpdate")
    @ResponseBody
    public LayuiVO viewUpdate(@RequestBody @Valid ViewVO viewVO, BindingResult bindingResult) {
        System.out.println(viewVO);
        //判断是否有异常发生（除却主图和详情图）
        if (bindingResult.hasErrors()) {
            //判断异常是否是 主图 和 详情图 的异常
            for (ObjectError error : bindingResult.getAllErrors()) {
                if (!(error.getDefaultMessage().equals("主图不为空") || error.getDefaultMessage().equals("详情图不为空"))) {
                    return LayuiVO.error(1, error.getDefaultMessage());
                }
            }
        }
        //将数据更新到数据库
        viewService.updateView(viewVO);
        return LayuiVO.success();
    }
}
