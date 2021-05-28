<%--
  Created by IntelliJ IDEA.
  User: WXC
  Date: 2021/3/18
  Time: 18:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>发布游记</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layuiadmin/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layuiadmin/style/admin.css" media="all">
</head>
<body>

<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">layui 后台布局</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/view/index.html">首页</a></li>
            <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/view/listView">景点</a></li>
            <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/guide/listGuide">指南</a></li>
            <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/travel/listTravelNotes">游记</a></li>
            <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/question/listQuestion">问答</a></li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="${userInfo.headImage}" class="layui-nav-img">
                    ${userInfo.nickname}
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="http://localhost:8081/travel_guide_client_war/view/index.html">基本资料</a></dd>
                    <dd><a href="http://localhost:8081/travel_guide_client_war/view/listView">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="">退了</a></li>
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
            <div class="layui-fluid">
                <div class="layui-row layui-col-space15">
                    <div class="layui-col-md12">
                        <div class="layui-card">
                            <div class="layui-card-body">
                                <table class="layui-hide" id="question-list" lay-filter="question-list"></table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/layuiadmin/layui/layui.js"></script>
<script>
    layui.config({
        base: '${pageContext.request.contextPath}/layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'table', 'layer', 'laypage'], function () {
        var table = layui.table
            , admin = layui.admin
            , layer = layui.layer
            , form = layui.form
            , laypage = layui.laypage
            , $ = layui.$;


        table.render({
            id: 'questionList',
            elem: '#question-list',
            toolbar: 'default',
            url: '${pageContext.request.contextPath}/travel/listTravelByUserId?userId=${userId}',
            count: 3,
            width: '100%',
            request: {
                pageName: 'pageNum' //页码的参数名称，默认：page
                , limitName: 'pageSize' //每页数据量的参数名，默认：limit
            },
            page: true,
            cols: [[
                {type: 'checkbox'},
                {field: 'title', title: '问题', width: 300},
                {field: 'startTime', title: '出行日期', width: 100},
                {field: 'startDay', title: '出行天数', width: 100},
                {field: 'startNumber', title: '出行天数', width: 100},
                {field: 'averageCost', title: '人均消费', width: 100},
                {field: 'watchCount', title: '浏览量', width: 100},
                {field: 'praiseCount', title: '点赞量', width: 100},
                {field: 'createTime', title: '创建日期', width: 200},
                {field: 'updateTime', title: '更新时间', width: 200},
            ]]
        });

        table.on('toolbar(question-list)', function (obj) {
            //获取选中的行
            var checkStatus = table.checkStatus('questionList');
            var data = checkStatus.data;
            console.log(data);
            if (obj.event == 'add') {
                <%--location.href = '${pageContext.request.contextPath}/user/userAddView';--%>
                layer.open({
                    title: '提示',
                    content: '用户仅能查看和删除不合法的游记'
                });
                return;
            }
            if (obj.event == 'update') {
                layer.open({
                    title: '提示',
                    content: '用户仅能查看和删除不合法的游记'
                });
                return;
            }
            if (obj.event == 'delete') {

                // console.log(checkStatus);

                //未选中
                if (data.length == 0) {
                    layer.open({
                        title: '提示',
                        content: '请选择数据后进行操作'
                    });
                    return;
                }

                if (data.length > 1) {
                    layer.open({
                        title: '提示',
                        content: '请选择一条后进行删除'
                    });
                    return;
                }
                layer.confirm('确定要删除吗？', {
                    btn: ['确定', '取消'] //按钮
                }, function () {
                    console.log('删除时的data' + checkStatus.data[0].id);
                    //选中时
                    //发送请求到后台进行删除
                    //发送ajax请求
                    layui.$.ajax({
                        type: 'get',
                        url: '${pageContext.request.contextPath}/travel/deleteTravel?id=' + data[0].id,
                        success: function (res) {
                            form.render();
                            if (res.code == 0) {
                                layer.msg('删除成功', {icon: 1});
                                table.reload('questionList');
                            } else {
                                layer.msg(res.msg, {icon: 2});
                            }
                        }
                    });
                }, function () {
                    layer.msg('已取消', {
                        time: 1000, //20s后自动关闭
                    });
                });

            }

        });
    });

</script>
</body>
</html>
