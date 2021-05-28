<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<div id="head" style="background: #393D49;">--%>
<%--    <div class="layui-container">--%>
<%--        <div class="layui-row" style="display: flex;justify-content: space-between">--%>
<%--            <div class="layui-col-lg3">--%>
<%--                <ul class="layui-nav" lay-filter="" style="margin:40px  auto; text-align: center">--%>
<%--                    <div class="logo">--%>
<%--                        <img src="http://localhost:8888/logo.png" width="245px" height="22.5px">--%>
<%--                    </div>--%>
<%--                </ul>--%>
<%--            </div>--%>
<%--            <div class="layui-col-lg6">--%>
<%--                <ul class="layui-nav" lay-filter=""--%>
<%--                    style="margin:30px  auto; text-align: center;">--%>

<%--                    <li class="layui-nav-item">--%>
<%--                        <a href="./index.html">--%>
<%--                            <h3>首页</h3>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <!--                        <li class="layui-nav-item layui-this"><a href="">景点</a></li>-->--%>
<%--                    <li class="layui-nav-item"><a href="">景点</a></li>--%>
<%--                    <li class="layui-nav-item"><a href="">指南</a></li>--%>
<%--                    <li class="layui-nav-item"><a href="">游记</a></li>--%>
<%--                    <li class="layui-nav-item"><a href="">问答</a></li>--%>
<%--                    <li class="layui-nav-item"><a href="#about-us">关于我们</a></li>--%>
<%--                </ul>--%>
<%--            </div>--%>
<%--            <div class="layui-col-lg2">--%>
<%--                <ul class="layui-nav" lay-filter=""--%>
<%--                    style="margin:30px  auto; text-align: center;width: 400px;">--%>
<%--                    <li class="layui-nav-item">--%>
<%--                        <a href="">登录</a>--%>

<%--                    </li>--%>
<%--                </ul>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>

<%--</div>--%>
<div id="head" style="background: #393D49;">
    <div class="layui-container">
        <div class="layui-row" style="display: flex;justify-content: space-between">
            <div class="layui-col-lg3">
                <ul class="layui-nav" lay-filter="" style="margin:40px  auto; text-align: center">
                    <div class="logo">
                        <img src="http://localhost:8888/logo.png" width="200px" height="30px">
                    </div>
                </ul>
            </div>
            <div class="layui-col-lg6">
                <ul class="layui-nav" lay-filter=""
                    style="margin:30px  auto; text-align: center;">

                    <li class="layui-nav-item">
                        <a href="${pageContext.request.contextPath}/WEB-INF/views/index.jsp">
                            <h3><a href="${pageContext.request.contextPath}/view/index.html">首页</a></h3>
                        </a>
                    </li>
                    <!--                        <li class="layui-nav-item layui-this"><a href="">景点</a></li>-->
                    <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/view/listView">景点</a>
                    </li>
                    <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/guide/listGuide">指南</a></li>
                    <li class="layui-nav-item"><a
                            href="${pageContext.request.contextPath}/travel/listTravelNotes">游记</a></li>
                    <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/question/listQuestion">问答</a>
                    </li>
                    <li class="layui-nav-item"><a href="#about-us">关于我们</a></li>
                </ul>
            </div>
            <div class="layui-col-lg2">
                <ul class="layui-nav" lay-filter=""
                    style="margin:30px  auto; text-align: center;width: 300px;">
                    <li class="layui-nav-item">
                        <c:if test="${user == null}">
                            <a href="${pageContext.request.contextPath}/user/loginView">登录</a>
                        </c:if>
                        <c:if test="${user != null}">
                            <div class="user-info" style="display: flex">
                                <div class="img-wrapper">
                                    <img src="${userInfo.headImage}" alt="" width="40px" height="40px">
                                </div>
                                <div style="color: white;margin-left: 5px;font-size: 14px">${userInfo.nickname}</div>
                                <dl class="layui-nav-child"> <!-- 二级菜单 -->
                                    <dd><a href="${pageContext.request.contextPath}/user/userInfo">个人信息</a></dd>
                                    <dd><a href="${pageContext.request.contextPath}/user/logout">退出登录</a></dd>
                                </dl>
                            </div>
                        </c:if>
                    </li>
                </ul>
            </div>
        </div>
    </div>

</div>