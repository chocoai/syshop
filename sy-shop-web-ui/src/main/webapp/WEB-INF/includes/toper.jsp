<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: sy
  Date: 2019-01-31
  Time: 00:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--头部-->
<div id="header">
    <div class="header-box">
        <h3 class="huany">MyShop本地购物商城欢迎您的到来！</h3>
        <ul class="header-left">
            <li class="bj">
                <a class="dib" href="#">广州市</a>
                <i class="ci-leftll">
                    <s class="jt">◇</s>
                </i>
                <div class="bj-1">
                    <h3>热门城市：</h3>
                    <a href="">北京</a><a href="">上海</a><a href="">天津</a><a href="">重庆</a><a href="">河北</a><a href="">山西</a><a href="">河南</a><a href="">辽宁</a><a href="">吉林</a><a href="">黑龙江</a><a href="">浙江</a><a href="">江苏</a><a href="">山东</a><a href="">安徽</a><a href="">内蒙古</a><a href="">湖北</a><a href="">湖南</a><a href="">广东</a><a href="">广西</a><a href="">江西</a><a href="">四川</a><a href="">海南</a><a href="">贵州</a><a href="">云南</a><a href="">西藏</a><a href="">陕西</a><a href="">甘肃</a><a href="">青海</a><a href="">宁夏</a><a href="">新疆</a><a href="">台湾</a><a href="">香港</a><a href="">澳门</a><a href="">海外</a><a href="qieh_cs.html">全部+</a>
                </div>
            </li>
        </ul>
        <ul class="header-right">
            <c:if test="${empty user}">
                <li class="denglu">Hi~<a class="red" href="/login">请登录!</a> <a href="/register">[免费注册]</a></li>
            </c:if>
            <c:if test="${!empty user}">
                <li class="denglu dengl_hou">
                    <div>
                        <a class="red" href="#">Hi~${user.username}</a>
                        <i class="icon_plus_nickname"></i>
                        <i class="ci-leftll">
                            <s class="jt">◇</s>
                        </i>
                    </div>
                    <div class="dengl_hou_xial_k">
                        <div class="zuid_xiao_toux">
                            <a href="#"><img src="${pageContext.request.contextPath}/static/images/toux.png"></a>
                        </div>
                        <div class="huiy_dengj">
                            <a class="tuic_" href="/logout">退出</a>
                        </div>
                        <div class="toub_zil_daoh">
                            <a href="#">待处理订单</a>
                            <a href="#">我的收藏</a>
                            <a href="#">个人资料</a>
                        </div>
                    </div>
                </li>
            </c:if>
            <li class="shu"></li>
            <li class="denglu"><a class="ing_ps" href="#">我的收藏</a></li>
            <li class="shu"></li>
            <li class="denglu"><a class="ing_ps ps1" href="#">申请入驻</a></li>
            <li class="shu"></li>
            <li class="denglu"><a class="ing_ps ps2" href="#">客户服务</a></li>
            <li class="shu"></li>
            <li class="shouji bj">
                <a class="ing_ps ps3" href="#">手机MyShop</a>
                <i class="ci-right ">
                    <s class="jt">◇</s>
                </i>
                <div class="shouji1">
                    <img src="${pageContext.request.contextPath}/static/images/mb_wangid.png" class="shouji4">
                    <div class="shouji2">
                        <p>MyShop客户端</p>
                        <p class="red">首次下单满79元，送79元</p>
                    </div>
                    <div class="yi">
                        <img src="${pageContext.request.contextPath}/static/images/mb_wangid.png" class="shouji4">
                        <div class="er">
                            <p>MyShop微信公众号</p>
                            <p class="red">关注MyShop公众号的积分，换大礼</p>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</div>
