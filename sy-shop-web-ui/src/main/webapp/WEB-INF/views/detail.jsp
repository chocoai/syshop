<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: sy
  Date: 2019-01-30
  Time: 20:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>MyShop——商品详情页</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/index.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/ziy.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/houl/jquery.fancybox-1.3.4.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/houl/style.css">
    <script src="js/jquery-1.11.3.min.js" ></script>
    <!--  <script src="js/index.js" ></script>  -->
    <!-- <script type="text/javascript" src="js/jquery1.42.min.js"></script> -->

    <script type="text/javascript" src="/static/js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="/static/js/jquery.SuperSlide.2.1.1.source.js"></script>
    <script type="text/javascript" src="/static/houl/jquery.fancybox-1.3.4.js"></script>

</head>
<body>
<jsp:include page="../includes/header.jsp"/>
<jsp:include page="../includes/nav.jsp"/>
<!--商品详情-->
<div class="breadcrumbs_container">
    <div class="left_luj">
        <ul>
            <li>
                <a href="#" title="服饰鞋帽">服饰鞋帽</a>
                <i class="icon-crumbs-right"></i>
            </li>
            <li>
                <a title="女装">女装</a>
                <i class="icon-crumbs-right"></i>
            </li>
            <li>
                <a href="#" title="连衣裙">连衣裙</a>
                <i class="icon-crumbs-right"></i>
            </li>
            <li>
                <a href="#" title="Mistletoe">Mistletoe</a>
                <i class="icon-crumbs-right"></i>
            </li>
            <li class="active">
                <a href="#" title="Mistletoe碎花夏季新款女装韩版印花连衣裙F6641(白色 M)">Mistletoe碎花夏季新款女装韩版印花连衣裙F6641(白色 M)</a>
            </li>
        </ul>
    </div>
    <div class="right_dianp">
        <div class="ly-stores shops-name">
            <a class="btn-collect ">
                <i class="icon-collect"></i>
                <span>收藏店铺</span>
                <i class="icon-arrow"></i>
            </a>
            <a class="btn-service hide customerService_show"<i></i>在线客服</a>
            <span class="services-score"><b class="star-gray"><i class="star-red" style="width:88.9059333333%"></i></b><em class="score">4.4</em>分</span>
            <a class="name" title="Mistletoe女装旗舰店" href="#" target="_blank">Mistletoe女装旗舰店</a>

        </div>
    </div>
