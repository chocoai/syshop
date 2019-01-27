<%--
  Created by IntelliJ IDEA.
  User: sy
  Date: 2019/1/6
  Time: 0:06
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    #table_show td{
        width: 50%;
        height: 36px;
    }
</style>
<table id="table_show" cellpadding="0" cellspacing="0" border="1px solid black" style="text-align: center;margin: auto;width: 100%" >
    <tr><td>标题</td><td>${tbContent.title}</td></tr>
    <tr><td>副标题</td><td>${tbContent.subTitle}</td></tr>
    <tr><td>标题描述</td><td>${tbContent.titleDesc}</td></tr>
    <tr><td>链接</td><td><a href="${tbContent.url}">${tbContent.url}</a></td></tr>
    <tr><td>图片1</td><td><img src="${tbContent.pic}" style="width: 50%" alt=""></td></tr>
    <tr><td>图片2</td><td><img src="${tbContent.pic2}" style="width: 50%" alt=""></td></tr>
    <tr><td>详情</td><td>${tbContent.content}</td></tr>
    <tr><td>创建时间</td><td><fmt:formatDate value="${tbContent.created}" pattern="yyyy-MM-dd HH:mm"/></td></tr>
    <tr><td>修改时间</td><td><fmt:formatDate value="${tbContent.updated}" pattern="yyyy-MM-dd HH:mm"/></td></tr>
</table>