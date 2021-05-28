<%--
  Created by IntelliJ IDEA.
  User: WXC
  Date: 2021/3/16
  Time: 13:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人管理</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layuiadmin/layui/css/layui.css"
          media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layuiadmin/style/admin.css"
          media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layuiadmin/style/login.css"
          media="all">
</head>
<body>


<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">layui 后台布局</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/view/index.html">首页</a>
            </li>
            <li class="layui-nav-item"><a
                    href="${pageContext.request.contextPath}/view/listView">景点</a></li>
            <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/guide/listGuide">指南</a>
            </li>
            <li class="layui-nav-item"><a
                    href="${pageContext.request.contextPath}/travel/listTravelNotes">游记</a></li>
            <li class="layui-nav-item"><a
                    href="${pageContext.request.contextPath}/question/listQuestion">问答</a></li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="${userInfo.headImage}" class="layui-nav-img">
                    ${userInfo.nickname}
                </a>
            </li>
            <li class="layui-nav-item"><a
                    href="${pageContext.request.contextPath}/user/logout">退出登录</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <jsp:include page="left_menu.jsp"/>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">
            <div class="layui-card-body" style="padding: 15px;">
                <form class="layui-form" action="" lay-filter="component-form-group">
                    <%-- 修改页隐藏的id --%>
                    <div class="layui-form-item">

                        <div class="layui-form-item">
                            <label class="layui-form-label">账号</label>
                            <div class="layui-input-block">
                                <input type="text" autocomplete="off"
                                       class="layui-input" lay-verify="required"
                                       value="${user.username}" disabled
                                       style="width: 200px">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">头像</label>
                            <div class="layui-input-block">
                                <div class="layui-upload-list">
                                    <img class="layui-upload-img" id="headImagePreview"
                                         width="100px" height="100px"
                                         src="${userInfo.headImage}">
                                    <p id="demoText"></p>
                                </div>
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">昵称</label>
                            <div class="layui-input-block">
                                <input type="text" name="nickname" autocomplete="off"
                                       placeholder="请输入新的昵称" disabled
                                       class="layui-input" value="${userInfo.nickname}"
                                       style="width: 200px">
                            </div>
                        </div>
                        <div class=" layui-form-item">
                            <label class="layui-form-label">手机号</label>
                            <div class="layui-input-block">
                                <input type="text" maxlength="" name="phone" autocomplete="off"
                                       placeholder="请输入新的手机号"
                                       disabled
                                       class="layui-input" lay-verify="required|checkPhone"
                                       value="${userInfo.phone}"
                                       style="width: 200px">
                            </div>
                        </div>
                        <div class=" layui-form-item">
                            <label class="layui-form-label">邮箱</label>
                            <div class="layui-input-block">
                                <input type="text" maxlength="" name="email" autocomplete="off"
                                       placeholder="请输入新的邮箱"
                                       disabled
                                       class="layui-input" lay-verify="required|checkPhone"
                                       value="${userInfo.email}"
                                       style="width: 200px">
                            </div>
                        </div>
                        <div class=" layui-form-item">
                            <label class="layui-form-label">个性签名</label>
                            <div class="layui-input-block">
                                <input type="text" maxlength="" name="signature" autocomplete="off"
                                       placeholder="请输入新的个性签名"
                                       class="layui-input" lay-verify="required|checkPhone" disabled
                                       value="${userInfo.signature}">
                            </div>
                        </div>

                    </div>
                </form>
            </div>
        </div>
    </div>

</div>


<!-- layui 的js -->
<script src="${pageContext.request.contextPath}/layuiadmin/layui/layui.js"></script>
<!-- wangEditor 的js -->
<script src="${pageContext.request.contextPath}/static/js/wangEditor.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>

<script>
  layui.config({
    base: '${pageContext.request.contextPath}/layuiadmin/' //静态资源所在路径
  }).extend({
    index: 'lib/index' //主入口模块
  }).use('index');
  //JavaScript代码区域
  layui.use(['element', 'index', 'table', 'layer', 'laypage'], function () {
    var table = layui.table
      , admin = layui.admin
      , layer = layui.layer
      , form = layui.form
      , laypage = layui.laypage
      , element = layui.element
      , $ = layui.$;
  });


</script>
</body>
</html>
