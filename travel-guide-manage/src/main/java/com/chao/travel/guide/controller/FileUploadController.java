package com.chao.travel.guide.controller;

import com.chao.travel.guide.vo.LayuiVO;

import com.chao.travel.guide.vo.WangEditorVO;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/**
 * @author : WXC
 * date    : 2020/11/28 21:06
 * desc    :-
 */
@Controller
@RequestMapping("/file")
public class FileUploadController {

//    private static final String PRODUCT_FILE_PREFIX = "D:\\IO\\shop\\shopImage\\";
//    private static final String SERVER_PREFIX = "http://localhost:8888/";

    @Value("${PRODUCT_FILE_PREFIX}")
    private String PRODUCT_FILE_PREFIX;
    @Value("${SERVER_PREFIX}")
    private String SERVER_PREFIX;

    @PostMapping("/upload")
    @ResponseBody
    public LayuiVO upload(MultipartFile[] file) throws IOException {
        if (file == null || file.length == 0) {
            return LayuiVO.error(1, "无文件信息");
        }

        //存入数据库的文件地址集合
        List<String> pathList = new ArrayList<>();
        for (MultipartFile multipartFile : file) {
            //获取文件名
            String name = UUID.randomUUID().toString();
            //拼接完整的 存放图片地址，即：D:\\IO\\shop\\shopImage\\文件名.后缀名
            File path = new File(PRODUCT_FILE_PREFIX + name + getSuffix(multipartFile));
            //将图片存放到path路径下
            multipartFile.transferTo(path);
            //拼接完整的 访问图片地址，即：http://localhost:8888/文件名.后缀名
            pathList.add(SERVER_PREFIX + name + getSuffix(multipartFile));
        }
        return LayuiVO.success(pathList);
    }

    @PostMapping("/wangUpload")
    @ResponseBody
    public WangEditorVO wangUpload(MultipartFile[] file) throws IOException {
        //当file为空时
        if (file == null || file.length == 0) {
            return WangEditorVO.error(1, "无图片信息");
        }

        //存入数据库的文件地址集合
        List<String> pathList = new ArrayList<>();
        for (MultipartFile multipartFile : file) {
            //获取文件名
            String name = UUID.randomUUID().toString();
            //拼接完整的 存放图片地址，即：D:\\IO\\shop\\shopImage\\文件名.后缀名
            File path = new File(PRODUCT_FILE_PREFIX + name + getSuffix(multipartFile));
            //将图片存放到path路径下
            multipartFile.transferTo(path);
            //拼接完整的 访问图片地址，即：http://localhost:8888/文件名.后缀名
            pathList.add(SERVER_PREFIX + name + getSuffix(multipartFile));
        }

        return WangEditorVO.success(pathList);
    }

    /**
     * 获取文件的后缀名
     *
     * @param multipartFile 上传的文件
     * @return 文件的后缀名
     */
    private String getSuffix(MultipartFile multipartFile) {
        //获取完整的文件名
        String fileName = multipartFile.getOriginalFilename();
        //截取后缀
        String fileSuffix = fileName.substring(fileName.lastIndexOf("."));
        return fileSuffix;
    }

}
