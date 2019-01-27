<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>

    <title>我的商城 | 分类管理</title>
    <jsp:include page="../includes/header.jsp"/>
<link rel="stylesheet" href="/static/plugins/treeTable/themes/vsStyle/treeTable.css">

</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <jsp:include page="../includes/nav.jsp"/>
    <jsp:include page="../includes/menu.jsp"/>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                分类管理
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li class="active">分类列表</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">

            <c:if test="${baseResult.status==200}">
                <div class="row">
                    <div class="box-body">
                        <div class="alert alert-${baseResult.status==200?"success":"danger"} alert-dismissible">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                ${baseResult.message}
                        </div>
                    </div>
                </div>
            </c:if>


            <!-- Small boxes (Stat box) -->
            <!-- /.row -->
            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">分类列表</h3>
                        </div>
                        <div class="row">
                            <div class="col-sm-12" style="padding-left: 25px">
                                <a href="/category/form" type="button" class="btn btn-sm btn-default"><i
                                        class="fa fa-plus"></i> 新增</a>&nbsp;&nbsp;
                                <a type="button" class="btn btn-sm btn-default"><i class="fa fa-download"></i> 导入</a>&nbsp;&nbsp;
                                <a type="button" class="btn btn-sm btn-default"><i class="fa fa-upload"></i> 导出</a>


                            </div>

                        </div>
                        <!-- /.box-header -->
                        <div class="box-body table-responsive no-padding">
                            <table id="treeTable" class="table table-hover">
                                <thead>
                                <tr>
                                    <th>序号</th>
                                    <th>ID</th>
                                    <th>名称</th>
                                    <th>创建时间</th>
                                    <th>修改时间</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${tbContentCategories}" var="cc" varStatus="i">
                                        <tr id="${cc.id}" pid="${cc.parent.id}">
                                            <td>${i.count}</td>
                                            <td>${cc.id}</td>
                                            <td>${cc.name}</td>
                                            <td><fmt:formatDate value="${cc.created}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                            <td><fmt:formatDate value="${cc.updated}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                                            <td><button type="button" onclick="App.checkdatitl(${cc.id})" class="btn btn-sm btn-default"><i class="fa fa-search"></i>查看</button>
                                                &nbsp&nbsp<a href="/category/form?id=${cc.id}" type="button" class="btn btn-sm btn-primary"><i class="fa fa-edit"></i>编辑</a>
                                                &nbsp&nbsp<button type="button" onclick="App.checkdelet(${cc.id})"  class="btn btn-sm btn-danger"><i class="fa fa-trash"></i>删除</button>
                                                &nbsp&nbsp<a href="/category/form?parent.id=${cc.id}&parent.name=${cc.name}"  type="button" onclick="checkdelet(${cc.id})" class="btn btn-sm"><i class="fa fa-plus"></i>新增下一级分类</a></td>
                                        </tr>

                                    </c:forEach>
                                </tbody>

                            </table>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
            </div>
            <!-- /.row (main row) -->

        </section>
        <!-- /.content -->
    </div>
    <jsp:include page="../includes/copyright.jsp"/>


    <!-- Add the sidebar's background. This div must be placed
         immediately after the control sidebar -->
    <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->


<jsp:include page="../includes/footer.jsp"/>
<script src="/static/plugins/treeTable/jquery.treeTable.js"></script>
<script src="/static/js/app/App.js"></script>
<script>
    App.treeTable()
    function btnModalClick(){
        App.btnModalClick()
    }
</script>
</body>
</html>
