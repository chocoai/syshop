<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>

    <title>我的商城 | 后台管理</title>
    <jsp:include page="../includes/header.jsp"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/plugins/jquery-ztree/css/zTreeStyle/zTreeStyle.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/plugins/wangEditor/wangEditor.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/plugins/dropzone/min/dropzone.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/plugins/dropzone/min/basic.min.css"/>
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
               添加字段
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li class="active">${tbContent.id==null?"新增":"编辑"}字段</li>
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
                            <h3 class="box-title"> ${tbContent.id==null?"新增":"编辑"}字段</h3>
                        </div>
                        <!-- /.box-header -->
                        <!-- form start -->
                        <form:form cssClass="form-horizontal" action="${pageContext.request.contextPath}/content/save" method="post" modelAttribute="tbContent">
                            <div class="box-body">
                                <div class="form-group">
                                    <form:hidden path="id"/>
                                    <label for="parentName" class="col-sm-2 control-label">父级分类</label>
                                    <form:hidden id="categoryId" path="parent.id"/>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" readonly id="parentName" value="${tbContent.parent.name}" onclick="checkTitle()" placeholder="父级分类" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="title" class="col-sm-2 control-label">标题</label>
                                    <div class="col-sm-10">
                                        <form:input type="text" path="title" placeholder="标题" cssClass="form-control"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="subTitle" class="col-sm-2 control-label">副标题</label>
                                    <div class="col-sm-10">
                                        <form:input type="text" path="subTitle" placeholder="副标题" cssClass="form-control"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="titleDesc" class="col-sm-2 control-label">标题描述</label>
                                    <div class="col-sm-10">
                                        <form:input type="text" path="titleDesc" placeholder="标题描述" cssClass="form-control"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="url" class="col-sm-2 control-label">链接</label>
                                    <div class="col-sm-10">
                                        <form:input type="text" path="url" placeholder="链接" cssClass="form-control"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="pic" class="col-sm-2 control-label">图片1</label>
                                    <div class="col-sm-10">
                                        <form:hidden path="pic"/>
                                        <div id="dropz1" class="dropzone dropz"></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="pic2" class="col-sm-2 control-label">图片2</label>
                                    <div class="col-sm-10">
                                        <form:hidden path="pic2"/>
                                        <div id="dropz2" class="dropzone dropz"></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="content" class="col-sm-2 control-label">描述</label>
                                    <div class="col-sm-10">
                                        <form:hidden path="content"/>
                                        <div id="editor">${tbContent.content}</div>
                                    </div>
                                </div>
                            </div>
                            <!-- /.box-body -->
                            <div class="box-footer">
                                <button type="button" onclick="history.go(-1)" class="btn btn-default">返回</button>
                                <form:hidden path="id"/>
                                <button type="submit" onclick="editorAll()" class="btn btn-info pull-right">提交</button>
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
<script src="${pageContext.request.contextPath}/static/plugins/jquery-ztree/js/jquery.ztree.core-3.5.js"></script>
<script src="${pageContext.request.contextPath}/static/plugins/wangEditor/wangEditor.min.js"></script>
<script src="${pageContext.request.contextPath}/static/plugins/dropzone/min/dropzone.min.js"></script>
<script>

    var setting = {
        view: {
            selectedMulti: false
        },
        async: {
            enable: true,
            url:"${pageContext.request.contextPath}/category/detail",
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

        //弹出
        $("#modal-default").modal("show");
    }
    function btnModalClick() {
        var zTree = $.fn.zTree.getZTreeObj("treeDemo");
        nodes = zTree.getSelectedNodes();
        if (nodes.length == 0) {
            alert("请选择一个分类");
        } else {
            $("#categoryId").val(nodes[0].id)
            $("#parentName").val(nodes[0].name);
            $("#modal-default").modal("hide");
        }

    }
    //图片上传
    new Dropzone("#dropz1", {
        url: "${pageContext.request.contextPath}/upload",
        method: "post",
        acceptedFiles: ".jpg,.gif,.png,.jpeg", // 上传的类型
        dictDefaultMessage: '拖动文件至此或者点击上传', // 设置默认的提示语句
        paramName: "dropzFile", // 传到后台的参数名称
        dictResponseError: '文件上传失败!',
        dictInvalidFileType: "文件类型只能是*.jpg,*.gif,*.png,*.jpeg。",
        dictFallbackMessage: "浏览器不受支持",
        dictFileTooBig: "文件过大上传文件最大支持.",
        dictRemoveLinks: "删除",
        dictCancelUpload: "取消",
        init: function () {
            this.on("success", function (file, data) {
                // 上传成功触发的事件
                $("#pic").val(data.filename)
            });
        }
    });
    new Dropzone("#dropz2", {
        url: "${pageContext.request.contextPath}/upload",
        method: "post",
        acceptedFiles: ".jpg,.gif,.png,.jpeg", // 上传的类型
        dictDefaultMessage: '拖动文件至此或者点击上传', // 设置默认的提示语句
        paramName: "dropzFile", // 传到后台的参数名称
        dictResponseError: '文件上传失败!',
        dictInvalidFileType: "文件类型只能是*.jpg,*.gif,*.png,*.jpeg。",
        dictFallbackMessage: "浏览器不受支持",
        dictFileTooBig: "文件过大上传文件最大支持.",
        dictRemoveLinks: "删除",
        dictCancelUpload: "取消",
        init: function () {
            this.on("success", function (file, data) {
                // 上传成功触发的事件
                $("#pic2").val(data.filename)
            });
        }
    });

    //编辑
    var E = window.wangEditor;
    var editor = new E('#editor');
    editor.create();
    function editorAll() {
        alert(editor.txt.html())
      $("#content").val(editor.txt.html())
    }
</script>

</body>
</html>