</div>
<div class="gome_container">
    <!--左-->
    <div class="prd_firstscreen_left">
        <!---->
        <div id="magnifier">
            <div class="small-box">
                <img src="${pageContext.request.contextPath}/static/images/small_1.jpg" alt="#">
                <span class="hover"></span>
            </div>
            <div class="thumbnail-box">
                <a href="javascript:;" class="btn btn-prev"></a>
                <a href="javascript:;" class="btn btn-next"></a>
                <div class="list">
                    <ul class="wrapper">
                        <li class="item item-cur" data-src="${pageContext.request.contextPath}/static/images/small_1.jpg"><img src="${pageContext.request.contextPath}/static/images/thumbnail_1.jpg" alt="#"></li>
                        <li class="item" data-src="${pageContext.request.contextPath}/static/images/small_2.jpg"><img src="${pageContext.request.contextPath}/static/images/thumbnail_2.jpg" alt="#"></li>
                        <li class="item" data-src="${pageContext.request.contextPath}/static/images/leis_z_3.jpg"><img src="${pageContext.request.contextPath}/static/images/leis_z_3.jpg" alt="#"></li>
                        <li class="item item-cur" data-src="${pageContext.request.contextPath}/static/images/small_1.jpg"><img src="${pageContext.request.contextPath}/static/images/thumbnail_1.jpg" alt="#"></li>
                        <li class="item" data-src="${pageContext.request.contextPath}/static/images/small_2.jpg"><img src="${pageContext.request.contextPath}/static/images/thumbnail_2.jpg" alt="#"></li>
                        <li class="item" data-src="${pageContext.request.contextPath}/static/images/leis_z_3.jpg"><img src="${pageContext.request.contextPath}/static/images/leis_z_3.jpg" alt="#"></li>
                        <li class="item item-cur" data-src="${pageContext.request.contextPath}/static/images/small_1.jpg"><img src="${pageContext.request.contextPath}/static/images/thumbnail_1.jpg" alt="#"></li>
                        <li class="item" data-src="${pageContext.request.contextPath}/static/images/small_2.jpg"><img src="${pageContext.request.contextPath}/static/images/thumbnail_2.jpg" alt="#"></li>
                        <li class="item" data-src="${pageContext.request.contextPath}/static/images/leis_z_3.jpg"><img src="${pageContext.request.contextPath}/static/images/leis_z_3.jpg" alt="#"></li>
                    </ul>
                </div>
            </div>
            <div class="big-box">
                <img src="${pageContext.request.contextPath}/static/images/big_1.jpg" alt="#">
            </div>
        </div>
        <!--<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script> -->
        <script src="js/magnifier.js"></script>
        <script>
            $(function () {
                $('#magnifier').magnifier();
            });
        </script>
        <!---->
        <div class="preview-info">
            <div class="left-btns">
                <a class="share J-share" href="#">
                    <i class="sprite-share"></i><em>分享</em>
                </a>
                <a class="" href="#">
                    <i class="sprite-compare"></i><em>收藏商品（商品人气1500）</em>
                </a>
            </div>
            <div class="right-btns">
                <a class="report-btn" href="#">举报</a>
            </div>
        </div>
    </div>
    <!--中-->
    <div class="prd_firstscreen_center">
        <div class="hgroup">
            <h1>${product.title}</h1>
        </div>
        <div class="prd_price_1">
            <div class="unitprice">
                <p>
                    <label class="prd_price_left">原&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价</label>
                    <span class="price xiangq_yuanj"><em>¥</em>${product.price*1.07}</span>
                </p>
                <p>
                    <label class="prd_price_left">促&nbsp;销&nbsp;价</label>
                    <span class="price"><em>¥</em>${product.price}</span>
                </p>
            </div>
            <div class="prd_price_flr">
                <div class="prd_price_line">|</div>
                <div class="prd_price_lineright">
                    <p>好评度<em id="haocnt">98%</em></p>
                    <p class="pincnt"><a href="#" class="reduce"><em>55</em>人评价</a></p>
                </div>
            </div>
        </div>
        <!---->
        <div class="prd_properties">
            <div class="prd_properties_1">
                <label class="prd_price_left">服&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;务</label>
                <span>由<a href="#">Mistletoe女装旗舰店</a>发货并负责售后服务。</span>
            </div>
            <div class="prd-properties-2">
                <div class="prd_properties_other">
                    <label class="prdLeft">颜&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;色</label>
                    <div class="prdRight">
                        <div class="prdcol">
                            <a href="#" class="select" title="白色" data-alt="白色">
                                <img src="/static/images/xiangqtu_1.jpg" gome-src="/static/images/xiangqtu_1.jpg" alt="白色">
                                <span>白色</span><i></i>
                            </a>
                        </div>
                        <div class="prdcol prd-img-item">
                            <a href="#" title="黑色" data-alt="黑色">
                                <img src="/static/images/xiangqtu_1.jpg" gome-src="/static/images/xiangqtu_1.jpg" alt="黑色">
                                <span>白色</span><i></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="prd_properties_1 hou_jia">
            <label class="prd_price_left">货&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;源</label>
            <span>库存${product.num}件</span>
        </div>
        <style type="text/css">
            .hou_jia{
                padding:0 10px;
            }
            .kuc_jian{
                width: 100%;
                line-height: 25px;
            }
        </style>
        <!---->
        <div class="prd_buttons">
            <form action="/settlement" method="post">
                <div class="count-wrapper" id="btnCount">
                    <input type="text" name="number" class="quantity" value="1">
                    <a href="#" class="plus j-gACbtnA">+</a>
                    <a href="#" class="minus j-gACbtn disab">-</a>
                </div>
                <input type="text" name="id" value="${product.id}"w hidden>
                <input type="text" name="title" value="${product.title}" hidden>
                <input type="text" name="image" value="${product.image}" hidden>
                <input type="text" name="price" value="${product.price}" hidden>
                <input type="submit" class="btn-product btn-addcart" value="立即购买">
            </form>
        </div>
        <!---->
        <div class="prd-tips wenxintishi_wrap clearfix">
            <p>温馨提示</p>
            <ol class="wenxinti">
                <li>
                    正品保障；
                    支持7天无理由退货
                </li>
            </ol>
        </div>
        <!---->
    </div>
    <!--右-->
    <div class="prd_firstscreen_right">
        <h2>看了又看</h2>
        <!---->
        <div class="multipleColumn" style="margin:0 auto">
            <div class="bd">
                <div class="ulWrap">
                    <ul><!-- 把每次滚动的n个li放到1个ul里面 -->
                        <li>
                            <div class="pic"><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/static/images/xiangqtu_1.jpg" /></a></div>
                            <div class="title"><a href="#" target="_blank">￥68.00</a></div>
                        </li>
                        <li>
                            <div class="pic"><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/static/images/lieb_tupi3.jpg" /></a></div>
                            <div class="title"><a href="#" target="_blank">￥68.00</a></div>
                        </li>
                        <li>
                            <div class="pic"><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/static/images/big_3.jpg" /></a></div>
                            <div class="title"><a href="#" target="_blank">￥68.00</a></div>
                        </li>
                    </ul>
                    <ul><!-- 把每次滚动的n个li放到1个ul里面 -->
                        <li>
                            <div class="pic"><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/static/images/xiangqtu_1.jpg" /></a></div>
                            <div class="title"><a href="#" target="_blank">￥68.00</a></div>
                        </li>
                        <li>
                            <div class="pic"><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/static/images/lieb_tupi3.jpg" /></a></div>
                            <div class="title"><a href="#" target="_blank">￥68.00</a></div>
                        </li>
                        <li>
                            <div class="pic"><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/static/images/big_3.jpg" /></a></div>
                            <div class="title"><a href="#" target="_blank">￥68.00</a></div>
                        </li>
                    </ul>
                    <ul><!-- 把每次滚动的n个li放到1个ul里面 -->
                        <li>
                            <div class="pic"><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/static/images/xiangqtu_1.jpg" /></a></div>
                            <div class="title"><a href="#" target="_blank">￥68.00</a></div>
                        </li>
                        <li>
                            <div class="pic"><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/static/images/lieb_tupi3.jpg" /></a></div>
                            <div class="title"><a href="#" target="_blank">￥68.00</a></div>
                        </li>
                        <li>
                            <div class="pic"><a href="#" target="_blank"><img src="${pageContext.request.contextPath}/static/images/big_3.jpg" /></a></div>
                            <div class="title"><a href="#" target="_blank">￥68.00</a></div>
                        </li>
                    </ul>
                </div><!-- ulWrap End -->
            </div><!-- bd End -->
            <div class="hd">
                <ul></ul>
            </div>
        </div><!-- multipleColumn End -->

        <script type="text/javascript">
            jQuery(".multipleColumn").slide({titCell:".hd ul",mainCell:".bd .ulWrap",autoPage:true,effect:"leftLoop",autoPlay:true,vis:1});
        </script>
        <!---->
    </div>
</div>

