<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>

    <title>我的商城 | 后台管理</title>
    <jsp:include page="../includes/header.jsp"/>


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
                用户管理
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li class="active">用户列表</li>
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
                            <h3 class="box-title">用户列表</h3>
                        </div>
                        <div class="row">
                            <div class="col-sm-12" style="padding-left: 25px">
                                <a href="${pageContext.request.contextPath}/user/form" type="button" class="btn btn-sm btn-default"><i
                                        class="fa fa-plus"></i> 新增</a>&nbsp;&nbsp;
                                <a type="button" onclick="App.deleteItems('${pageContext.request.contextPath}/user/deletemulti')" class="btn btn-sm btn-default"><i
                                        class="fa fa-trash"></i> 删除</a>&nbsp;&nbsp;
                                <a type="button" class="btn btn-sm btn-default"><i class="fa fa-download"></i> 导入</a>&nbsp;&nbsp;
                                <a type="button" class="btn btn-sm btn-default"><i class="fa fa-upload"></i> 导出</a>
                            </div>
                        </div>
                        <!-- /.box-header -->
                            <div class="box-body form-horizontal">
                                <div class="col-sm-4 form-group">
                                    <label for="username" class="col-sm-3 control-label">姓名</label>
                                    <div class="col-sm-8">
                                        <input class="form-control" id="username" placeholder="用户名"/>
                                    </div>

                                </div>
                                <div class="col-sm-4 form-group">
                                    <label for="phone" class="col-sm-3 control-label">电话</label>
                                    <div class="col-sm-8">
                                        <input class="form-control" id="phone" placeholder="电话"/>
                                    </div>
                                </div>
                                <div class="col-sm-4 form-group">
                                    <label for="email" class="col-sm-3 control-label">邮箱</label>
                                    <div class="col-sm-8">
                                        <input class="form-control" id="email" placeholder="邮箱"/>
                                    </div>
                                </div>
                                <div class="box-tools">
                                    <button type="button" onclick="search()" class="btn  btn-primary btn-sm">搜索</button>
                                </div>
                            </div>

                        <div class="box-body table-responsive no-padding">
                            <table id="myDataTable" class="table table-hover">
                                <thead>
                                <tr>
                                    <th><input type="checkbox" class="minimal checkbox-master"></th>
                                    <th>ID</th>
                                    <th>姓名</th>
                                    <th>邮箱</th>
                                    <th>电话</th>
                                    <th>创建时间</th>
                                    <th>管理</th>
                                </tr>
                                </thead>
                                <tbody>

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
<!--modal-->
<div class="modal fade" id="modal-default">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">提示信息</h4>
            </div>
            <div class="modal-body">
                <p id="model-message"></p>
            </div>
            <div class="modal-footer">
                <button type="button" onclick="App.btnModalClick()" data-dismiss="modal" class="btn btn-primary">确定</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!--/.modal-->


<jsp:include page="../includes/footer.jsp"/>
<script src="/static/js/app/App.js"></script>

<script>
    var columns = [
        {
            "data": function (row, type, val, meta) {
                return "<input type='checkbox' id='"+row.id+"' class='minimal '/>"
            }
        },
        {"data": "id"},
        {"data": "username"},
        {"data": "email"},
        {"data": "phone"},
        {"data": function (row, type, val, meta) {
                var date =  new Date(row.created);
                var time = date.getUTCFullYear()+"-"+date.getUTCMonth()+"-"+date.getUTCDay()+" "+date.getUTCHours()+":"+date.getMinutes()+":"+date.getUTCSeconds()
                return time;
            }},
        {
            "data": function (row, type, val, meta) {
                return ' <button type="button" onclick="App.checkdatitl('+row.id+')" class="btn btn-sm btn-default"><i class="fa fa-search"></i>查看</button>' +
                    '&nbsp&nbsp<a href="/user/form?id='+row.id+'" type="button" class="btn btn-sm btn-primary"><i class="fa fa-edit"></i>编辑</a>' +
                    '&nbsp&nbsp<button type="button" onclick="App.checkdelet('+row.id+')" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i>删除</button>'
            }
        }
    ]

    var dt = App.myDataTable(columns);

    function search() {
        var username = $("#username").val();
        var phone = $("#phone").val();
        var email = $("#email").val();
        var param = {
            "username":username,
            "phone":phone,
            "email":email
        };
        App.search(dt,param)
    }
    function btnModalClick(){
        App.btnModalClick()
    }
</script>
</body>
</html>
