<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="view-list-body-right">
    <h1>推荐景点</h1>
    <div class="view-list-body-right-top">
        <h2>浏览量景点排行</h2>
        <!--                一个景点 -->
        <c:forEach items="${watchGuideList}" var="watchGuide" varStatus="i">
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
                    <a href="${pageContext.request.contextPath}/view/viewDetail?id=${watchView.id}">${watchGuide.title}</a>
                </p>
                    <%--                点赞量 就不要 浏览量了--%>
                    <%--                <span class="layui-icon layui-icon-fire"--%>
                    <%--                      style="display: inline-block;margin-left: 20px;font-size: 13px">${watchView.watchCount}</span>--%>
                <span class="layui-icon layui-icon-fire"
                      style="display: inline-block;margin-left: 20px;font-size: 13px">${watchGuide.watchCount}</span>
            </div>
        </c:forEach>

    </div>
    <div class="view-list-body-right-bottom">
        <h2>点赞量量景点排行</h2>
        <c:forEach items="${praiseGuideList}" var="praiseGuide" varStatus="i">
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
                    <a href="${pageContext.request.contextPath}/view/viewDetail?id=${praiseGuide.id}">${praiseGuide.title}</a></p>
                <span class="layui-icon layui-icon-praise"
                      style="display: inline-block;margin-left: 20px;font-size: 13px">${praiseGuide.praiseCount}</span>
                    <%--            <span class="layui-icon layui-icon-praise"--%>
                    <%--                  style="display: inline-block;margin-left: 20px;font-size: 13px">123</span>--%>
            </div>
        </c:forEach>
    </div>
</div>