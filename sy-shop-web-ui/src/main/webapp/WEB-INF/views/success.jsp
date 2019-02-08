<%--
  Created by IntelliJ IDEA.
  User: sy
  Date: 2019-01-31
  Time: 00:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: sy
  Date: 2019-01-30
  Time: 21:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>MyShop——提交订单——结算页</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/index.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/ziy.css">
    <script src="js/jquery-1.11.3.min.js"></script>
    <!--  <script src="js/index.js" ></script>  -->
    <!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/static/js/jquery.SuperSlide.2.1.1.source.js"></script>
    <!--  <script type="text/javascript" src="js/select.js"></script> -->


</head>
<body>
<jsp:include page="../includes/toper.jsp"/>
<!--提交订单——结算页-->
<div class="beij_center">
    <div class="dengl_logo">
        <div>
            <img src="${pageContext.request.contextPath}/static/images/logo_1.png">
            <h1>结算页</h1>
        </div>
        <div class="stepflex stepflex_2">
            <dl class="normal done ">
                <dt class="s-num">1</dt>
                <dd class="s-text">1.我的购物车<s></s><b></b></dd>
            </dl>
            <dl class="normal done">
                <dt class="s-num">2</dt>
                <dd class="s-text">2.填写核对订单信息<s></s><b></b></dd>
            </dl>
            <dl class="normal doing">
                <dt class="s-num">3</dt>
                <dd class="s-text">3.支付<s></s><b></b></dd>
            </dl>
        </div>
    </div>
</div>
<div class="beij_center">
    <div class="checkout-tit">
        <h2 class="tit-txt">支付成功</h2>
    </div>
</div>

<script type="text/javascript">
    $(function () {
        $(".shiq_1 ul li").hide().first().show()
        $(".cur_e p").hide().first().show()
        $(".cur_e p:first").click(
            function () {
                $(".shiq_1 ul li").show()
                $(".cur_e p").hide().last().show()
            }
        )
        $(".cur_e p:last").click(
            function () {
                $(".shiq_1 ul li").hide().first().show()
                $(".cur_e p").hide().first().show()
            }
        )
    })
    $(function () {
        $(".shiq_2 ul li").hide().first().show()
        $(".cur_e_1 p").hide().first().show()
        $(".cur_e_1 p:first").click(
            function () {
                $(".shiq_2 ul li").show()
                $(".cur_e_1 p").hide().last().show()
            }
        )
        $(".cur_e_1 p:last").click(
            function () {
                $(".shiq_2 ul li").hide().first().show()
                $(".cur_e_1 p").hide().first().show()
            }
        )
    })
    //cur
</script>

<jsp:include page="../includes/footer.jsp"/>
</body>
</html>
