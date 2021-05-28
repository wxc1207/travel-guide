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
    <title>修改个人信息</title>
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
                <dl class="layui-nav-child">
                    <dd>
                        <a href="http://localhost:8081/travel_guide_client_war/view/index.html">基本资料</a>
                    </dd>
                    <dd>
                        <a href="http://localhost:8081/travel_guide_client_war/view/listView">安全设置</a>
                    </dd>
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

            <div class="layui-card-body" style="padding: 15px;">
                <form class="layui-form"
                <%--                      action="${pageContext.request.contextPath}/user/updateUserInfo" method="post"--%>
                      lay-filter="component-form-group">
                    <%-- 修改页隐藏的id --%>
                    <input type="hidden" name="id" value="${userInfo.id}">
                    <div class="layui-form-item">

                        <div class="layui-form-item">
                            <label class="layui-form-label">用户</label>
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
                                <button type="button" class="layui-btn" id="headImage">
                                    <i class="layui-icon">&#xe67c;</i>上传头像
                                </button>
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
                                       placeholder="请输入新的昵称"
                                       class="layui-input" value="${userInfo.nickname}"
                                       style="width: 200px">
                            </div>
                        </div>

                        <div class=" layui-form-item">
                            <label class="layui-form-label">手机号</label>
                            <div class="layui-input-block">
                                <input type="text" maxlength="" name="phone" autocomplete="off"
                                       placeholder="请输入新的手机号"
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
                                       class="layui-input" lay-verify="required|checkEmail"
                                       value="${userInfo.email}"
                                       style="width: 200px">
                            </div>
                        </div>

                        <div class=" layui-form-item">
                            <label class="layui-form-label">个性签名</label>
                            <div class="layui-input-block">
                                <input type="text" maxlength="" name="signature" autocomplete="off"
                                       placeholder="请输入新的个性签名"
                                       class="layui-input" lay-verify="required"
                                       value="${userInfo.signature}"
                                >
                            </div>
                        </div>


                        <div class="layui-form-item layui-layout-admin">
                            <div class="layui-input-block">
                                <div class="layui-footer" style="left: 0;">
                                    <%-- button 时刻都要写type，在不同浏览器下，会有不同的默认值 --%>
                                    <button type="button" class="layui-btn"
                                            lay-submit="" lay-filter="userInfo-submit"
                                    >
                                        修改信息
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © layui.com - 底部固定区域
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

    form.verify({
      checkEmail: [
        /^[a-zA-Z0-9]+([-_.][a-zA-Z0-9]+)*@[a-zA-Z0-9]+([-_.][a-zA-Z0-9]+)*\.[a-z]{2,}$/,
        '邮箱有误，请输入正确的邮箱'
      ],
      checkPhone: [
        /^1(?:3\d|4[4-9]|5[0-35-9]|6[67]|7[013-8]|8\d|9\d)\d{8}$/,
        '手机号有误，请输入正确的手机号'
      ]
    });
    var headImagePath = '';
    var headIs;

    upload.render({
      elem: '#headImage',
      url: '${pageContext.request.contextPath}/file/upload',
      before: function (obj) {
        //预读本地文件示例，不支持ie8
        //index 是一串数字
        //file 对象：包括上传时间、名字、大小、类型
        //result base64加密的地址格式
        obj.preview(function (index, file, result) {
          $('#headImagePreview').attr('src', result); //图片链接（base64）
        });
      },
      //成功时会调用
      done: function (res) {
        //返回的状态码为0，代表成功
        if (res.code == 0) {
          headImagePath = res.data[0];
          headIs = true;
        } else {
          layer.msg(res.msg);
        }
      },
      error: function () {

      }
    });

    /* 监听提交 */
    form.on('submit(userInfo-submit)', function (data) {
      // console.log(data);

      //todo 头像上传问题
      // if (!headIs) {
      //     layer.msg('头像为必填项');
      //     return;
      // }

      var userInfoData = data.field;
      console.log(headImagePath + " main")
      userInfoData.headImage = headImagePath;

      //拿到完整的信息,将其提交到后台即可
      $.ajax({
        url: '${pageContext.request.contextPath}/user/updateUserInfo',
        type: 'post',
        contentType: 'application/json',//发送json格式的数据
        data: JSON.stringify(userInfoData),//将对象转化为字符串
        // processData: false,//不设置的话他也不报错，因为我这不是对象，而是字符串
        success: function (res) {
          console.log(res);
          var url = '${pageContext.request.contextPath}/user/userInfo';
          location.href = url;
        }
      });
    });
  });
</script>
</body>
</html>
