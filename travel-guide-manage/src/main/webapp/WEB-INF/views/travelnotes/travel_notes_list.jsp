<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>景点列表</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layuiadmin/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layuiadmin/style/admin.css" media="all">
</head>
<body>

<div class="layui-card layadmin-header">
    <div class="layui-breadcrumb" lay-filter="breadcrumb">
        <a lay-href="">主页</a>
        <a><cite>组件</cite></a>
        <a><cite>数据表格</cite></a>
        <a><cite>数据操作</cite></a>
    </div>
</div>

<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body">
                    <div class="layui-btn-group test-table-operate-btn" style="margin-bottom: 10px;">
                        <button class="layui-btn" data-type="getCheckData">获取选中行数据</button>
                        <button class="layui-btn" data-type="getCheckLength">获取选中数目</button>
                        <button class="layui-btn" data-type="isAll">验证是否全选</button>
                    </div>

                    <table class="layui-hide" id="travel-notes-list" lay-filter="travel-notes-list"></table>
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
            id: 'travelNotesList',
            elem: '#travel-notes-list',
            toolbar: 'default',
            url: '${pageContext.request.contextPath}/travelNotes/listTravelNotes',
            count: 3,
            width: '100%',
            request: {
                pageName: 'pageNum' //页码的参数名称，默认：page
                , limitName: 'pageSize' //每页数据量的参数名，默认：limit
            },
            page: true,
            cols: [[
                {type: 'checkbox'},
                {field: 'nickname', title: '昵称', width: 100},
                {field: 'title', title: '标题', width: 300},
                {field: 'startTime', title: '出发时间', width: 150},
                {field: 'startDay', title: '出行天数', width: 100},
                {field: 'startNumber', title: '人物', width: 150},
                {field: 'averageCost', title: '人均费用', width: 100},
                {field: 'watchCount', title: '浏览量', width: 80},
                {field: 'praiseCount', title: '点赞量', width: 80},
                {field: 'updateTime', title: '更新时间', width: 200},
            ]]
        });

        table.on('toolbar(travel-notes-list)', function (obj) {
            //获取选中的行
            var checkStatus = table.checkStatus('travelNotesList');
            var data = checkStatus.data;
            if (obj.event == 'add') {
                <%--location.href = '${pageContext.request.contextPath}/user/userAddView';--%>
                layer.open({
                    title: '提示',
                    content: '管理员仅能查看和删除不合法的用户'
                });
                return;
            }
            if (obj.event == 'update') {
                layer.open({
                    title: '提示',
                    content: '管理员仅能查看和删除不合法的用户'
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
                    console.log(data);
                    //选中时
                    //发送请求到后台进行删除
                    //发送ajax请求
                    layui.$.ajax({
                        type: 'get',
                        <%--url: '${pageContext.request.contextPath}/travelNotes/deleteTravelNotesById?id=' + data[0].id,--%>
                        success: function (res) {
                            if (res.code == 0) {
                                layer.msg('删除成功', {icon: 1});
                                table.reload('travelNotesList');
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
