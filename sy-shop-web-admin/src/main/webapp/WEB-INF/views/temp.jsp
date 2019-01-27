<%--
  Created by IntelliJ IDEA.
  User: sy
  Date: 2018/12/25
  Time: 20:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>我的商城 | 后台管理</title>
    <%--引入外部css js--%>
    <jsp:include page="../includes/header.jsp"/>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <!--导航栏-->
    <jsp:include page="../includes/nav.jsp"/>
    <!-- 正文 -->
    <div class="content-wrapper">
        <!-- 正文提示 -->
        <section class="content-header">
            <h1>
                控制面板
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li class="active">控制面板</li>
            </ol>
        </section>

        <!-- 正文内容 -->
        <section class="content">
            <!-- Small boxes (Stat box) -->
            <div class="row">

            </div>
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <%--版权信息--%>
    <jsp:include page="../includes/copyright.jsp"/>
</div>
<!-- ./wrapper -->
<%--引入外部css js--%>
<jsp:include page="../includes/footer.jsp"/>
</body>
</html>
