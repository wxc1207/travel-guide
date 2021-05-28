<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: WXC
  Date: 2020/11/2
  Time: 14:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>景点添加页面</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layuiadmin/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layuiadmin/style/admin.css" media="all">
    <style>


        .layui-upload-img {
            width: 92px;
            height: 92px;
            margin: 0 10px 10px 0;
        }
    </style>
</head>
<body>


<div class="layui-fluid">
    <div class="layui-card">
        <div class="layui-card-header">景点添加</div>
        <div class="layui-card-body" style="padding: 15px;">
            <form class="layui-form" action="" lay-filter="component-form-group">

                <div class="layui-form-item">
                    <div class="layui-inline">
                        <label class="layui-form-label">类别</label>
                        <div class="layui-input-inline">
                            <select name="categoryId" lay-verify="required">
                                <option value="">请选择类别</option>
                                <optgroup label="">
                                    <c:forEach items="${guideCategoryList}" var="child">
                                        <option value="${child.id}">${child.name}</option>
                                    </c:forEach>
                                </optgroup>
                            </select>
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">景点名称</label>
                        <div class="layui-input-block">
                            <input type="text" name="name" autocomplete="off" placeholder="请输入景点名称"
                                   class="layui-input" lay-verify="required">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">英文名称</label>
                        <div class="layui-input-block">
                            <input type="text" name="englishName" autocomplete="off" placeholder="请输入景点英文名称"
                                   class="layui-input">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">简介</label>
                        <div class="layui-input-block">
                            <input type="text" name="subtitle" autocomplete="off" placeholder="请输入简介"
                                   class="layui-input" lay-verify="required">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">主图</label>
                        <div class="layui-input-block">
                            <button type="button" class="layui-btn" id="mainImage">
                                <i class="layui-icon">&#xe67c;</i>上传主图
                            </button>
                            <div class="layui-upload-list">
                                <img class="layui-upload-img" id="mainImagePreview">
                                <p id="demoText"></p>
                            </div>
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">详情图</label>
                        <div class="layui-input-block">
                            <button type="button" class="layui-btn" id="subImages">
                                <i class="layui-icon">&#xe67c;</i>上传详情图
                            </button>
                            <blockquote class="layui-elem-quote layui-quote-nm" style="margin-top: 10px;">
                                预览图：
                                <div class="layui-upload-list" id="subImagesPreview"></div>
                            </blockquote>
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">交通</label>
                        <div class="layui-input-block">
                            <input type="text" name="traffic" autocomplete="off" placeholder="请输入交通路线"
                                   class="layui-input" lay-verify="required">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">票价</label>
                        <div class="layui-input-block">
                            <input type="text" name="ticket" autocomplete="off" placeholder="请输入票价"
                                   class="layui-input" lay-verify="required">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">手机号</label>
                        <div class="layui-input-block">
                            <input type="text" name="phone" maxlength="11" autocomplete="off" placeholder="请输入手机号"
                                   class="layui-input" lay-verify="required|checkPhone">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">需用时间</label>
                        <div class="layui-input-block">
                            <input type="text" name="needTime" autocomplete="off" placeholder="请输入需用时间"
                                   class="layui-input" lay-verify="required">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">开放时间</label>
                        <div class="layui-input-block">
                            <input type="text" name="openingHours" autocomplete="off" placeholder="请输入开放时间"
                                   class="layui-input" lay-verify="required">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">地址</label>
                        <div class="layui-input-block">
                            <input type="text" name="address" autocomplete="off" placeholder="请输入地址"
                                   class="layui-input" lay-verify="required">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">详情</label>
                        <div class="layui-input-block">
                            <div id="detail">
                            </div>
                        </div>
                    </div>


                    <div class="layui-form-item layui-layout-admin">
                        <div class="layui-input-block">
                            <div class="layui-footer" style="left: 0;">
                                <%-- button 时刻都要写type，在不同浏览器下，会有不同的默认值 --%>
                                <button type="button" class="layui-btn" lay-submit="" lay-filter="view-submit">
                                    立即提交
                                </button>
                                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>