<!--商品信息结束-->
<!--详情-->
<div class="shangp_xiangq_neir_beij">
    <!--left-->
    <div class="shangp_xiangq_left">
        <!---->
        <div class="shangp_xiangq_left_biank">
            <div class="stores-infos">
                <div class="ly-stores">
                    <h2 class="fix-storesname shops-name" id="store_live800_wrap">
                        <a class="name" title="茂烨旗舰店" href="#" target="_blank">茂烨旗舰店</a>
                    </h2>
                    <div class="services-wrapper">
                        <div class="services-stars">
                            服务评分：
                            <span class="star"><i style="width:81.2819333333%">星星</i></span>
                            <span class="score">4.0</span>分
                        </div>
                        <div class="services-score-detail">
                            <p><span class="detail">评分明细</span><span class="contrast">与行业对比</span></p>
                            <div class="describe ">
                                <p>商品描述：<span>4.15</span><small title="计算规则：（商家得分-同行业平均分）" class="diyu_text">9.93%</small><i class="diyu">箭头</i></p>
                            </div>
                            <div class="logistics">
                                <p>发货速度：<span>3.96</span><small title="计算规则：（商家得分-同行业平均分" class="diyu_text">15.34%</small><i class="diyu">箭头</i></p>
                            </div>
                            <div class="services">
                                <p>服务质量：<span>4.08</span><small title="计算规则：（商家得分-同行业平均分））" class="diyu_text">13.08%</small><i class="diyu">箭头</i></p>
                            </div>
                        </div>
                    </div>
                    <div class="btn-group">
                        <a href="#" class="btn-product btn-enter" target="_blank"><i></i>进入店铺</a>
                        <a href="#" class="btn-collect"><i class="sprite-enter"></i>收藏店铺</a>
                    </div>
                </div>
            </div>
            <!---->
            <div class="dianp_xiao_jiej">
                <div class="shangj_diz">
                    <p>地址：<span>贵州省贵阳市云岩区大亨大厦16层</span></p>
                    <p>联系人：<span>潘中全</span></p>
                    <p>电话：<span>0852-8667011</span></p>
                    <p>营业时间：<span>09:00至18:00</span></p>
                </div>
                <div class="_xq_gogns_jianj">
                    <p>公司简介：</p>
                    <p class="_xq_gogns_jianj_neir">魅CO视觉，主张时尚个性的摄影理念，以独特和新锐的时尚触觉为客户提供性化的摄影服务。追逐时尚，同时更注重情感表达。用最丰<a href="#">[查看更多]</a></p>
                </div>
            </div>
        </div>
        <!---->
        <div class="shangp_xiangq_left_biank">
            <div class="stores-infos">
                <div class="ly-stores">
                    <h2 class="fix-storesname shops-name" id="store_live800_wrap">
                        <a class="name" title="本店商品" href="#" target="_blank">本店商品</a>
                    </h2>
                    <ul class="bend_shangp_lieb">
                        <li>
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/static/images/lieb_tupi3.jpg">
                                <h3>￥58.00</h3>
                                <p>茵珠麗YinZhuli 春秋季新款韩版居家服女针织棉长袖情</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/static/images/lieb_tupi3.jpg">
                                <h3>￥58.00</h3>
                                <p>茵珠麗YinZhuli 春秋季新款韩版居家服女针织棉长袖情</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/static/images/lieb_tupi2.jpg">
                                <h3>￥58.00</h3>
                                <p>茵珠麗YinZhuli 春秋季新款韩版居家服女针织棉长袖情</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/static/images/lieb_tupi1.jpg">
                                <h3>￥58.00</h3>
                                <p>茵珠麗YinZhuli 春秋季新款韩版居家服女针织棉长袖情</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/static/images/lieb_tupi2.jpg">
                                <h3>￥58.00</h3>
                                <p>茵珠麗YinZhuli 春秋季新款韩版居家服女针织棉长袖情</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/static/images/lieb_tupi2.jpg">
                                <h3>￥58.00</h3>
                                <p>茵珠麗YinZhuli 春秋季新款韩版居家服女针织棉长袖情</p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!---->
        <div class="shangp_xiangq_left_biank">
            <div class="stores-infos">
                <div class="ly-stores">
                    <h2 class="fix-storesname shops-name" id="store_live800_wrap">
                        <a class="name" title="热门商品" href="#" target="_blank">热门商品</a>
                    </h2>
                    <ul class="bend_shangp_lieb">
                        <li>
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/static/images/lieb_tupi3.jpg">
                                <h3>￥58.00</h3>
                                <p>茵珠麗YinZhuli 春秋季新款韩版居家服女针织棉长袖情</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/static/images/lieb_tupi3.jpg">
                                <h3>￥58.00</h3>
                                <p>茵珠麗YinZhuli 春秋季新款韩版居家服女针织棉长袖情</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/static/images/lieb_tupi2.jpg">
                                <h3>￥58.00</h3>
                                <p>茵珠麗YinZhuli 春秋季新款韩版居家服女针织棉长袖情</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/static/images/lieb_tupi1.jpg">
                                <h3>￥58.00</h3>
                                <p>茵珠麗YinZhuli 春秋季新款韩版居家服女针织棉长袖情</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/static/images/lieb_tupi2.jpg">
                                <h3>￥58.00</h3>
                                <p>茵珠麗YinZhuli 春秋季新款韩版居家服女针织棉长袖情</p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <img src="${pageContext.request.contextPath}/static/images/lieb_tupi2.jpg">
                                <h3>￥58.00</h3>
                                <p>茵珠麗YinZhuli 春秋季新款韩版居家服女针织棉长袖情</p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!---->
    </div>
    <!--right-->
    <div class="shangp_xiangq_right">
        <!---->
        <div class="slideTxtBox_1">
            <div class="hd">
                <ul><li>商品介绍</li><li>售后保障</li><li>商品评价(500+)</li></ul>
                <div class="extra_jiar_gouw_c">
                    <a href="#">加入购物车</a>
                </div>
            </div>
            <div class="bd">
                <ul>
                    <div class="p_parameter">
                        <ol class="p_parameter_list">
                            <li title="卿城">品牌： <a href="#" target="_blank">卿城</a> </li>
                        </ol>
                        <ol class="parameter2 p_parameter_list">
                            <li title="卿城睡衣女五角星情侣款秋季棉质长袖家居服套装 五角星情侣款 165/88A(女L)">商品名称：卿城睡衣女五角星情侣款秋季棉质长袖家居服套装 五角星情侣款 165/88A(女L)</li>
                            <li title="11971841918">商品编号：11971841918</li>
                            <li title="依晴服饰内衣专营店">店铺： <a href="#" target="_blank">依晴服饰内衣专营店</a></li>
                            <li title="500.00g">商品毛重：500.00g</li>
                            <li title="中国大陆">商品产地：中国大陆</li>
                            <li title="F1751">货号：F1751</li>
                            <li title="套头">款型：套头</li>
                            <li title="卡通">风格：卡通</li>
                            <li title="中厚">厚度：中厚</li>
                            <li title="圆领">领型：圆领</li>
                            <li title="多色">颜色：多色</li>
                            <li title="棉质">材质：棉质</li>
                            <li title="卡通">图案：卡通</li>
                            <li title="情侣">人群：情侣</li>
                            <li title="秋季">季节：秋季</li>
                            <li title="长袖">袖长：长袖</li>
                            <li title="套头">衣门襟：套头</li>
                            <li title="长裤">裤长：长裤</li>
                            <li title="M，L，XL，XXL">尺码：M，L，XL，XXL</li>
                            <li title="其它">裙长：其它</li>
                            <li title="可外穿">是否可外穿：可外穿</li>
                            <li title="套装">款式：套装</li>
                            <li title="衣裤两件套">组合形式：衣裤两件套</li>
                        </ol>
                    </div>
                    <div class="detail_content_wrap">
                        <img src="${pageContext.request.contextPath}/static/images/tu_001.jpg">
                        <img src="${pageContext.request.contextPath}/static/images/tu_002.jpg">
                        <img src="${pageContext.request.contextPath}/static/images/tu_003.jpg">
                        <img src="${pageContext.request.contextPath}/static/images/tu_004.jpg">
                    </div>
                    <div class="shouh_baoz">
                        <div class="mt">
                            <h3>售后保障</h3>
                        </div>
                        <!---->
                        <div class="mc">
                            <div class="item-detail item-detail-copyright">
                                <div class="serve-agree-bd">
                                    <dl>
                                        <dt>
                                            <i class="goods"></i>
                                            <strong>卖家服务</strong>
                                        </dt>
                                        <dd>
                                        </dd>
                                        <dt>
                                            <i class="goods"></i>
                                            <strong>正品行货</strong>
                                        </dt>
                                        <dd>
                                            wangid平台卖家销售并发货的商品，由卖家提供发票和相应的售后服务。请您放心购买！<br>
                                            注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！
                                        </dd>

                                    </dl>
                                </div>
                                <div id="state">
                                    <strong>权利声明：</strong><br>MyShop上的所有商品信息、客户评价、商品咨询、网友讨论等内容，是京东重要的经营资源，未经许可，禁止非法转载使用。
                                    <p><b>注：</b>本站商品信息均来自于合作方，其真实性、准确性和合法性由信息拥有者（合作方）负责。本站不提供任何保证，并不承担任何法律责任。</p>
                                </div>
                            </div>
                        </div>
                        <!---->
                    </div>
                    <!---->
                    <div class="shouh_baoz_2">
                        <div class="mt"><h3>商品评价</h3></div>
                        <div class="mc">
                            <div class="comment-info J-comment-info">
                                <div class="comment-percent">
                                    <strong class="percent-tit">好评度</strong>
                                    <div class="percent-con">99<span>%</span></div>
                                </div>
                            </div>
                            <!---->
                            <div class="ETab">
                                <div class="tab-main small">
                                    <ol class="filter-list">
                                        <li class="current_xq" data-num="4900"><a href="#">全部评价<em>(4900+)</em></a></li>
                                        <li ><a href="#">晒图<em>(60)</em></a></li>
                                        <li class="J-addComment"><a href="#">追评<em>(8)</em></a></li>
                                        <li><a href="#">好评<em>(4900+)</em></a></li><li>
                                        <a href="#">中评<em>(40+)</em></a></li>
                                        <li><a href="#">差评<em>(20+)</em></a></li>
                                        <li class="comm-curr-sku"><span><input type="checkbox"></span><label>只看当前商品评价</label></li>
                                    </ol>
                                    <div class="_extra_a">
                                        <div class="sort-select">
                                            <div class="current_tc"><span class="J-current-sortType">推荐排序</span><i></i></div>
                                            <div class="others">
                                                <div class="curr"><span class="J-current-sortType">推荐排序</span><i></i></div>
                                                <ol>
                                                    <li class="J-sortType-item">推荐排序</li>
                                                    <li class="J-sortType-item">时间排序</li>
                                                </ol>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!---->
                        <div class="tab_con">
                            <ol class="replyListWrap">
                                <li class="oh_de">
                                    <div class="reply-left">
										<span class="detail-star bgiprd">
											<b style="width:100%" class="bgiprd"></b>
										</span>
                                        <p>收货后1天评论</p>
                                        <p><a target="_blank" href="//review.gome.com.cn/P136937461.html">2017-09-22 12:44</a></p>
                                        <p><span>白色 M码</span></p>
                                    </div>
                                    <div class="reply-center">
                                        <p>正品行货，很棒</p>
                                        <div id="content">
                                            <p>
                                                <a rel="example_group" href="${pageContext.request.contextPath}/static/images/example/9_b.jpg" title="Lorem ipsum dolor sit amet"><img alt="" src="${pageContext.request.contextPath}/static/images/example/9_s.jpg" /></a>
                                                <a rel="example_group" href="${pageContext.request.contextPath}/static/images/example/10_b.jpg" title=""><img alt="" src="${pageContext.request.contextPath}/static/images/example/10_s.jpg" /></a>
                                                <a rel="example_group" href="${pageContext.request.contextPath}/static/images/example/11_b.jpg" title=""><img alt="" src="${pageContext.request.contextPath}/static/images/example/11_s.jpg" /></a>
                                                <a rel="example_group" href="${pageContext.request.contextPath}/static/images/example/12_b.jpg" title=""><img class="last" alt="" src="${pageContext.request.contextPath}/static/images/example/12_s.jpg" /></a>
                                            </p>

                                        </div>
                                    </div>
                                    <div class="reply-right">
                                        <div class="reply_avatar">
                                            <img src="${pageContext.request.contextPath}/static/images/7_170312181624_2.jpg">
                                            <span class="reply_avatar_userName">祢夏了夏天</span>
                                        </div>
                                        <p class="profileGrade"><span class="viplevel">V2会员</span><span class="area">石家庄市</span></p>
                                    </div>
                                </li>
                                <li class="oh_de">
                                    <div class="reply-left">
										<span class="detail-star bgiprd">
											<b style="width:20%" class="bgiprd"></b>
										</span>
                                        <p>收货后1天评论</p>
                                        <p><a target="_blank" href="//review.gome.com.cn/P136937461.html">2017-09-22 12:44</a></p>
                                        <p><span>白色 M码</span></p>
                                    </div>
                                    <div class="reply-center">
                                        <p>正品行货，很棒</p>
                                        <div id="content">
                                            <p>
                                                <a rel="example_group" href="${pageContext.request.contextPath}/static/images/example/9_b.jpg" title="Lorem ipsum dolor sit amet"><img alt="" src="${pageContext.request.contextPath}/static/images/example/9_s.jpg" /></a>
                                                <a rel="example_group" href="${pageContext.request.contextPath}/static/images/example/10_b.jpg" title=""><img alt="" src="${pageContext.request.contextPath}/static/images/example/10_s.jpg" /></a>
                                                <a rel="example_group" href="${pageContext.request.contextPath}/static/images/example/11_b.jpg" title=""><img alt="" src="${pageContext.request.contextPath}/static/images/example/11_s.jpg" /></a>
                                                <a rel="example_group" href="${pageContext.request.contextPath}/static/images/example/12_b.jpg" title=""><img class="last" alt="" src="${pageContext.request.contextPath}/static/images/example/12_s.jpg" /></a>
                                            </p>

                                        </div>
                                    </div>
                                    <div class="reply-right">
                                        <div class="reply_avatar">
                                            <img src="${pageContext.request.contextPath}/static/images/7_170312181624_2.jpg">
                                            <span class="reply_avatar_userName">祢夏了夏天</span>
                                        </div>
                                        <p class="profileGrade"><span class="viplevel">V2会员</span><span class="area">石家庄市</span></p>
                                    </div>
                                </li>

                                <li class="oh_de">
                                    <div class="reply-left">
										<span class="detail-star bgiprd">
											<b style="width:80%" class="bgiprd"></b>
										</span>
                                        <p>收货后1天评论</p>
                                        <p><a target="_blank" href="//review.gome.com.cn/P136937461.html">2017-09-22 12:44</a></p>
                                        <p><span>白色 M码</span></p>
                                    </div>
                                    <div class="reply-center">
                                        <p>正品行货，很棒</p>
                                    </div>
                                    <div class="reply-right">
                                        <div class="reply_avatar">
                                            <img src="${pageContext.request.contextPath}/static/images/7_170312181624_2.jpg">
                                            <span class="reply_avatar_userName">祢夏了夏天</span>
                                        </div>
                                        <p class="profileGrade"><span class="viplevel">V2会员</span><span class="area">石家庄市</span></p>
                                    </div>
                                </li>
                            </ol>
                            <div class="com-table-footer">
                                <div class="ui-page-wrap">
                                    <div class="ui-page">
                                        <a rel="1" class="ui-page-curr" href="#">1</a>
                                        <a rel="2" href="#">2</a>
                                        <a rel="3" href="#">3</a>
                                        <a rel="4" href="#">4</a>
                                        <a rel="5" href="#">5</a>
                                        <a rel="6" href="#">6</a>
                                        <span>...</span>
                                        <a rel="2" class="ui-pager-next" href="#">下一页</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!---->
                        <div class="jkdhfld">
                            <div class="mt"><h3>商品评价</h3></div>
                            <div class="consult-rt">
                                <table class="consult-form" >
                                    <caption>我要发表咨询</caption>
                                    <tbody><tr id="tr-zxlx">
                                        <th>咨询类型:&nbsp;</th>
                                        <td>
                                            <label class="cst-type" ><input type="radio" value="1" >购买咨询</label>
                                            <label class="cst-type" ><input type="radio" value="2" >促销优惠</label>
                                            <label class="cst-type" ><input type="radio" value="3" >支付问题</label>
                                            <label class="cst-type" ><input type="radio" value="4" >售后咨询</label>
                                        </td>
                                    </tr>
                                    <tr class="consul_type_wrap">
                                        <th>回复方式:&nbsp;</th>
                                        <td>
                                            <div>
                                                <label class="cst-type" for="consul_site">
                                                    <input type="radio" value="consul_site" name="hffs-type" id="consul_site" checked="checked">网站
                                                </label>
                                                <label class="cst-type" for="consul_mail">
                                                    <input type="radio" value="consul_mail" name="hffs-type" id="consul_mail">邮箱
                                                </label>
                                                <label class="cst-type" for="consul_weixin">
                                                    <input type="radio" value="consul_weixin" name="hffs-type" id="consul_weixin">微信
                                                </label>
                                            </div>
                                            <div class="weixin-sm" style="display: none;">
                                                <div class="img-w">
                                                    <img gome-src="//js.gomein.net.cn/f2eimage/ui/customer_service_weixin.jpg" alt="手机下单更优惠" title="手机下单更优惠">
                                                </div>
                                                <div class="text">
                                                    <p>扫描二维码，关注客服中心公众号，我们将为您提供更加快速便捷的咨询服务</p>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="consul_type_wrap" id="email-address" style="display: none;">
                                        <th>邮箱地址:&nbsp;</th>
                                        <td>
                                            <input type="text" value="请填写您的邮箱，以便客服回复！" maxlength="50" id="consul_type_text" name="consul_type_text">
                                            <span class="email-error"></span>
                                        </td>
                                    </tr>
                                    <tr id="gm-zxnr">
                                        <th>咨询内容:&nbsp;</th>
                                        <td>
                                            <div class="txt-area-wrap">
                                                <textarea name="" id="quesTxt" class="txt-area"></textarea>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr id="gm-submit">
                                        <th></th>
                                        <td><a class="consult-smt-btn redlink">提交</a><span class="tips">0/200</span></td>
                                    </tr>
                                    </tbody></table>
                                <div class="consult-lt">
                                    <dl class="consult-question clearfix">
                                        <dt>常见问题</dt>
                                        <dd>•<a href="#" target="_blank" title="忘记密码如何操作？">忘记密码如何操作？</a></dd>
                                        <dd>•<a href="#" target="_blank" title="如何增强账户安全系数？">如何增强账户安全系数？</a></dd>
                                        <dd>•<a href="#" target="_blank" title="怎么操作商品签收？">怎么操作商品签收？</a></dd>
                                        <dd>•<a href="#" target="_blank" title="如何电话订购？">如何电话订购？</a></dd>
                                        <dd>•<a href="#" target="_blank" title="如何查询商品参数及包装清单？">如何查询商品参数及包装清单？</a></dd>
                                        <dd>•<a href="#" target="_blank" title="商品无货怎么办？">商品无货怎么办？</a></dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                        <!---->
                    </div>
                    <!---->
                </ul>
                <!--售后保障-->
                <ul>
                    <div class="shouh_baoz">
                        <div class="mt">
                            <h3>售后保障</h3>
                        </div>
                        <!---->
                        <div class="mc">
                            <div class="item-detail item-detail-copyright">
                                <div class="serve-agree-bd">
                                    <dl>
                                        <dt>
                                            <i class="goods"></i>
                                            <strong>卖家服务</strong>
                                        </dt>
                                        <dd>
                                        </dd>
                                        <dt>
                                            <i class="goods"></i>
                                            <strong>正品行货</strong>
                                        </dt>
                                        <dd>
                                            wangid平台卖家销售并发货的商品，由卖家提供发票和相应的售后服务。请您放心购买！<br>
                                            注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，本司不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若本商城没有及时更新，请大家谅解！
                                        </dd>

                                    </dl>
                                </div>
                                <div id="state">
                                    <strong>权利声明：</strong><br>MyShop上的所有商品信息、客户评价、商品咨询、网友讨论等内容，是京东重要的经营资源，未经许可，禁止非法转载使用。
                                    <p><b>注：</b>本站商品信息均来自于合作方，其真实性、准确性和合法性由信息拥有者（合作方）负责。本站不提供任何保证，并不承担任何法律责任。</p>
                                </div>
                            </div>
                        </div>
                        <!---->
                    </div>
                    <div class="shouh_baoz_2">
                        <div class="mt"><h3>商品评价</h3></div>
                        <div class="mc">
                            <div class="comment-info J-comment-info">
                                <div class="comment-percent">
                                    <strong class="percent-tit">好评度</strong>
                                    <div class="percent-con">99<span>%</span></div>
                                </div>
                            </div>
                            <!---->
                            <div class="ETab">
                                <div class="tab-main small">
                                    <ol class="filter-list">
                                        <li class="current_xq" data-num="4900"><a href="#">全部评价<em>(4900+)</em></a></li>
                                        <li><a href="#">晒图<em>(60)</em></a></li>
                                        <li class="J-addComment"><a href="#">追评<em>(8)</em></a></li>
                                        <li><a href="#">好评<em>(4900+)</em></a></li><li>
                                        <a href="#">中评<em>(40+)</em></a></li>
                                        <li><a href="#">差评<em>(20+)</em></a></li>
                                        <li class="comm-curr-sku"><span><input type="checkbox"></span><label>只看当前商品评价</label></li>
                                    </ol>
                                    <div class="_extra_a">
                                        <div class="sort-select">
                                            <div class="current_tc"><span class="J-current-sortType">推荐排序</span><i></i></div>
                                            <div class="others">
                                                <div class="curr"><span class="J-current-sortType">推荐排序</span><i></i></div>
                                                <ol>
                                                    <li class="J-sortType-item">推荐排序</li>
                                                    <li class="J-sortType-item">时间排序</li>
                                                </ol>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!---->
                        <div class="tab_con">
                            <ol class="replyListWrap">
                                <li class="oh_de">
                                    <div class="reply-left">
										<span class="detail-star bgiprd">
											<b style="width:100%" class="bgiprd"></b>
										</span>
                                        <p>收货后1天评论</p>
                                        <p><a target="_blank" href="//review.gome.com.cn/P136937461.html">2017-09-22 12:44</a></p>
                                        <p><span>白色 M码</span></p>
                                    </div>
                                    <div class="reply-center">
                                        <p>正品行货，很棒</p>
                                    </div>
                                    <div class="reply-right">
                                        <div class="reply_avatar">
                                            <img src="${pageContext.request.contextPath}/static/images/7_170312181624_2.jpg">
                                            <span class="reply_avatar_userName">祢夏了夏天</span>
                                        </div>
                                        <p class="profileGrade"><span class="viplevel">V2会员</span><span class="area">石家庄市</span></p>
                                    </div>
                                </li>
                                <li class="oh_de">
                                    <div class="reply-left">
										<span class="detail-star bgiprd">
											<b style="width:20%" class="bgiprd"></b>
										</span>
                                        <p>收货后1天评论</p>
                                        <p><a target="_blank" href="//review.gome.com.cn/P136937461.html">2017-09-22 12:44</a></p>
                                        <p><span>白色 M码</span></p>
                                    </div>
                                    <div class="reply-center">
                                        <p>正品行货，很棒</p>
                                    </div>
                                    <div class="reply-right">
                                        <div class="reply_avatar">
                                            <img src="${pageContext.request.contextPath}/static/images/7_170312181624_2.jpg">
                                            <span class="reply_avatar_userName">祢夏了夏天</span>
                                        </div>
                                        <p class="profileGrade"><span class="viplevel">V2会员</span><span class="area">石家庄市</span></p>
                                    </div>
                                </li>
                                <li class="oh_de">
                                    <div class="reply-left">
										<span class="detail-star bgiprd">
											<b style="width:80%" class="bgiprd"></b>
										</span>
                                        <p>收货后1天评论</p>
                                        <p><a target="_blank" href="//review.gome.com.cn/P136937461.html">2017-09-22 12:44</a></p>
                                        <p><span>白色 M码</span></p>
                                    </div>
                                    <div class="reply-center">
                                        <p>正品行货，很棒</p>
                                    </div>
                                    <div class="reply-right">
                                        <div class="reply_avatar">
                                            <img src="${pageContext.request.contextPath}/static/images/7_170312181624_2.jpg">
                                            <span class="reply_avatar_userName">祢夏了夏天</span>
                                        </div>
                                        <p class="profileGrade"><span class="viplevel">V2会员</span><span class="area">石家庄市</span></p>
                                    </div>
                                </li>
                            </ol>
                            <div class="com-table-footer">
                                <div class="ui-page-wrap">
                                    <div class="ui-page">
                                        <a rel="1" class="ui-page-curr" href="#">1</a>
                                        <a rel="2" href="#">2</a>
                                        <a rel="3" href="#">3</a>
                                        <a rel="4" href="#">4</a>
                                        <a rel="5" href="#">5</a>
                                        <a rel="6" href="#">6</a>
                                        <span>...</span>
                                        <a rel="2" class="ui-pager-next" href="#">下一页</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!---->
                        <div class="jkdhfld">
                            <div class="mt"><h3>商品评价</h3></div>
                            <div class="consult-rt">
                                <table class="consult-form">
                                    <caption>我要发表咨询</caption>
                                    <tbody><tr id="tr-zxlx">
                                        <th>咨询类型:&nbsp;</th>
                                        <td>
                                            <label class="cst-type"><input type="radio" value="1">购买咨询</label>
                                            <label class="cst-type"><input type="radio" value="2">促销优惠</label>
                                            <label class="cst-type"><input type="radio" value="3">支付问题</label>
                                            <label class="cst-type"><input type="radio" value="4">售后咨询</label>
                                        </td>
                                    </tr>
                                    <tr class="consul_type_wrap">
                                        <th>回复方式:&nbsp;</th>
                                        <td>
                                            <div>
                                                <label class="cst-type" for="consul_site">
                                                    <input type="radio" value="consul_site" name="hffs-type" id="consul_site" checked="checked">网站
                                                </label>
                                                <label class="cst-type" for="consul_mail">
                                                    <input type="radio" value="consul_mail" name="hffs-type" id="consul_mail">邮箱
                                                </label>
                                                <label class="cst-type" for="consul_weixin">
                                                    <input type="radio" value="consul_weixin" name="hffs-type" id="consul_weixin">微信
                                                </label>
                                            </div>
                                            <div class="weixin-sm" style="display: none;">
                                                <div class="img-w">
                                                    <img gome-src="//js.gomein.net.cn/f2eimage/ui/customer_service_weixin.jpg" alt="手机下单更优惠" title="手机下单更优惠">
                                                </div>
                                                <div class="text">
                                                    <p>扫描二维码，关注客服中心公众号，我们将为您提供更加快速便捷的咨询服务</p>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="consul_type_wrap" id="email-address" style="display: none;">
                                        <th>邮箱地址:&nbsp;</th>
                                        <td>
                                            <input type="text" value="请填写您的邮箱，以便客服回复！" maxlength="50" id="consul_type_text" name="consul_type_text">
                                            <span class="email-error"></span>
                                        </td>
                                    </tr>
                                    <tr id="gm-zxnr">
                                        <th>咨询内容:&nbsp;</th>
                                        <td>
                                            <div class="txt-area-wrap">
                                                <textarea name="" id="quesTxt" class="txt-area"></textarea>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr id="gm-submit">
                                        <th></th>
                                        <td><a class="consult-smt-btn redlink">提交</a><span class="tips">0/200</span></td>
                                    </tr>
                                    </tbody></table>
                                <div class="consult-lt">
                                    <dl class="consult-question clearfix">
                                        <dt>常见问题</dt>
                                        <dd>•<a href="#" target="_blank" title="忘记密码如何操作？">忘记密码如何操作？</a></dd>
                                        <dd>•<a href="#" target="_blank" title="如何增强账户安全系数？">如何增强账户安全系数？</a></dd>
                                        <dd>•<a href="#" target="_blank" title="怎么操作商品签收？">怎么操作商品签收？</a></dd>
                                        <dd>•<a href="#" target="_blank" title="如何电话订购？">如何电话订购？</a></dd>
                                        <dd>•<a href="#" target="_blank" title="如何查询商品参数及包装清单？">如何查询商品参数及包装清单？</a></dd>
                                        <dd>•<a href="#" target="_blank" title="商品无货怎么办？">商品无货怎么办？</a></dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                        <!---->
                    </div>
                </ul>
                <!--商品评价-->
                <ul>
                    <div class="shouh_baoz_2">
                        <div class="mt"><h3>商品评价</h3></div>
                        <div class="mc">
                            <div class="comment-info J-comment-info">
                                <div class="comment-percent">
                                    <strong class="percent-tit">好评度</strong>
                                    <div class="percent-con">99<span>%</span></div>
                                </div>
                            </div>
                            <!---->
                            <div class="ETab">
                                <div class="tab-main small">
                                    <ol class="filter-list">
                                        <li class="current_xq" data-num="4900"><a href="#">全部评价<em>(4900+)</em></a></li>
                                        <li><a href="#">晒图<em>(60)</em></a></li>
                                        <li class="J-addComment"><a href="#">追评<em>(8)</em></a></li>
                                        <li><a href="#">好评<em>(4900+)</em></a></li><li>
                                        <a href="#">中评<em>(40+)</em></a></li>
                                        <li><a href="#">差评<em>(20+)</em></a></li>
                                        <li class="comm-curr-sku"><span><input type="checkbox"></span><label>只看当前商品评价</label></li>
                                    </ol>
                                    <div class="_extra_a">
                                        <div class="sort-select">
                                            <div class="current_tc"><span class="J-current-sortType">推荐排序</span><i></i></div>
                                            <div class="others">
                                                <div class="curr"><span class="J-current-sortType">推荐排序</span><i></i></div>
                                                <ol>
                                                    <li class="J-sortType-item">推荐排序</li>
                                                    <li class="J-sortType-item">时间排序</li>
                                                </ol>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!---->
                        <div class="tab_con">
                            <ol class="replyListWrap">
                                <li class="oh_de">
                                    <div class="reply-left">
										<span class="detail-star bgiprd">
											<b style="width:100%" class="bgiprd"></b>
										</span>
                                        <p>收货后1天评论</p>
                                        <p><a target="_blank" href="//review.gome.com.cn/P136937461.html">2017-09-22 12:44</a></p>
                                        <p><span>白色 M码</span></p>
                                    </div>
                                    <div class="reply-center">
                                        <p>正品行货，很棒</p>
                                    </div>
                                    <div class="reply-right">
                                        <div class="reply_avatar">
                                            <img src="${pageContext.request.contextPath}/static/images/7_170312181624_2.jpg">
                                            <span class="reply_avatar_userName">祢夏了夏天</span>
                                        </div>
                                        <p class="profileGrade"><span class="viplevel">V2会员</span><span class="area">石家庄市</span></p>
                                    </div>
                                </li>
                                <li class="oh_de">
                                    <div class="reply-left">
										<span class="detail-star bgiprd">
											<b style="width:20%" class="bgiprd"></b>
										</span>
                                        <p>收货后1天评论</p>
                                        <p><a target="_blank" href="//review.gome.com.cn/P136937461.html">2017-09-22 12:44</a></p>
                                        <p><span>白色 M码</span></p>
                                    </div>
                                    <div class="reply-center">
                                        <p>正品行货，很棒</p>


                                    </div>
                                    <div class="reply-right">
                                        <div class="reply_avatar">
                                            <img src="${pageContext.request.contextPath}/static/images/7_170312181624_2.jpg">
                                            <span class="reply_avatar_userName">祢夏了夏天</span>
                                        </div>
                                        <p class="profileGrade"><span class="viplevel">V2会员</span><span class="area">石家庄市</span></p>
                                    </div>
                                </li>
                                <li class="oh_de">
                                    <div class="reply-left">
										<span class="detail-star bgiprd">
											<b style="width:80%" class="bgiprd"></b>
										</span>
                                        <p>收货后1天评论</p>
                                        <p><a target="_blank" href="//review.gome.com.cn/P136937461.html">2017-09-22 12:44</a></p>
                                        <p><span>白色 M码</span></p>
                                    </div>
                                    <div class="reply-center">
                                        <p>正品行货，很棒</p>
                                    </div>
                                    <div class="reply-right">
                                        <div class="reply_avatar">
                                            <img src="${pageContext.request.contextPath}/static/images/7_170312181624_2.jpg">
                                            <span class="reply_avatar_userName">祢夏了夏天</span>
                                        </div>
                                        <p class="profileGrade"><span class="viplevel">V2会员</span><span class="area">石家庄市</span></p>
                                    </div>
                                </li>
                            </ol>
                            <div class="com-table-footer">
                                <div class="ui-page-wrap">
                                    <div class="ui-page">
                                        <a rel="1" class="ui-page-curr" href="#">1</a>
                                        <a rel="2" href="#">2</a>
                                        <a rel="3" href="#">3</a>
                                        <a rel="4" href="#">4</a>
                                        <a rel="5" href="#">5</a>
                                        <a rel="6" href="#">6</a>
                                        <span>...</span>
                                        <a rel="2" class="ui-pager-next" href="#">下一页</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!---->
                        <div class="jkdhfld">
                            <div class="mt"><h3>商品评价</h3></div>
                            <div class="consult-rt">
                                <table class="consult-form">
                                    <caption>我要发表咨询</caption>
                                    <tbody><tr id="tr-zxlx">
                                        <th>咨询类型:&nbsp;</th>
                                        <td>
                                            <label class="cst-type"><input type="radio" value="1">购买咨询</label>
                                            <label class="cst-type"><input type="radio" value="2">促销优惠</label>
                                            <label class="cst-type"><input type="radio" value="3">支付问题</label>
                                            <label class="cst-type"><input type="radio" value="4">售后咨询</label>
                                        </td>
                                    </tr>
                                    <tr class="consul_type_wrap">
                                        <th>回复方式:&nbsp;</th>
                                        <td>
                                            <div>
                                                <label class="cst-type" for="consul_site">
                                                    <input type="radio" value="consul_site" name="hffs-type" id="consul_site" checked="checked">网站
                                                </label>
                                                <label class="cst-type" for="consul_mail">
                                                    <input type="radio" value="consul_mail" name="hffs-type" id="consul_mail">邮箱
                                                </label>
                                                <label class="cst-type" for="consul_weixin">
                                                    <input type="radio" value="consul_weixin" name="hffs-type" id="consul_weixin">微信
                                                </label>
                                            </div>
                                            <div class="weixin-sm" style="display: none;">
                                                <div class="img-w">
                                                    <img gome-src="//js.gomein.net.cn/f2eimage/ui/customer_service_weixin.jpg" alt="手机下单更优惠" title="手机下单更优惠">
                                                </div>
                                                <div class="text">
                                                    <p>扫描二维码，关注客服中心公众号，我们将为您提供更加快速便捷的咨询服务</p>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr class="consul_type_wrap" id="email-address" style="display: none;">
                                        <th>邮箱地址:&nbsp;</th>
                                        <td>
                                            <input type="text" value="请填写您的邮箱，以便客服回复！" maxlength="50" id="consul_type_text" name="consul_type_text">
                                            <span class="email-error"></span>
                                        </td>
                                    </tr>
                                    <tr id="gm-zxnr">
                                        <th>咨询内容:&nbsp;</th>
                                        <td>
                                            <div class="txt-area-wrap">
                                                <textarea name="" id="quesTxt" class="txt-area"></textarea>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr id="gm-submit">
                                        <th></th>
                                        <td><a class="consult-smt-btn redlink">提交</a><span class="tips">0/200</span></td>
                                    </tr>
                                    </tbody></table>
                                <div class="consult-lt">
                                    <dl class="consult-question clearfix">
                                        <dt>常见问题</dt>
                                        <dd>•<a href="#" target="_blank" title="忘记密码如何操作？">忘记密码如何操作？</a></dd>
                                        <dd>•<a href="#" target="_blank" title="如何增强账户安全系数？">如何增强账户安全系数？</a></dd>
                                        <dd>•<a href="#" target="_blank" title="怎么操作商品签收？">怎么操作商品签收？</a></dd>
                                        <dd>•<a href="#" target="_blank" title="如何电话订购？">如何电话订购？</a></dd>
                                        <dd>•<a href="#" target="_blank" title="如何查询商品参数及包装清单？">如何查询商品参数及包装清单？</a></dd>
                                        <dd>•<a href="#" target="_blank" title="商品无货怎么办？">商品无货怎么办？</a></dd>
                                    </dl>
                                </div>
                            </div>
                        </div>
                        <!---->
                    </div>
                </ul>
            </div>
        </div>
        <script type="text/javascript">jQuery(".slideTxtBox_1").slide({trigger:"click"});</script>
        <!---->
    </div>
