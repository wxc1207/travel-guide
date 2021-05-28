<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="view-list-body-right">
    <%--    提出问题 --%>
    <h1>提出问题</h1>
    <div style="height: 120px;border: 1px solid #9F9F9F">
        <form class="layui-form" id="addQuestion">
            <div class="search-view">
                <!--                    required     lay-verify="required"-->
                <input type="text" name="question" id="question"
                       placeholder="请输入需要提问的问题" autocomplete="off" class="layui-input">
            </div>
            <input type="text" style="display:none" id="userId" name="userId" value="${user.id}">
            <button type="button" onclick="addQuestion()"
                    class="layui-btn layui-btn-radius layui-btn-primary"
                    style="display: block;margin:10px auto 0;text-align: center">
                提交
            </button>
        </form>
    </div>
    <h1>问答排行</h1>
    <div class="view-list-body-right-top">
        <h2>问答浏览量排行</h2>
        <!--                一个景点 -->
        <c:forEach items="${watchQuestionList}" var="watchQuestion" varStatus="i">
            <div class="view-list-body-right-top-item">
                <c:if test="${i.index + 1 == 1}">
                    <button class="layui-btn layui-btn-xs layui-btn-danger" style="display: inline-block">
                            ${i.index + 1}
                    </button>
                </c:if>
                <c:if test="${i.index + 1 == 2}">
                    <button class="layui-btn layui-btn-xs layui-btn-warm" style="display: inline-block">
                            ${i.index + 1}
                    </button>
                </c:if>
                <c:if test="${i.index + 1 == 3}">
                    <button class="layui-btn layui-btn-xs layui-btn-normal" style="display: inline-block">
                            ${i.index + 1}
                    </button>
                </c:if>
                <c:if test="${i.index + 1 == 4}">
                    <button class="layui-btn layui-btn-xs" style="display: inline-block">
                            ${i.index + 1}
                    </button>
                </c:if>
                <c:if test="${i.index + 1 == 5}">
                    <button class="layui-btn layui-btn-xs" style="display: inline-block">
                            ${i.index + 1}
                    </button>
                </c:if>
                <p style="display: inline-block;margin-left: 10px;font-size: 13px">天津-
                    <a href="${pageContext.request.contextPath}/travel/travelNotesDetail?id=${watchQuestion.id}">${watchQuestion.question}</a>
                </p>
                    <%--                点赞量 就不要 浏览量了--%>
                    <%--                <span class="layui-icon layui-icon-fire"--%>
                    <%--                      style="display: inline-block;margin-left: 20px;font-size: 13px">${watchView.watchCount}</span>--%>
                <span class="layui-icon layui-icon-fire"
                      style="display: inline-block;margin-left: 20px;font-size: 13px">${watchQuestion.watchCount}</span>
            </div>
        </c:forEach>

    </div>
    <div class="view-list-body-right-bottom">
        <h2>问答点赞量排行</h2>
        <c:forEach items="${praiseQuestionList}" var="praiseQuestion" varStatus="i">
            <div class="view-list-body-right-top-item">
                <c:if test="${i.index + 1 == 1}">
                    <button class="layui-btn layui-btn-xs layui-btn-danger" style="display: inline-block">
                            ${i.index + 1}
                    </button>
                </c:if>
                <c:if test="${i.index + 1 == 2}">
                    <button class="layui-btn layui-btn-xs layui-btn-warm" style="display: inline-block">
                            ${i.index + 1}
                    </button>
                </c:if>
                <c:if test="${i.index + 1 == 3}">
                    <button class="layui-btn layui-btn-xs layui-btn-normal" style="display: inline-block">
                            ${i.index + 1}
                    </button>
                </c:if>
                <c:if test="${i.index + 1 == 4}">
                    <button class="layui-btn layui-btn-xs" style="display: inline-block">
                            ${i.index + 1}
                    </button>
                </c:if>
                <c:if test="${i.index + 1 == 5}">
                    <button class="layui-btn layui-btn-xs" style="display: inline-block">
                            ${i.index + 1}
                    </button>
                </c:if>
                <p style="display: inline-block;margin-left: 10px;font-size: 13px">天津-
                    <a href="${pageContext.request.contextPath}/question/listQuestion?id=${praiseQuestion.id}">${praiseQuestion.question}</a>
                </p>
                <span class="layui-icon layui-icon-praise"
                      style="display: inline-block;margin-left: 20px;font-size: 13px">${praiseQuestion.praiseCount}</span>
                    <%--            <span class="layui-icon layui-icon-praise"--%>
                    <%--                  style="display: inline-block;margin-left: 20px;font-size: 13px">123</span>--%>
            </div>
        </c:forEach>
    </div>
</div>