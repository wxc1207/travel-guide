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
    <title>景点更新页面</title>
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
        <div class="layui-card-header">景点更新</div>
        <div class="layui-card-body" style="padding: 15px;">
            <form class="layui-form" action="" lay-filter="component-form-group">
                <%-- 修改页隐藏的id --%>
                <input type="hidden" name="id" value="${admin.id}">
                <div class="layui-form-item">


                    <div class="layui-form-item">
                        <label class="layui-form-label">用户名</label>
                        <div class="layui-input-block">
                            <input name="username" type="text" disabled autocomplete="off"
                                   class="layui-input" value="${admin.username}">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">密码</label>
                        <div class="layui-input-block">
                            <input type="password" name="password" autocomplete="off" placeholder="请输入密码"
                                   class="layui-input" lay-verify="required|password">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">密码</label>
                        <div class="layui-input-block">
                            <input type="password" name="password" autocomplete="off" placeholder="请输入密码"
                                   class="layui-input" lay-verify="required|repassword">
                        </div>
                    </div>


                    <div class="layui-form-item layui-layout-admin">
                        <div class="layui-input-block">
                            <div class="layui-footer" style="left: 0;">
                                <%-- button 时刻都要写type，在不同浏览器下，会有不同的默认值 --%>
                                <button type="button" class="layui-btn" lay-submit="admin-submit"
                                        lay-filter="admin-submit">
                                    确认修改
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


        var pawdFlag = '';

        form.verify({
            password: function (value, item) { //value：表单的值、item：表单的DOM对象
                pawdFlag = value;
                if (!new RegExp("^[a-zA-Z0-9_\u4e00-\u9fa5\\s·]+$").test(value)) {
                    return '密码不能有特殊字符';
                }
                if (/(^\_)|(\__)|(\_+$)/.test(value)) {
                    return '密码首尾不能出现下划线\'_\'';
                }
                if (/^\d+\d+\d$/.test(value)) {
                    return '密码不能全为数字';
                }
                console.log('1---' + value);
            },
            repassword: function (value, item) { //value：表单的值、item：表单的DOM对象
                console.log('2---' + value);
                if (pawdFlag != value) {
                    return '两次密码不一致';
                }
            }

        });

        /* 监听提交 */
        form.on('submit(admin-submit)', function (data) {

            var adminData = data.field;

            console.log('----------' + adminData);
            $.ajax({
                url: '${pageContext.request.contextPath}/admin/updateAdminPassword',
                type: 'post',
                contentType: 'application/json',//发送json格式的数据
                data: JSON.stringify(adminData),//将对象转化为字符串
                // processData: false,//不设置的话他也不报错，因为我这不是对象，而是字符串
                success: function (res) {
                    console.log(res);
                    var url = '${pageContext.request.contextPath}/view/jump?path=home/home';
                    if (res.code == 0) {
                        layer.msg(res.msg, {
                            icon: 1,
                            time: 3000, //20s后自动关闭
                        }, function () {

                            location.href = url;
                        });


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
