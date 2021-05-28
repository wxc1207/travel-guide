<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>首页</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layuiadmin/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layuiadmin/style/admin.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index.css"/>

    <style>
        #head .layui-container {
            margin-left: 200px;
        }

        #head .layui-container .layui-row {
            height: 100px;

        }

        .layui-nav * {
            font-size: 18px;
        }
    </style>
</head>
<body>

<div id="app">
    <!--  网站首页的顶部 -->
    <jsp:include page="common/head.jsp"/>


    <!-- 轮播图 -->
    <div class="wrapper-banner">
        <div class="wrapper-wrapper">
            <div class="layui-carousel" id="wrapper-banner-item">
                <div carousel-item style="cursor: pointer;">
                    <img src="http://localhost:8888/img1.png" alt="">
                    <a href="${pageContext.request.contextPath}/view/viewDetail?id=1">
                        <img src="http://localhost:8888/img2.png">
                    </a>
                    <a href="${pageContext.request.contextPath}/view/viewDetail?id=1">
                        <img src="http://localhost:8888/img4.jpeg" width="100%" height="100%">
                    </a>
                    <a href="${pageContext.request.contextPath}/view/viewDetail?id=1">
                        <img src="http://localhost:8888/img5.jpeg" width="100%" height="100%">
                    </a>
                </div>
            </div>
        </div>
    </div>
    <%--    ${kList}--%>
    <!--  景点推荐 -->
    <div class="view-banner" style="margin-top:50px">
        <div class="view-wrapper">
            <div class="view-wrapper-head">
                <div class="view-wrapper-head-left">
                    <h1>景点推荐 </h1>
                    <p>/Attractions</p>

                </div>
                <div class="view-wrapper-head-right">
                    <h1>MORE</h1>
                </div>
            </div>
            <div class="view-wrapper-body">
                <div class="layui-tab">
                    <ul class="layui-tab-title">
                        <li class="layui-this" onclick="clickOne()">津门十景</li>
                        <li onclick="clickTwo()">跨河大桥</li>
                        <li onclick="clickThree()">地标建筑</li>
                        <li onclick="clickFour()">特色博物馆</li>
                        <li onclick="clickFive()">名人故居</li>
                        <li onclick="clickSix()">亲子游</li>
                        <li onclick="clickEvent()">文艺创意园</li>
                    </ul>
                    <div class="layui-tab-content" style="border: 1px solid #666666">
                        <div class="layui-tab-item layui-show view-wrapper-body-content-one">
                            <!-- 内容1 -->
                            <div class="view-card-wrapper">

                                <div class="view-card-wrapper">
                                    <c:forEach items="${jList}" var="jView">
                                        <div class="view-card-wrapper-item">
                                            <div class="view-card-wrapper-item-img">
                                                <img src="${jView.mainImage}" alt="">
                                            </div>
                                            <div class="view-name">
                                                <a href="${pageContext.request.contextPath}/view/viewDetail?id=${jView.id}">${jView.name}</a>
                                            </div>
                                            <p class="view-icon">
                                                <span class="layui-icon layui-icon-fire">${jView.watchCount}</span>
                                                <span class="layui-icon layui-icon-praise">${jView.praiseCount}</span>
                                            </p>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                        <div class="layui-tab-item view-wrapper-body-content-two">
                            <!-- 内容2 -->
                            <div class="view-card-wrapper">
                                <c:forEach items="${kList}" var="kView">
                                    <div class="view-card-wrapper-item">
                                        <div class="view-card-wrapper-item-img">
                                            <img src="${kView.mainImage}" alt="">
                                        </div>
                                        <div class="view-name">
                                            <a href="${pageContext.request.contextPath}/view/viewDetail?id=${kView.id}">${kView.name}</a>
                                        </div>
                                        <p class="view-icon">
                                            <span class="layui-icon layui-icon-fire">${kView.watchCount}</span>
                                            <span class="layui-icon layui-icon-praise">${kView.praiseCount}</span>
                                        </p>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                        <div class="layui-tab-item view-wrapper-body-content-three">
                            <!-- 内容3 -->
                            <div class="view-card-wrapper">

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼3
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>


                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>


                            </div>
                        </div>
                        <div class="layui-tab-item view-wrapper-body-content-four">
                            <!-- 内容4 -->
                            <div class="view-card-wrapper">

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼4
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>


                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>


                            </div>
                        </div>
                        <div class="layui-tab-item view-wrapper-body-content-five">
                            <!-- 内容5 -->
                            <div class="view-card-wrapper">

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼5
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>


                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>


                            </div>
                        </div>
                        <div class="layui-tab-item view-wrapper-body-content-six">
                            <!-- 内容6 -->
                            <div class="view-card-wrapper">

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼6
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>


                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>


                            </div>
                        </div>
                        <div class="layui-tab-item view-wrapper-body-content-event">
                            <!-- 内容7 -->
                            <div class="view-card-wrapper">

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼7
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>


                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>

                                <div class="view-card-wrapper-item">
                                    <div class="view-card-wrapper-item-img">
                                        <img src="img/111.jpeg" alt="">
                                    </div>
                                    <div class="view-name">
                                        天津之眼
                                    </div>
                                    <p class="view-icon">
                                        <span class="layui-icon layui-icon-fire">3125</span>
                                        <span class="layui-icon layui-icon-praise">123</span>
                                    </p>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- 优质服务 -->
    <div class="service-banner">
        <div class="service-wrapper">
            <div class="service-wrapper-head">
                <div class="service-wrapper-head-left">
                    <h1>优质服务 </h1>
                    <p>/SERVICE</p>
                </div>
                <div class="service-wrapper-head-right">
                    <h1>MORE</h1>
                </div>
            </div>

            <div class="service-wrapper-body">
                <div class="service-wrapper-body-img-wrapper">
                    <div class="service-wrapper-body-img-wrapper-item">
                        <!--                        1-->
                        <div class="service-wrapper-body-img-wrapper-one">
                            <div class="one-icon">
                                <img src="http://localhost:8888/icon1.png" alt="">
                            </div>
                            <div class="one-title">
                                <h1>指南</h1>
                            </div>
                            <div class="one-info">
                                从旅游出行前的准备、旅行途中的技巧、旅行安全常识、旅游维权等多个方面介绍了到天津旅游的相关知识...
                            </div>
                            <div class="one-more">
                                <h1>
                                    <a href="${pageContext.request.contextPath}/guide/listGuide">MORE</a>
                                </h1>
                            </div>
                        </div>
                        <!--                        2-->
                        <div class="service-wrapper-body-img-wrapper-two">
                            <div class="one-icon">
                                <img src="http://localhost:8888/icon2.png" alt="">
                            </div>
                            <div class="one-title">
                                <h1>游记</h1>
                            </div>
                            <div class="one-info">
                                记录到天津旅游的美景和心情，大家从不同的角度记录了各种美景，快来看看天津驴友们的游记吧...
                            </div>
                            <div class="one-more">
                                <h1>
                                    <a href="${pageContext.request.contextPath}/travel/listTravelNotes">MORE</a>
                                </h1>
                            </div>
                        </div>
                        <!--                        3-->
                        <div class="service-wrapper-body-img-wrapper-three">
                            <div class="one-icon">
                                <img src="http://localhost:8888/icon3.png" alt="">
                            </div>
                            <div class="one-title">
                                <h1>问答</h1>
                            </div>
                            <div class="one-info">
                                在这里您可以根据自身需求提出问题,回答、关注感兴趣的问题和话题,分享知识和经历,并与旅友讨论和交流...
                            </div>
                            <div class="one-more">
                                <h1>
                                    <a>MORE</a>
                                </h1>
                            </div>
                        </div>
                        <div class="service-wrapper-body-img-wrapper-four">
                            <div class="one-icon">
                                <img src="http://localhost:8888/icon4.png" alt="">
                            </div>
                            <div class="one-title">
                                <h1>更多</h1>
                            </div>
                            <div class="one-info">
                                更多的功能正在开发，请你关注天津旅游指南网站的后续更新，感谢各位旅友们的支持，我们会做的更好...
                            </div>
                            <div class="one-more">
                                <h1>
                                    <a href="${pageContext.request.contextPath}/travel/listTravelNotes">MORE</a>
                                </h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--    内容精选 -->
    <div class="content-banner">
        <div class="content-wrapper">
            <div class="content-wrapper-head">
                <div class="content-wrapper-head-left">
                    <h1>内容精选 </h1>
                    <p>/CHOICENESS</p>
                </div>
                <div class="content-wrapper-head-right">
                    <h1>MORE</h1>
                </div>
            </div>
            <div class="content-wrapper-body">
                <div class="content-wrapper-body-item">
                    <div class="content-wrapper-body-item-left">
                        <img src="http://localhost:8888/a970be49-b29e-4557-923c-79c8598ef330.jpg" alt="" width="100%"
                             height="100%">
                    </div>
                    <div class="content-wrapper-body-item-right">
                        <h1>海河</h1>
                        <p>起自天津金钢桥，到大沽口入渤海湾，贯穿天津市区，是天津的“母亲河”。</p>
                    </div>
                </div>
                <div class="content-wrapper-body-item">
                    <div class="content-wrapper-body-item-left">
                        <img src="http://localhost:8888/850a67cf-0e3d-4d27-8bc1-7c2ff58513b9.jpg" alt="" width="100%"
                             height="100%">
                    </div>
                    <div class="content-wrapper-body-item-right">
                        <h1>独乐寺</h1>
                        <p>
                            独乐寺，又称大佛寺，位于中国天津市蓟州区，是中国仅存的三大辽代寺院之一，也是中国现存著名的古代建筑之一。独乐寺虽为千年名刹，而寺史则殊渺茫，其缘始无可考，寺庙历史最早可追至贞观十年。</p>
                    </div>
                </div>


                <div class="content-wrapper-body-item">
                    <div class="content-wrapper-body-item-right">
                        <h1>天塔</h1>
                        <p>津门十景之一，景名“天塔旋云”。集旅游观光、餐饮娱乐和广播电视发射多功能于一体。</p>
                    </div>
                    <div class="content-wrapper-body-item-left">
                        <img src="http://localhost:8888/b1e6ff6f-8424-4d67-917b-63e81bf15c50.jpg" alt="" height="100%"
                             width="100%">
                    </div>

                </div>


                <div class="content-wrapper-body-item">
                    <div class="content-wrapper-body-item-right">
                        <h1>空灵阿尔卑斯修身养性</h1>
                        <p>月色，雪色，你是人间第三种绝色/富有变化的地形及超高透明度的海水令潜水族们身手修养身心。
                            可以给我这样笨笨的人灵感和活力...</p>
                    </div>
                    <div class="content-wrapper-body-item-left">
                        <img src="http://localhost:8888/201909191401189.png" alt="">
                    </div>

                </div>
            </div>
        </div>
    </div>

    <!--    关于我们 -->
    <div class="about-banner">
        <a href="" name="about-us"></a>
        <div class="about-wrapper">
            <div class="about-wrapper-left">
                <%--                        <img src="http:localhost:8888/about-us.png" alt="">--%>
            </div>
            <div class="about-wrapper-right">
                <div class="about-wrapper-right-head">
                    <h1>关于我们</h1>
                    <p>/ABOUT</p>
                </div>
                <div class="about-wrapper-right-body">
                    <p>
                        充满动感的健身中心是放松身心的首选之处，到静谧的水疗中心享受一次专业的按摩，令您神采焕发；舒适宜人的大堂吧和彰显不凡的行政酒廊更是您品茗啜饮，商务会友的惬意空间，注重客人居住体验的所有细节，满足用餐和住宿需求，承接企事业单位的高层会议，为需要安静的艺术创作者提供闭关思考的空间
                        ...</p>
                    <p style="margin-top: 20px">
                        我好像明白了为什么我并没有真的被绑住，却觉得不自由。现在，我会在夏日的周末，去尝试各种好玩的酒酿吃法，吃的快乐，也是成长的印记。这里分享两种我最喜欢的酒酿吃法。</p>
                </div>
            </div>
        </div>
    </div>
    <!--    结尾 -->
    <jsp:include page="common/footer.jsp"/>
