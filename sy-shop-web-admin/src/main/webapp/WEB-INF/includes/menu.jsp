<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/1/3
  Time: 10:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>



<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="${pageContext.request.contextPath}/static/img/user2-160x160.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>${user.username}</p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>

        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">功能菜单</li>
            <li class="treeview /user" >
                <a href="#">
                    <i class="fa fa-users"></i> <span>用户管理</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li class="active"><a href="${pageContext.request.contextPath}/user/list"><i class="fa fa-user"></i> 用户列表</a></li>
                    <li class="active"><a href="${pageContext.request.contextPath}/user/form"><i class="fa fa-user-plus"></i> 新增用户</a></li>
                </ul>
            </li>
            <li class="treeview /category">
                <a href="#">
                    <i class="fa fa-folder"></i> <span>分类管理</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li class="active"><a href="${pageContext.request.contextPath}/category/lists"><i class="fa"></i> 分类列表</a></li>
                    <li class="active  fa-edit"><a href="${pageContext.request.contextPath}/category/form"><i class="fa"></i>添加分类</a></li>
                </ul>
            </li>
            <li class="treeview /content">
                <a href="#">
                    <i class="fa fa-folder"></i> <span>内容管理</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li class="active"><a href="${pageContext.request.contextPath}/content/lists"><i class="fa"></i>查看信息</a></li>
                    <li class="active  fa-edit"><a href="${pageContext.request.contextPath}/content/form"><i class="fa"></i>添加信息</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa"></i> <span>其他管理</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li class="active"><a href="#"><i class="fa"></i> 其他管理</a></li>
                    <li class="active"><a href="#"><i class="fa"></i> 其他管理</a></li>
                </ul>
            </li>


        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
<script>
    var test = window.location.pathname;
    var path = test.substring(0,test.lastIndexOf("/"))
    if(path==""){
        path="/user";
    }
    var aa = document.getElementsByClassName(path)
    aa[0].setAttribute("class","active" );
</script>