</div>




<!--商品详情结束-->
<!--猜你喜欢-->
<div class="cain_xih">
    <div class="mt">
        <h2 class="title">猜你喜欢</h2>
        <div class="extra">
            <a href="#" class="change"><i class="ico"></i><span class="txt">换一批</span></a>
        </div>
    </div>
    <ul class="cain_xihuan_neir">
        <li>
            <div class="item_pic"><a href="#"><img src="${pageContext.request.contextPath}/static/images/lieb_tupi1.jpg"></a></div>
            <div class="cain_xih_biaot"><a href="#">伊秋梦紫 2017夏季新款韩版小清新中长款碎花雪纺连衣裙8819(米白色 XXL棉麻连衣裙，舒适透气，MM</a></div>
            <div class="cain_xih_jiaq"><p>￥560.00</p></div>
        </li>
        <li>
            <div class="item_pic"><a href="#"><img src="${pageContext.request.contextPath}/static/images/lieb_tupi2.jpg"></a></div>
            <div class="cain_xih_biaot"><a href="#">伊秋梦紫 2017夏季新款韩版小清新中长款碎花雪纺连衣裙8819(米白色 XXL棉麻连衣裙，舒适透气，MM</a></div>
            <div class="cain_xih_jiaq"><p>￥560.00</p></div>
        </li>
        <li>
            <div class="item_pic"><a href="#"><img src="${pageContext.request.contextPath}/static/images/lieb_tupi3.jpg"></a></div>
            <div class="cain_xih_biaot"><a href="#">伊秋梦紫 2017夏季新款韩版小清新中长款碎花雪纺连衣裙8819(米白色 XXL棉麻连衣裙，舒适透气，MM</a></div>
            <div class="cain_xih_jiaq"><p>￥560.00</p></div>
        </li>
        <li>
            <div class="item_pic"><a href="#"><img src="${pageContext.request.contextPath}/static/images/lieb_tupi1.jpg"></a></div>
            <div class="cain_xih_biaot"><a href="#">伊秋梦紫 2017夏季新款韩版小清新中长款碎花雪纺连衣裙8819(米白色 XXL棉麻连衣裙，舒适透气，MM</a></div>
            <div class="cain_xih_jiaq"><p>￥560.00</p></div>
        </li>
        <li>
            <div class="item_pic"><a href="#"><img src="${pageContext.request.contextPath}/static/images/lieb_tupi3.jpg"></a></div>
            <div class="cain_xih_biaot"><a href="#">伊秋梦紫 2017夏季新款韩版小清新中长款碎花雪纺连衣裙8819(米白色 XXL棉麻连衣裙，舒适透气，MM</a></div>
            <div class="cain_xih_jiaq"><p>￥560.00</p></div>
        </li>
        <li>
            <div class="item_pic"><a href="#"><img src="${pageContext.request.contextPath}/static/images/lieb_tupi2.jpg"></a></div>
            <div class="cain_xih_biaot"><a href="#">伊秋梦紫 2017夏季新款韩版小清新中长款碎花雪纺连衣裙8819(米白色 XXL棉麻连衣裙，舒适透气，MM</a></div>
            <div class="cain_xih_jiaq"><p>￥560.00</p></div>
        </li>
    </ul>
</div>

<jsp:include page="../includes/footer.jsp"/>

</body>
</html>


<script type="text/javascript">
    $(document).ready(function() {
        /*
        *   Examples - images
        */

        $("a#example1").fancybox();

        $("a#example2").fancybox({
            'overlayShow'	: false,
            'transitionIn'	: 'elastic',
            'transitionOut'	: 'elastic'
        });

        $("a#example3").fancybox({
            'transitionIn'	: 'none',
            'transitionOut'	: 'none'
        });

        $("a#example4").fancybox({
            'opacity'		: true,
            'overlayShow'	: false,
            'transitionIn'	: 'elastic',
            'transitionOut'	: 'none'
        });

        $("a#example5").fancybox();

        $("a#example6").fancybox({
            'titlePosition'		: 'outside',
            'overlayColor'		: '#000',
            'overlayOpacity'	: 0.9
        });

        $("a#example7").fancybox({
            'titlePosition'	: 'inside'
        });

        $("a#example8").fancybox({
            'titlePosition'	: 'over'
        });

        $("a[rel=example_group]").fancybox({
            'transitionIn'		: 'none',
            'transitionOut'		: 'none',
            'titlePosition' 	: 'over',
            'titleFormat'		: function(title, currentArray, currentIndex, currentOpts) {
                return '<span id="fancybox-title-over">Image ' + (currentIndex + 1) + ' / ' + currentArray.length + (title.length ? ' &nbsp; ' + title : '') + '</span>';
            }
        });

        /*
        *   Examples - various
        */

        $("#various1").fancybox({
            'titlePosition'		: 'inside',
            'transitionIn'		: 'none',
            'transitionOut'		: 'none'
        });

        $("#various2").fancybox();

        $("#various3").fancybox({
            'width'				: '75%',
            'height'			: '75%',
            'autoScale'			: false,
            'transitionIn'		: 'none',
            'transitionOut'		: 'none',
            'type'				: 'iframe'
        });

        $("#various4").fancybox({
            'padding'			: 0,
            'autoScale'			: false,
            'transitionIn'		: 'none',
            'transitionOut'		: 'none'
        });
    });
</script>