<script src="${pageContext.request.contextPath}/layuiadmin/layui/layui.js"></script>
<script src="${pageContext.request.contextPath}/static/js/wangEditor.min.js"></script>
<script>
    layui.config({
        base: '${pageContext.request.contextPath}/layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'form', 'laydate', 'upload'], function () {
        var $ = layui.$
            , admin = layui.admin
            , element = layui.element
            , layer = layui.layer
            , laydate = layui.laydate
            , form = layui.form
            , upload = layui.upload;

        /*富文本编辑器初始化*/
        var E = window.wangEditor;
        var editor = new E('#detail');

        //自己定义上传的方法
        editor.config.customUploadImg = function (resultFiles, insertImgFn) {
            var daw = new FormData();
            for (var i = 0; i < resultFiles.length; i++) {
                daw.append("file", resultFiles[i]);
            }
            index = layer.load(1, {
                shade: [0.1, '#fff'] //0.1透明度的白色背景
            });

            $.ajax({
                url: '${pageContext.request.contextPath}/file/wangUpload',
                type: "POST",
                data: daw,
                async: false,
                cache: false,
                contentType: false,
                processData: false,
                success: function (res) {
                    layer.close(index);
                    if (res.errno == 0) {
                        for (var j = 0; j < res.data.length; j++) {
                            insertImgFn(res.data[j]);
                        }
                    } else {
                        alert(res.msg);
                        return;
                    }
                }
            });
        }

        editor.create();


        form.verify({
            checkPhone: [
                /^1(?:3\d|4[4-9]|5[0-35-9]|6[67]|7[013-8]|8\d|9\d)\d{8}$/,
                '手机号有误，请输入正确的手机号'
            ]
        });
        var mainImagePath = '';
        var subImagesPath = '';
        var mainIs;
        var subIs;

        upload.render({
            elem: '#mainImage',
            url: '${pageContext.request.contextPath}/file/upload',
            before: function (obj) {
                //预读本地文件示例，不支持ie8
                //index 是一串数字
                //file 对象：包括上传时间、名字、大小、类型
                //result base64加密的地址格式
                obj.preview(function (index, file, result) {
                    $('#mainImagePreview').attr('src', result); //图片链接（base64）
                });
            },
            //成功时会调用
            done: function (res) {
                //返回的状态码为0，代表成功
                if (res.code == 0) {
                    mainImagePath = res.data[0];
                    mainIs = true;
                } else {
                    layer.msg(res.msg);
                }
            },
            error: function () {

            }
        });
        upload.render({
            elem: '#subImages',
            url: '${pageContext.request.contextPath}/file/upload',
            multiple: true,
            //before方法会调用一次
            before: function (obj) {
                //预读本地文件示例，不支持ie8
                //preview会调用n（n张图片，调用n次）次，每一次会追加一个img标签
                obj.preview(function (index, file, result) {
                    $('#subImagesPreview').append('<img src="' + result + '"  class="layui-upload-img">')
                });
            },
            done: function (res) {
                if (res.code == 0) {
                    subImagesPath += res.data[0] + ',';
                    subIs = true;
                }
            },
        });

        /* 监听提交 */
        form.on('submit(view-submit)', function (data) {
            // console.log(data);
            if (!mainIs) {
                layer.msg('主图为必填项');
                return;
            }
            if (!subIs) {
                layer.msg('详情图为必填项');
                return;
            }

            if (!editor.txt.html().trim()) {
                layer.msg('请编辑商品详情');
                return;
            }
            var viewData = data.field;
            console.log(mainImagePath + " main")
            viewData.mainImage = mainImagePath;

            viewData.detail = editor.txt.html();
            viewData.subImages = subImagesPath.substr(0, subImagesPath.length - 1);//处理最后一个逗号
            // console.log(productData);
            //拿到完整的信息,将其提交到后台即可
            $.ajax({
                url: '${pageContext.request.contextPath}/view/viewAdd',
                type: 'post',
                contentType: 'application/json',//发送json格式的数据
                data: JSON.stringify(viewData),//将对象转化为字符串
                // processData: false,//不设置的话他也不报错，因为我这不是对象，而是字符串
                success: function (res) {
                    console.log(res);
                    var url = '${pageContext.request.contextPath}/view/jump?path=view/view_list';
                    var tit = '商品列表';
                    if (res.code == 0) {
                        //
                        layer.msg(res.msg, {icon: 1});
                        location.href = url;
                    } else {
                        layer.msg(res.msg, {icon: 2});
                    }
                }
            });
        });
    });
</script>
</body>
</html>
