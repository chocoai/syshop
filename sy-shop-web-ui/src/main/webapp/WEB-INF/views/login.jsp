<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/1/16
  Time: 17:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MyShop——登录</title>
    <link rel="stylesheet" type="text/css" href="/static/css/index.css">
    <link rel="stylesheet" type="text/css" href="/static/css/ziy.css">
    <script src="js/jquery-1.11.3.min.js"></script>
    <!--
    <script src="js/index.js" ></script>  -->
    <!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->
    <!--
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
     <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script> -->
    <style type="text/css">
        .verification {
            padding: 8px 10px 7px;
            width: 135px;
            height: 36px;
            border: 1px solid #CCC;
            color: #333;
            font-size: 14px;
            line-height: 21px;
        }
    </style>
</head>
<body>
<!--dengl-->
<div class="beij_center">
    <div class="dengl_logo">
        <img src="/static/images/logo_1.png">
        <h1>欢迎登录</h1>
    </div>
</div>
<div class="dengl_beij">

    <div class="banner_xin">
        <img src="/static/images/ss.jpg">
    </div>
    <div class="beij_center dengl_jvz">
        <div class="login_form">
            <div class="login_tab">
                <h2>欢迎登录</h2>
                <div class="dengl_erwm">
                    <a href="#"><img src="/static/images/er_wm.png"></a>
                    <div class="tanc_erwm_kuang">
                        <img src="/static/images/mb_wangid.png">
                        <div class="qrcode_panel">
                            <ul>
                                <li class="fore1">
                                    <span>打开</span>
                                    <a href="#" target="_blank"> <span class="red">手机MyShop</span></a>
                                </li>
                                <li>扫描二维码</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <p style="color: red;text-align: center">${baseResult.message}</p>
            <div class="kengl_kuang">
                <form action="/login" method="POST">
                    <div class="txt_kuang">
                        <table>
                            <tr>
                                <td><input type="text" class="itxt" name="username" placeholder="邮箱/用户名/已验证手机">
                                </td>
                            </tr>
                            <tr>
                                <td><input type="password" class="itxt" name="password" placeholder="密码">
                                </td>
                            </tr>
                            <tr>
                                <td><input type="text" class="verification" name="verification" placeholder="验证码">
                                    <img id="verification" src="/verification" style="cursor: pointer;vertical-align: bottom;"
                                         title="看不清？换一张"/>
                                </td>
                            </tr>
                        </table>

                    </div>
                    <div class="remember">
                        <div class="fl">
                            <input type="checkbox" id="autoLoginFlag">
                            <label for="autoLoginFlag">自动登录</label>
                        </div>
                        <div class="fr">
                            <a href="#" class="fl" target="_blank" title="忘记密码">忘记密码?</a>
                        </div>
                    </div>
                    <input type="submit" tabindex="5" value="登 录" class="btnnuw">
                </form>
            </div>
            <div class="corp_login">
                <div class="mingb_shoq"><a href="#">名榜授权登录！</a></div>
                <div class="regist_link"><a href="/register" target="_blank"><b></b>立即注册</a></div>
            </div>
        </div>
    </div>
</div>

<div class="jianj_dib">
    <div class="beia_hao">
        <p>京ICP备：123456789号 </p>
        <p class="gonga_bei">京公网安备：123456789号</p>
    </div>
</div>
<script>
    $(function () {
        // 刷新验证码
        $("#verification").bind("click", function () {
            $(this).hide().attr('src', '/verification?random=' + Math.random()).fadeIn();
        });
    });
</script>
</body>
</html>
