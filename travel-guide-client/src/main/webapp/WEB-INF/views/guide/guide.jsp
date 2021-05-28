<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>${guideDetail.title}</title>
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
<div id="view">

    <!--  网站首页的顶部 -->
    <jsp:include page="../common/head.jsp"/>
    <div class="view-head">
        <img src="http://localhost:8888/view-head.png" alt="" width="100%" height="300px">
    </div>
    <div class="view-body">
        <div class="view-body-banner">

            <div class="view-body-title">
                <h1>
                    ${guideDetail.title}
                </h1>
            </div>
            <hr>
            <div class="view-body-detail">
                <h1>指南</h1>
                <span>
                    ${guideDetail.detail}
            </div>

            <div class="comment">
                <h1>旅友评论：</h1><br>
                <c:if test="${guideCommentVOList != null}">
                    <div class="in-border">
                        <c:forEach items="${guideCommentVOList}" var="guideCommentVO">
                            <div class="in-border-item">
                                <div class="in-border-left">
                                    <img src="${guideCommentVO.headImage}" alt="" width="80px" height="80px">
                                    <h1>${guideCommentVO.nickname}</h1>
                                </div>
                                <div class="in-border-right">
                                    <div class="in-border-right-top">
                                        <p>发表于${guideCommentVO.createTime}</p>
                                    </div>
                                    <div class="in-border-right-bottom">
                                        <p>
                                                ${guideCommentVO.comment}<br>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <c:if test="${guideCommentVOList[0] == null || guideCommentVOList[0] == ''}">
                            暂无评论
                        </c:if>

                        <form id="commentFrom">
                            <div id="div1">
                                <p style="display: inline-block">欢迎使用来在
                                        ${viewVO.title}
                                    留下你的评论</p>
                            </div>
                            <input type="text" style="display:none" id="comment" name="comment" value="">
                            <input type="text" style="display:none" id="userId" name="userId" value="${user.id}">
                            <input type="text" style="display:none" id="viewId" name="viewId" value="${guideVO.id}">
                            <button type="button" onclick="submitFrom()"
                                    class="layui-btn layui-btn-radius layui-btn-primary"
                                    style="display: block;margin:10px auto 0;text-align: center">
                                提交
                            </button>
                        </form>
                    </div>
                </c:if>

            </div>
        </div>
    </div>

</div>
<!--    结尾 -->
<div class="footer-banner">
    <div class="footer-wrapper">
        <div class="footer-wrapper-top">
            <div class="footer-wrapper-top-left">
                <div class="footer-wrapper-top-left-img">
                    <img src="http://localhost:8888/logo.png" alt="" width="100%" height="100%">
                </div>
                <p>中国年轻一代用得更多的旅游网站<br>
                    上亿旅行者共同打造的"旅行神器"<br>
                    60,000 多个全球旅游目的地<br>
                    600,000 个细分目的地新玩法<br>
                    760,000,000 次攻略下载<br>
                    38,000 家旅游产品供应商</p>
            </div>
            <div class="footer-wrapper-top-center">
                <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;关于我们</span>
                <p> 关于天津旅游指南网<br>
                    隐私政策&nbsp;&nbsp;&nbsp;商标声明<br>
                    服务协议&nbsp;&nbsp;&nbsp;联系我们<br>
                    商城平台&nbsp;&nbsp;&nbsp;服务协议<br>
                    网络信息侵权通知指引<br>
                    天津旅游指南网服务监督员<br>
                    网站地图&nbsp;&nbsp;&nbsp;加入天津旅游指南网</p>
            </div>
            <div class="footer-wrapper-top-right">
                <div class="img-wrapper">
                    <img src="http://localhost:8888/fangshi.png" alt="">
                </div>
                <div class="img-wrapper-qq-weixin">
                    <div class="img-qq">
                        <img src="http://localhost:8888/qq.jpg" alt="">
                    </div>
                    <div class="img-weixin">
                        <img src="http://localhost:8888/weixin.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-wrapper-foot">
            <p>版权所有 © 保定学院wxc</p>
        </div>
    </div>
</div>
<!-- layui 的js -->
<script src="${pageContext.request.contextPath}/layuiadmin/layui/layui.js"></script>
<!-- wangEditor 的js -->
<script src="${pageContext.request.contextPath}/static/js/wangEditor.min.js"></script>
<%--<script src="https://cdn.jsdelivr.net/npm/wangeditor@latest/dist/wangEditor.min.js"></script>--%>
<script src="${pageContext.request.contextPath}/static/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
    const E = window.wangEditor;
    const editor = new E('#div1');
    editor.create();

    function submitFrom() {
        $('#comment').attr('value', editor.txt.text());
        var nameVal = $('#userId').val();
        // alert($('#userId').val());
        // alert($('#viewId').val());
        if (nameVal == null || nameVal == '') {
            alert("请先登录，然后在评论！")
            return false;
        }
        var dataForm = '';
        dataForm.comment = $('#comment').val();
        dataForm.userId = $('#userId').val();
        dataForm.viewId = $('#viewId').val();
        console.log(dataForm);
        $.ajax({
            type: "post",// 请求方式
            url: "${pageContext.request.contextPath}/comment/addComment",// 发送请求地址
            // data: JSON.stringify(dataForm),//将对象转化为字符串
            data: $('#commentFrom').serialize(),//将对象转化为字符串
            // 请求成功后的回调函数有两个参数
            success: function (data) {
                console.log(data);
                console.log(dataForm);
                if (data.code == 0) {
                    location.href = '${pageContext.request.contextPath}/view/viewDetail' + data.data;
                }
            }

        });
    }

</script>
</body>


</html>