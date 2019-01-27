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
    <title>MyShop——个人注册</title>
    <link rel="stylesheet" type="text/css" href="/static/css/index.css">
    <link rel="stylesheet" type="text/css" href="/static/css/ziy.css">
    <!--  <script src="js/jquery-1.11.3.min.js" ></script>
    <script src="js/index.js" ></script>  -->
    <!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->
    <!--
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
     <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.source.js"></script> -->

</head>
<body>
<!--dengl-->
<div class="yiny">
    <div class="beij_center">
        <div class="dengl_logo">
            <img src="/static/images/logo_1.png">
            <h1>欢迎注册</h1>
        </div>
    </div>
</div>
<div class="beij_center">
    <div class="ger_zhuc_beij">
        <div class="ger_zhuc_biaot">
            <ul>
                <li class="ger_border_color"><a href="zhuc.html">个人注册</a></li>
                <i>丨</i>
                <li><a href="shenq_ruz.html">申请入驻</a></li>
                <p>我已经注册，现在就<a class="ftx-05 ml10" href="dengl.html">登录</a></p>
            </ul>
        </div>
        <div class="zhuc_biaod">
            <form action="/register" method="POST">
                <div class="reg-items">
              	<span class="reg-label">
                	<label for="J_Name">用户名：</label>
              	</span>
                    <input class="i-text" type="text" name="username" id="J_Name">
                    <!--备注————display使用 inline-block-->
                    <div class="msg-box">
                        <div class="msg-box" style="display: none;">
                            <div class="msg-weak" style="display: inline-block;"><i></i>
                                <div class="msg-cont">4-20个字符，支持汉字、字母、数字及“-”、“_”组合</div>
                            </div>
                        </div>
                        <div class="msg-weak err-tips" style="display: inline-block;">
                            <div>请输入用户名</div>
                        </div>
                    </div>
                    <span class="suc-icon"></span>
                </div>
                <div class="reg-items">
              	<span class="reg-label">
                	<label for="J_Password">设置密码：</label>
              	</span>
                    <input class="i-text" name="password" type="password" id="J_Password">
                    <!--备注————display使用 inline-block-->
                    <div class="msg-box">
                        <div class="msg-box" style="display: none;">
                            <div class="msg-weak" style="display: inline-block;"><i></i>
                                <div class="msg-cont">键盘大写锁定已打开，请注意大小写!</div>
                            </div>
                        </div>
                        <div class="msg-weak err-tips" style="display:none;">
                            <div>请输入密码</div>
                        </div>
                    </div>
                </div>
                <div class="reg-items">
              	<span class="reg-label">
                	<label for="J_Password_R">确认密码：</label>
              	</span>
                    <input class="i-text" type="password" name="passwordR" id="J_Password_R">
                    <!--备注————display使用 inline-block-->
                    <div class="msg-box">
                        <div class="msg-weak err-tips" style="display: none;">
                            <div>密码不一样</div>
                        </div>
                    </div>
                </div>
                <div class="reg-items">
              	    <span class="reg-label">
                	    <label for="J_Phone">手机号码：</label>
              	    </span>
                    <input class="i-text" type="text" id="J_Phone" name="phone">
                    <!--备注————display使用 inline-block-->
                    <div class="msg-box">
                        <div class="msg-weak err-tips" style="display:none;">
                            <div>手机号不能为空</div>
                        </div>
                    </div>
                </div>
                <div class="reg-items">
              	    <span class="reg-label">
                	    <label for="J_Email">邮箱：</label>
              	    </span>
                    <input class="i-text" type="email" id="J_Email" name="email">
                    <!--备注————display使用 inline-block-->
                    <div class="msg-box">
                        <div class="msg-weak err-tips" style="display:none;">
                            <div>邮箱不能为空</div>
                        </div>
                    </div>
                </div>
                <div class="reg-items">
              	<span class="reg-label">
                	<label for="J_CHeck_Code">验证码：</label>
              	</span>
                    <input class="i-text i-short" type="text" id="J_CHeck_Code">
                    <div class="check check-border" style="position:relative;left:0">
                        <a class="check-phone" style="padding:11px 10px 14px 10px;*line-height:60px;">获取短信验证码</a>
                        <span class="check-phone disable" style="display: none;"><em>60</em>秒后重新获取</span>
                        <a class="check-phone" style="display: none;padding:11px 10px 14px 10px">重新获取验证码</a>
                    </div>
                    <!--备注————display使用 inline-block-->
                    <div class="msg-box">
                        <div class="msg-weak err-tips" style="display:none;">
                            <div>请输入短信验证码</div>
                        </div>
                    </div>
                </div>
                <div class="reg-items">
              	<span class="reg-label">
              	</span>
                    <div class="dag_biaod">
                        <input type="checkbox" value="english" id="J_Check">
                        阅读并同意
                        <a href="#" class="ftx-05 ml10">《MyShop用户注册协议》</a>
                        <a href="#" class="ftx-05 ml10">《隐私协议》</a>
                    </div>
                </div>
                <div class="reg-items">
              	<span class="reg-label">
              	</span>
                    <input class="reg-btn" value="立即注册" type="submit">
                </div>
            </form>
        </div>
        <div class="xiaogg">
            <img src="/static/images/cdsgfd.jpg">
        </div>
    </div>
</div>


<div class="jianj_dib jianj_dib_1">
    <div class="beia_hao">
        <p>京ICP备：123456789号 </p>
        <p class="gonga_bei">京公网安备：123456789号</p>
    </div>
</div>

</body>
</html>
