<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: sy
  Date: 2019-01-29
  Time: 12:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--轮播图-->
<!--轮播图-->
<div id="lunbo">

    <ul id="one">
        <c:forEach items="${ppt}" var="p">
            <li><a href=""><img src="${pageContext.request.contextPath}${p.pic}"></a></li>
        </c:forEach>
    </ul>
    <ul id="two">
        <c:forEach items="${ppt}" varStatus="p">
            <li class="${p.count==1?"on":""}">${p.count}</li>
        </c:forEach>

    </ul>
    <!--轮播图左右箭头-->
    <div class="slider-page">
        <a href="javascript:void(0)" id="left"><</a>
        <a href="javascript:void(0)" id="right">></a>
    </div>
</div>