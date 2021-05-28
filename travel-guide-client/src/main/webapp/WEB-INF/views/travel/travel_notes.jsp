<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>${travelNotesVO.title}</title>
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
    <div>
        <img src="${travelNotesVO.mainImage}" alt="" width="100%" height="100%">
    </div>
    <div class="view-body">
        <div class="view-body-banner">
            <div class="view-body-subtitle" style="display: flex">
                <%--               头像--%>
                <div style="width: 100px;height: 130px;cursor: pointer;margin-left: 200px">
                    <div style="width: 100px;height: 100px;cursor: pointer">
                        <img src="${userInfo.headImage}" alt="" height="100%" width="100%" style="border-radius: 50px">
                    </div>
                    <div style="text-align: center">
                        ${userInfo.nickname}
                    </div>
                </div>
                <div style="margin-left:50px;height: 100px;text-align: center;">
                    <div style="font-size: 14px;color: #666666">
                        发表于${travelNotesVO.updateTime}
                    </div>
                    <%--                个性签名--%>

                    <div style="line-height: 100px">
                        个性签名：<span style="color: #666666"> ${userInfo.signature}</span>
                    </div>
                </div>
            </div>
            <div class="view-body-title">
                <h1>${travelNotesVO.title}
                </h1>
            </div>


            <div class="phone-need-time">
                <div class="phone-need-time-left">
                    出发时间<br>
                    <p> ${travelNotesVO.startTime}</p>
                </div>
                <div class="phone-need-time-right">
                    出行天数<br>
                    <p>${travelNotesVO.startDay}</p>
                </div>
            </div>
            <div class="phone-need-time">
                <div class="phone-need-time-left">
                    人物<br>
                    <p> ${travelNotesVO.startNumber}</p>
                </div>
                <div class="phone-need-time-right">
                    人均费用<br>
                    <p>${travelNotesVO.averageCost}</p>
                </div>
            </div>
            <div class="view-body-detail" style="width: 800px;float: left">
                <c:forEach items="${travelNotesVO.travelNotesDetailList}" var="travelNotesDetail">
                    <h1><a name="${travelNotesDetail.title}"></a>${travelNotesDetail.title}</h1>
                    <span>
                            ${travelNotesDetail.detail}
                    </span>
                    <hr>
                </c:forEach>
            </div>
            <div style="position: absolute">
                <div style="width: 250px;position: fixed;top: 300px;right: 100px">
                    <c:forEach items="${travelNotesVO.travelNotesDetailList}" var="travelNotesDetail">
                        <h1 style="font-size: 20px;color: black;line-height: 40px">
                            <a href="#${travelNotesDetail.title}">${travelNotesDetail.title}</a><br>
                        </h1>
                    </c:forEach>
                </div>
            </div>
            <div style="clear: both"></div>
            <div class="comment">
                <h1>旅友评论：</h1><br>
                <c:if test="${travelNotesCommentVOList != null}">
                    <div class="in-border">
                        <c:forEach items="${travelNotesCommentVOList}" var="travelNotesCommentVO">
                            <div class="in-border-item">
                                <div class="in-border-left">
                                    <img src="${travelNotesCommentVO.headImage}" alt="" width="80px" height="80px">
                                    <h1>${travelNotesCommentVO.nickname}</h1>
                                </div>
                                <div class="in-border-right">
                                    <div class="in-border-right-top">
                                        <p>发表于${travelNotesCommentVO.createTime}</p>
                                    </div>
                                    <div class="in-border-right-bottom">
                                        <p>
                                                ${travelNotesCommentVO.comment}<br>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <c:if test="${travelNotesCommentVOList[0] == null || travelNotesCommentVOList[0] == ''}">
                            暂无评论
                        </c:if>

                        <form id="commentFrom">
                            <div id="div1">
                                <p style="display: inline-block">欢迎使用来在
                                        此
                                    留下你的评论</p>
                            </div>
                            <input type="text" style="display:none" id="comment" name="comment" value="">
                            <input type="text" style="display:none" id="userId" name="userId" value="${user.id}">
                            <input type="text" style="display:none" id="viewId" name="viewId" value="${view.id}">
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