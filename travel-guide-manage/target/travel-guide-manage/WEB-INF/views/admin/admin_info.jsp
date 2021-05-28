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
    <title>管理员信息页面</title>
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
        <div class="layui-card-header">管理员信息</div>
        <div class="layui-card-body" style="padding: 15px;">
            <form class="layui-form" action="" lay-filter="component-form-group">
                <%-- 修改页隐藏的id --%>
                <input type="hidden" name="id" value="${adminInfo.id}">
                <div class="layui-form-item">
                    <div class="layui-form-item">
                        <label class="layui-form-label">账号</label>
                        <div class="layui-input-block">
                            <input type="text" disabled autocomplete="off" placeholder="${admin.username}"
                                   class="layui-input" lay-verify="required" value="${admin.username}">
                            <font size="2" color="red">* 账号禁止修改</font>

                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">头像</label>
                        <div class="layui-input-block">
                            <button type="button" class="layui-btn" id="headImage">
                                <i class="layui-icon">&#xe67c;</i>上传头像
                            </button>
                            <div class="layui-upload-list">
                                <img class="layui-upload-img" id="mainImagePreview" src="${adminInfo.headImage}">
                                <p id="demoText"></p>
                            </div>
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">昵称</label>
                        <div class="layui-input-block">
                            <input type="text" name="nickname" autocomplete="off" placeholder="请输入管理员昵称"
                                   class="layui-input" lay-verify="required" value="${adminInfo.nickname}">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">签名</label>
                        <div class="layui-input-block">
                            <input type="text" name="signature" autocomplete="off" placeholder="请输入签名"
                                   class="layui-input" lay-verify="required" value="${adminInfo.signature}">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">手机号</label>
                        <div class="layui-input-block">
                            <input type="text" name="phone" autocomplete="off" placeholder="请输入手机号"
                                   class="layui-input" lay-verify="required|checkPhone" value="${adminInfo.phone}">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">邮箱</label>
                        <div class="layui-input-block">
                            <input type="text" name="email" autocomplete="off" placeholder="请输入邮箱"
                                   class="layui-input" lay-verify="required|checkEmail" value="${adminInfo.email}">
                        </div>
                    </div>
                    <div class="layui-form-item layui-layout-admin">
                        <div class="layui-input-block">
                            <div class="layui-footer" style="left: 0;">
                                <%-- button 时刻都要写type，在不同浏览器下，会有不同的默认值 --%>
                                <button type="button" class="layui-btn" lay-submit="admin-submit"
                                        lay-filter="admin-submit">
                                    保存
                                </button>
                                <button type="button" lay-filter="admin-submit-close" lay-submit="admin-submit-close"
                                        class="layui-btn layui-btn-primary">
                                    关闭
                                </button>
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


        form.verify({
            checkPhone: [
                /^1(?:3\d|4[4-9]|5[0-35-9]|6[67]|7[013-8]|8\d|9\d)\d{8}$/,
                '手机号有误，请输入正确的手机号'
            ],
            checkEmail: [
                /^[a-zA-Z0-9]+([-_.][a-zA-Z0-9]+)*@[a-zA-Z0-9]+([-_.][a-zA-Z0-9]+)*\.[a-z]{2,}$/,
                '邮箱有误，请输入正确的邮箱'
            ]
        });
        var headImagePath = '';
        var mainIs;

        upload.render({
            elem: '#headImage',
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
                    headImagePath = res.data[0];
                    mainIs = true;
                } else {
                    layer.msg(res.msg);
                }
            },
            error: function (res) {
                layer.msg(res.msg);
            }
        });


//监听行单击事件
        form.on('submit(admin-submit-close)', function (data) {
            var index = parent.layer.getFrameIndex(window.name);
            parent.layer.close(index);//关闭当前页
            layer.closeAll('iframe');//关闭所有的iframe层
            layer.closeAll();//疯狂模式，关闭所有层

            layer.closeAll('dialog'); //关闭信息框

            layer.closeAll('page');//关闭所有页面层


            layer.closeAll('loading');//关闭加载层

            layer.closeAll('tips');//关闭所有的tips层
        });
        /* 监听提交 */
        form.on('submit(admin-submit)', function (data) {
            // console.log(data);
            // if (!mainIs) {
            //     layer.msg('主图为必填项');
            //     return;
            // }


            var adminData = data.field;
            // console.log(headImagePath + " main");
            adminData.headImage = headImagePath;

            //拿到完整的信息,将其提交到后台即可
            $.ajax({
                url: '${pageContext.request.contextPath}/adminInfo/adminInfoUpdate',
                type: 'post',
                contentType: 'application/json',//发送json格式的数据
                data: JSON.stringify(adminData),//将对象转化为字符串
                // processData: false,//不设置的话他也不报错，因为我这不是对象，而是字符串
                success: function (res) {
                    console.log(res);
                    var url = '${pageContext.request.contextPath}/view/jump?path=home/home';
                    if (res.code == 0) {
                        layer.msg(res.msg, {icon: 1});
                        location.href=url;
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