</div>


<!-- layui 的js -->
<script src="${pageContext.request.contextPath}/layuiadmin/layui/layui.js"></script>
<!-- wangEditor 的js -->
<script src="${pageContext.request.contextPath}/static/js/wangEditor.min.js"></script>

<script>
    function clickOne() {
        $(".view-wrapper-body-content-one").addClass("layui-show");
        $(".view-wrapper-body-content-two").removeClass("layui-show");
        $(".view-wrapper-body-content-three").removeClass("layui-show");
        $(".view-wrapper-body-content-four").removeClass("layui-show");
        $(".view-wrapper-body-content-five").removeClass("layui-show");
        $(".view-wrapper-body-content-six").removeClass("layui-show");
        $(".view-wrapper-body-content-event").removeClass("layui-show");
    }

    function clickTwo() {
        $(".view-wrapper-body-content-one").removeClass("layui-show");
        $(".view-wrapper-body-content-two").addClass("layui-show");
        $(".view-wrapper-body-content-three").removeClass("layui-show");
        $(".view-wrapper-body-content-four").removeClass("layui-show");
        $(".view-wrapper-body-content-five").removeClass("layui-show");
        $(".view-wrapper-body-content-six").removeClass("layui-show");
        $(".view-wrapper-body-content-event").removeClass("layui-show");
    }

    function clickThree() {
        $(".view-wrapper-body-content-one").removeClass("layui-show");
        $(".view-wrapper-body-content-two").removeClass("layui-show");
        $(".view-wrapper-body-content-three").addClass("layui-show");
        $(".view-wrapper-body-content-four").removeClass("layui-show");
        $(".view-wrapper-body-content-five").removeClass("layui-show");
        $(".view-wrapper-body-content-six").removeClass("layui-show");
        $(".view-wrapper-body-content-event").removeClass("layui-show");
    }

    function clickFour() {
        $(".view-wrapper-body-content-one").removeClass("layui-show");
        $(".view-wrapper-body-content-two").removeClass("layui-show");
        $(".view-wrapper-body-content-three").removeClass("layui-show");
        $(".view-wrapper-body-content-four").addClass("layui-show");
        $(".view-wrapper-body-content-five").removeClass("layui-show");
        $(".view-wrapper-body-content-six").removeClass("layui-show");
        $(".view-wrapper-body-content-event").removeClass("layui-show");
    }

    function clickFive() {
        $(".view-wrapper-body-content-one").removeClass("layui-show");
        $(".view-wrapper-body-content-two").removeClass("layui-show");
        $(".view-wrapper-body-content-three").removeClass("layui-show");
        $(".view-wrapper-body-content-four").removeClass("layui-show");
        $(".view-wrapper-body-content-five").addClass("layui-show");
        $(".view-wrapper-body-content-six").removeClass("layui-show");
        $(".view-wrapper-body-content-event").removeClass("layui-show");
    }

    function clickSix() {
        $(".view-wrapper-body-content-one").removeClass("layui-show");
        $(".view-wrapper-body-content-three").removeClass("layui-show");
        $(".view-wrapper-body-content-two").removeClass("layui-show");
        $(".view-wrapper-body-content-four").removeClass("layui-show");
        $(".view-wrapper-body-content-five").removeClass("layui-show");
        $(".view-wrapper-body-content-six").addClass("layui-show");
        $(".view-wrapper-body-content-event").removeClass("layui-show");
    }

    function clickEvent() {
        $(".view-wrapper-body-content-one").removeClass("layui-show");
        $(".view-wrapper-body-content-two").removeClass("layui-show");
        $(".view-wrapper-body-content-three").removeClass("layui-show");
        $(".view-wrapper-body-content-four").removeClass("layui-show");
        $(".view-wrapper-body-content-five").removeClass("layui-show");
        $(".view-wrapper-body-content-six").removeClass("layui-show");
        $(".view-wrapper-body-content-event").addClass("layui-show");
    }

    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    layui.use(['element', 'carousel'], function () {
        var element = layui.element;
        var carousel = layui.carousel;
        //建造实例
        carousel.render({
            elem: '#wrapper-banner-item'
            , width: '100%' //设置容器宽度
            , height: '600px'
            , anim: 'fade'
        });
    });


</script>
</body>
</html>