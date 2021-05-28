<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<ul class="layui-nav layui-nav-tree" lay-filter="test">
    <li class="layui-nav-item layui-nav-itemed">
        <a class="" href="${pageContext.request.contextPath}/user/userInfo">个人信息</a>
    </li>
    <li class="layui-nav-item">
        <a href="javascript:;">信息管理</a>
        <dl class="layui-nav-child">
            <dd><a href="${pageContext.request.contextPath}/user/updateUserInfoView">修改信息</a></dd>
            <dd><a href="${pageContext.request.contextPath}/user/updateUserView">修改密码</a></dd>
        </dl>
    </li>
    <li class="layui-nav-item">
        <a href="javascript:;">游记管理</a>
        <dl class="layui-nav-child">
            <dd><a href="${pageContext.request.contextPath}/user/travelList?userId=${user.id}">查看游记</a></dd>
            <dd><a href="${pageContext.request.contextPath}/travel/addTravelView?userId=${user.id}">发布游记</a></dd>
        </dl>
    </li>

    <li class="layui-nav-item">
        <a href="${pageContext.request.contextPath}/user/questionList?userId=${user.id}">查看问题</a>
    </li>
    <li class="layui-nav-item">
        <a href="${pageContext.request.contextPath}/user/commentList?userId=${user.id}">查看评论</a>
    </li>

</ul>