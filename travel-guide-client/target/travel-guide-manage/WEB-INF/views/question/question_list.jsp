<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: WXC
  Date: 2021/1/27
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>问答列表</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layuiadmin/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layuiadmin/style/admin.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap4/css/bootstrap.css">
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
<div id="view-list">
    <!--  网站首页的顶部 -->
    <jsp:include page="../common/head.jsp"/>
    <!-- 网站的中间体 -->
    <div id="view-list-body">
        <div class="view-list-body-left">
            <div class="view-list-body-left-top">
                <form class="layui-form" action="${pageContext.request.contextPath}/question/QuestionSearch">
                    <div class="search-view">
                        <!--                    required     lay-verify="required"-->
                        <input type="text" name="question"
                               placeholder="请输入将要搜索问答的文章" autocomplete="off" class="layui-input">
                    </div>

                    <div class="search-view-btn">
                        <input type="submit" onclick="searchFrom()" value="搜索"
                               class="layui-btn layui-btn-radius layui-btn-primary"
                        <%--                                class="layui-btn layui-btn-radius layui-btn-primary">搜索--%>
                        </input>
                    </div>
                </form>
            </div>

            <div class="view-list-body-left-bottom" id="viewItem" lay-filter="viewItem">


                <c:forEach items="${questionVOPageInfo.list}" var="questionVO">
                    <div class="view-list-body-left-bottom-item" style="">
                        <div class="view-list-body-left-bottom-item-right"
                             style="width: 550px;margin-left: 20px;border: 1px solid #e6e6e6">

                            <h1>问答 -
                                <a href="${pageContext.request.contextPath}/question/questionDetail?id=${questionVO.id}">${questionVO.question}</a>
                            </h1>
                            <span>天津</span>
                            <span class="layui-icon layui-icon-fire">${questionVO.watchCount}</span>
                            <span class="layui-icon layui-icon-praise">${questionVO.praiseCount}</span>
                        </div>
                    </div>
                </c:forEach>
                <%--                ${travelNotesVOPageInfo.hasPreviousPage}--%>
                <%--               分页--%>
                <nav>
                    <ul class="pagination">

                        <c:if test="${questionVOPageInfo.hasPreviousPage}">
                            <li class="page-item">
                                <a class="page-link"
                                   href="${pageContext.request.contextPath}/question/listQuestion?pageNum=${questionVOPageInfo.prePage}&pageSize=5"
                                   tabindex="-1" aria-disabled="true">上一页</a>
                            </li>
                        </c:if>

                        <c:if test="${!questionVOPageInfo.hasPreviousPage}">
                            <li class="page-item disabled">
                                <a class="page-link" href="javascript:;" tabindex="-1" aria-disabled="true">上一页</a>
                            </li>
                        </c:if>
                        <c:forEach items="${questionVOPageInfo.navigatepageNums}" var="num">
                            <c:if test="${num == questionVOPageInfo.pageNum}">
                                <li class="page-item active"><a class="page-link" href="javascript:;">${num}</a></li>
                            </c:if>
                            <c:if test="${!(num == questionVOPageInfo.pageNum)}">
                                <li class="page-item"><a class="page-link"
                                                         href="${pageContext.request.contextPath}/question/listQuestion?pageNum=${num}&pageSize=5">${num}</a>
                                </li>
                            </c:if>
                        </c:forEach>

                        <c:if test="${questionVOPageInfo.hasNextPage}">
                            <li class="page-item">
                                <a class="page-link"
                                   href="${pageContext.request.contextPath}/question/listQuestion?pageNum=${questionVOPageInfo.nextPage}&pageSize=5">下一页</a>
                            </li>
                        </c:if>
                        <c:if test="${!questionVOPageInfo.hasNextPage}">
                            <li class="page-item disabled">
                                <a class="page-link" href="javascript:;">下一页</a>
                            </li>
                        </c:if>
                    </ul>
                </nav>
            </div>
        </div>
        <%--      右侧排行榜 --%>
        <jsp:include page="right.jsp"/>
    </div>
    <!--    结尾 -->
    <jsp:include page="../common/footer.jsp"/>
</div>
<!-- layui 的js -->
<script src="./layuiadmin/layui/layui.js"></script>
<!-- wangEditor 的js -->
<script src="$./static/js/wangEditor.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap4/js/bootstrap.bundle.js"></script>
<%-- 在bootstrapjs之前引入jQuery --%>
<script src="${pageContext.request.contextPath}/bootstrap4/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/static/js/jquery-3.4.1.min.js"></script>
<script>

    function searchFrom() {

    }

    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    layui.use(['element', 'laypage', 'form', 'layui'], function () {
        var element = layui.element;
        var laypage = layui.laypage;
        var form = layui.form;
        var $ = layui.$;
        //执行一个laypage实例
        laypage.render({
            elem: 'view-item' //注意，这里的 test1 是 ID，不用加 # 号
            , count: 50 //数据总数，从服务端得到
        });
        // 监听搜索
        form.on('submit(searchSubmit)', function (data) {
            layer.msg(JSON.stringify(data.field));
        });

    });

    function addQuestion() {
        console.log("欢迎来到提问题环节")
        var nameVal = $('#userId').val();
        if (nameVal == null || nameVal == '') {
            alert("请先登录，然后进行提问！")
            return false;
        }
        var dataForm = '';
        dataForm.userId = $('#userId').val();
        dataForm.viewId = $('#question').val();
        console.log(dataForm);
        $.ajax({
            type: "post",// 请求方式
            url: "${pageContext.request.contextPath}/question/addQuestion",// 发送请求地址
            // data: JSON.stringify(dataForm),//将对象转化为字符串
            data: $('#addQuestion').serialize(),//将对象转化为字符串
            // 请求成功后的回调函数有两个参数
            success: function (data) {
                console.log(data);
                console.log(dataForm);
                if (data.code == 0) {
                    <%--location.href = '${pageContext.request.contextPath}/view/viewDetail' + data.data;--%>
                    location.href = '${pageContext.request.contextPath}/question/listQuestion';
                }
            }

        });
    }
</script>
</body>
</html>