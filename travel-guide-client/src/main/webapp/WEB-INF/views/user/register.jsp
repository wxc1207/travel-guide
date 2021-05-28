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
    <title>注册用户</title>
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
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">

            <div class="layui-card-body" style="padding: 15px;">
                <form class="layui-form"
                <%--                      action="${pageContext.request.contextPath}/user/updateUser" method="post"--%>
                      lay-filter="component-form-group">
                    <%-- 修改页隐藏的id --%>

                    <div class="layui-form-item">

                        <div class="layui-form-item">
                            <label class="layui-form-label">账号</label>
                            <div class="layui-input-block">
                                <input type="text" autocomplete="off" name="username"
                                       class="layui-input" lay-verify="required"

                                       style="width: 200px">
                            </div>
                        </div>


                        <div class="layui-form-item">
                            <label class="layui-form-label">密码</label>
                            <div class="layui-input-block">
                                <input type="password" autocomplete="off" name="password"
                                       class="layui-input" lay-verify="required|password"

                                       style="width: 200px">
                            </div>
                        </div>

                        <div class="layui-form-item">
                            <label class="layui-form-label">昵称</label>
                            <div class="layui-input-block">
                                <input type="text" autocomplete="off" name="nickname"
                                       class="layui-input" lay-verify="required"
                                       style="width: 200px">
                            </div>
                        </div>

                        <div class="layui-form-item">
                            <label class="layui-form-label">手机号</label>
                            <div class="layui-input-block">
                                <input type="text" autocomplete="off" name="phone"
                                       class="layui-input" lay-verify="required"
                                       style="width: 200px">
                            </div>
                        </div>

                        <div class="layui-form-item">
                            <label class="layui-form-label">邮箱</label>
                            <div class="layui-input-block">
                                <input type="text" autocomplete="off" name="email"
                                       class="layui-input" lay-verify="required"
                                       style="width: 200px">
                            </div>
                        </div>
                        <div class="layui-form-item">
                            <label class="layui-form-label">签名</label>
                            <div class="layui-input-block">
                                <input type="text" autocomplete="off" name="signature"
                                       class="layui-input" lay-verify="required"
                                       style="width: 200px">
                            </div>
                        </div>

                        <div class="layui-form-item layui-layout-admin">
                            <div class="layui-input-block">
                                <div class="layui-footer" style="left: 0;">
                                    <%-- button 时刻都要写type，在不同浏览器下，会有不同的默认值 --%>
                                    <button type="button" class="layui-btn"
                                            lay-submit="" lay-filter="user-submit">
                                        立即注册
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

<script src="${pageContext.request.contextPath}/static/js/jquery-3.4.1.min.js"></script>
<!-- layui 的js -->
<script src="${pageContext.request.contextPath}/layuiadmin/layui/layui.js"></script>
<!-- wangEditor 的js -->
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
      ],

      password: function (value, item) { //value：表单的值、item：表单的DOM对象
        pawdFlag = value;
        if (!new RegExp("^[a-zA-Z0-9_\u4e00-\u9fa5\\s·]+$").test(value)) {
          return '密码不能有特殊字符';
        }
        if (/(^\_)|(\__)|(\_+$)/.test(value)) {
          return '密码首尾不能出现下划线\'_\'';
        }
        if (/^\d+\d+\d$/.test(value)) {
          return '密码不能全为数字';
        }
        console.log('1---' + value);
      },
      repassword: function (value, item) { //value：表单的值、item：表单的DOM对象
        console.log('2---' + value);
        if (pawdFlag != value) {
          return '两次密码不一致';
        }
      }

    });
    // var headImagePath = '';
    // var mainIs;

    <%--upload.render({--%>
    <%--    elem: '#headImage',--%>
    <%--    url: '${pageContext.request.contextPath}/file/upload',--%>
    <%--    before: function (obj) {--%>
    <%--        //预读本地文件示例，不支持ie8--%>
    <%--        //index 是一串数字--%>
    <%--        //file 对象：包括上传时间、名字、大小、类型--%>
    <%--        //result base64加密的地址格式--%>
    <%--        obj.preview(function (index, file, result) {--%>
    <%--            $('#headImagePreview').attr('src', result); //图片链接（base64）--%>
    <%--        });--%>
    <%--    },--%>
    <%--    //成功时会调用--%>
    <%--    done: function (res) {--%>
    <%--        //返回的状态码为0，代表成功--%>
    <%--        if (res.code == 0) {--%>
    <%--            headImagePath = res.data[0];--%>
    <%--            mainIs = true;--%>
    <%--        } else {--%>
    <%--            layer.msg(res.msg);--%>
    <%--        }--%>
    <%--    },--%>
    <%--    error: function () {--%>

    <%--    }--%>
    <%--});--%>


    /* 监听提交 */
    form.on('submit(user-submit)', function (data) {
      // console.log(data);
      // if (!mainIs) {
      //     layer.msg('主图为必填项');
      //     return;
      // }

      var userData = data.field;
      // console.log(headImagePath + " main");
      // userData.headImage = headImagePath;

      console.log(userData + "------");
      //拿到完整的信息,将其提交到后台即可
      $.ajax({
        url: '${pageContext.request.contextPath}/user/registerUser',
        type: 'post',
        contentType: 'application/json',//发送json格式的数据
        data: JSON.stringify(userData),//将对象转化为字符串
        // processData: false,//不设置的话他也不报错，因为我这不是对象，而是字符串
        success: function (res) {
          layer.msg('注册成功',{
            time:3000
          });

          var url = '${pageContext.request.contextPath}/view/index.html';
          location.href = url;
        }
      });
    });
  });
</script>
</body>
</html>
