<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>

    <title>我的商城 | 后台管理</title>
    <jsp:include page="../includes/header.jsp"/>
    <link rel="stylesheet" href="/static/plugins/jquery-ztree/css/zTreeStyle/zTreeStyle.css"/>
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
               添加分类

            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li class="active">${tbContentCategory.id==null?"新增":"编辑"}分类</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <!-- Small boxes (Stat box) -->
            <c:if test="${baseResult.status==500}">
                <div class="row">
                    <div class="box-body">
                        <div class="alert alert-${baseResult.status==200?"success":"danger"} alert-dismissible">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                           ${baseResult.message}
                        </div>
                    </div>
                </div>
            </c:if>
            <div class="row">
                <div class="col-md-12">
                    <!-- Horizontal Form -->
                    <div class="box box-info">
                        <div class="box-header with-border">
                            <h3 class="box-title"> ${tbContentCategory.id==null?"新增":"编辑"}分类</h3>
                        </div>
                        <!-- /.box-header -->
                        <!-- form start -->
                        <form:form cssClass="form-horizontal" action="/category/save" method="post" modelAttribute="tbContentCategory">
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="parentName" class="col-sm-2 control-label">父级分类</label>
                                    <form:hidden id="parentId" path="parent.id"/>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" readonly id="parentName" value="${tbContentCategory.parent.name}" onclick="checkTitle()" placeholder="父级分类" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="name" class="col-sm-2 control-label">名称</label>
                                    <div class="col-sm-10">
                                        <form:input type="text" path="name" placeholder="名称" cssClass="form-control"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="sortOrder" class="col-sm-2 control-label">排序</label>
                                    <div class="col-sm-10">
                                        <form:input type="text" path="sortOrder" placeholder="排序" cssClass="form-control"/>
                                    </div>
                                </div>
                            </div>
                            <!-- /.box-body -->
                            <div class="box-footer">
                                <button type="button" onclick="history.go(-1)" class="btn btn-default">返回</button>
                                <form:hidden path="id"/>
                                <button type="submit" class="btn btn-info pull-right">提交</button>
                            </div>
                            <!-- /.box-footer -->
                        </form:form>
                    </div>
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
<script src="/static/plugins/jquery-ztree/js/jquery.ztree.core-3.5.js"></script>
<script>

    var setting = {
        view: {
            selectedMulti: false
        },
        async: {
            enable: true,
            url:"/category/detail",
            autoParam:["id"]
        }
    };
    function refreshNode(e) {
        var zTree = $.fn.zTree.getZTreeObj("treeDemo"),
            type = e.data.type,
            silent = e.data.silent,
            nodes = zTree.getSelectedNodes();
        if (nodes.length == 0) {
            alert("请先选择一个父节点");
        }
        for (var i=0, l=nodes.length; i<l; i++) {
            zTree.reAsyncChildNodes(nodes[i], type, silent);
            if (!silent) zTree.selectNode(nodes[i]);
        }
    }


    function checkTitle(){
        $("#model-message").html('<ul id="treeDemo" class="ztree"></ul>\n');
        $.fn.zTree.init($("#treeDemo"), setting);
        $("#modal-default").modal("show");
    }
    function btnModalClick() {
        var zTree = $.fn.zTree.getZTreeObj("treeDemo");
        nodes = zTree.getSelectedNodes();
        if (nodes.length == 0) {
            alert("请选择一个分类");
        } else {
            $("#parentId").val(nodes[0].id)
            $("#parentName").val(nodes[0].name);
            $("#modal-default").modal("hide");
        }

    }

</script>

</body>
</html>
