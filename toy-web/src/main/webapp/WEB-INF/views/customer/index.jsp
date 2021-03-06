<%--
  Created by IntelliJ IDEA.
  User: fu
  Date: 2017/4/3
  Time: 9:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="_meta.jsp"%>
    <title>宠物用品商城-首页</title>
    <link href="${ctx}/static/style/style.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="${ctx}/static/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/jquery.bxslider.js"></script>
    <script>
        $(function(){
            //banner轮播
            $('.slider1').bxSlider({
                auto: true
            });
        });
    </script>
</head>

<body>
<%@include file="_head.jsp"%>

<!-- 首页主体部分 begin -->
<div class="index">
    <div class="index_main w1200 ovh">
        <div class="left fl">
            <div class="sort">
                <h2>产品分类</h2>
                <ul>
                    <li><a href="${ctx}/toy/list?type=婴儿类型">婴儿专区(0-3岁)</a></li>
                    <li><a href="${ctx}/toy/list?type=幼儿类型">幼儿专区(3-6岁)</a></li>
                    <li><a href="${ctx}/toy/list?type=儿童类型">儿童专区(6-11岁)</a></li>
                    <li><a href="${ctx}/toy/list?type=少年类型">少年专区(11-15岁)</a></li>
                    <li><a href="${ctx}/toy/list?type=青年类型">青年专区(>15岁)</a></li>
                </ul>
            </div>
            <div class="hot">
                <h2>热销产品 Hot-sale product</h2>
                <ul>
                <c:forEach items="${hotToys}" var="hotToys">
                    <li>
                        <a href="${ctx}/toy/toyDetail?id=${hotToys.id}">
                            <div class="img">
                                <img src="/uploadImage/${fn:split(hotToys.picture,',')[0]}" alt=""/>
                            </div>
                            <div class="text">
                                <h3>${hotToys.name}</h3>
                                <p>${hotToys.decription}</p>
                                <span>￥${hotToys.price}</span>
                            </div>
                        </a>
                    </li>
                </c:forEach>
                </ul>
            </div>
            <div class="left_adv">
                <div class="adv">
                    <a href="###"><img src="${ctx}/static/img/index_l1.jpg" alt=""/></a>
                </div>
            </div>
        </div>
        <div class="right fr">
            <div class="banner">
                <div class="slider1">
                    <div><a href="###"><img src="${ctx}/static/img/index_banner1.jpg" alt=""/></a></div>
                    <div><a href="###"><img src="${ctx}/static/img/index_banner1.jpg" alt=""/></a></div>
                    <div><a href="###"><img src="${ctx}/static/img/index_banner1.jpg" alt=""/></a></div>
                </div>
            </div>
            <div class="right_adv">
                <div class="adv">
                    <a href="###"><img src="${ctx}/static/img/index_adv1.jpg" alt=""/></a>
                </div>
                <div class="adv">
                    <a href="###"><img src="${ctx}/static/img/index_adv2.jpg" alt=""/></a>
                </div>
                <div class="adv last">
                    <a href="###"><img src="${ctx}/static/img/index_adv3.jpg" alt=""/></a>
                </div>
            </div>
            <div class="new">
                <div class="title"><span>NEW <b>新品展示</b> SHOW</span><i></i></div>
                <div class="list_con">
                    <ul class="ovh">
                        <c:forEach items="${toys}" var="toys">
                            <li>
                                <a href="${ctx}/toy/toyDetail?id=${toys.id}">
                                    <div class="img">
                                        <img src="/uploadImage/${fn:split(toys.picture,',')[0]}" alt=""/>
                                    </div>
                                    <div class="text">
                                        <h3>${toys.name}</h3>
                                        <h4>${toys.decription}</h4>
                                        <p><b>￥${toys.price}</b><span>￥${toys.price}</span></p>
                                    </div>
                                </a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 首页主体部分 end -->

<!-- 底部 begin -->
<div class="footer">
    <div class="footer_main w1200">
        <div class="footer_t ovh">
            <dl class="dl_1">
                <dt></dt>
                <dd>
                    <h2>正品保证</h2>
                    <h3>品质护航 购物无忧</h3>
                </dd>
            </dl>
            <dl class="dl_2">
                <dt></dt>
                <dd>
                    <h2>30天无理由退换货</h2>
                    <h3>为您提供无忧售后保障</h3>
                </dd>
            </dl>
            <dl class="dl_3">
                <dt></dt>
                <dd>
                    <h2>专业仓储</h2>
                    <h3> 低温、通风、干燥以保证产品品质</h3>
                </dd>
            </dl>
            <dl class="dl_4">
                <dt></dt>
                <dd>
                    <h2>快速物流</h2>
                    <h3>不超过24小时送达</h3>
                </dd>
            </dl>
            <dl class="dl_5">
                <dt></dt>
                <dd>
                    <h2>贴心服务</h2>
                    <h3>全心全意为您服务</h3>
                </dd>
            </dl>
        </div>
        <div class="footer_b ovh">
            <div class="contact fl">
                <h2>400-123-654</h2>
                <h3>全国免费咨询热线</h3>
                <div class="time">
                    <b>工作<br/>时间</b>
                    <p>周一至周日：09:00-18:00</p>
                </div>
            </div>
            <div class="foot_menu fr">
                <dl>
                    <dt>购物指南</dt>
                    <dd><a href="reg.html">免费注册</a></dd>
                    <dd><a href="###">开通支付宝</a></dd>
                    <dd><a href="###">支付宝充值</a></dd>
                </dl>
                <dl>
                    <dt>产品保障</dt>
                    <dd><a href="###">发票保障</a></dd>
                    <dd><a href="###">售后规则</a></dd>
                    <dd><a href="###">缺货赔付</a></dd>
                </dl>
                <dl>
                    <dt>支付方式</dt>
                    <dd><a href="###">快捷支付</a></dd>
                    <dd><a href="###">信用卡</a></dd>
                    <dd><a href="###">余额宝</a></dd>
                    <dd><a href="###">蚂蚁花呗</a></dd>
                    <dd><a href="###">货到付款</a></dd>
                </dl>
                <dl>
                    <dt>售后服务</dt>
                    <dd><a href="###">售后政策</a></dd>
                    <dd><a href="###">价格保护</a></dd>
                    <dd><a href="###">退款说明</a></dd>
                    <dd><a href="###">返修/退换货</a></dd>
                    <dd><a href="###">取消订单</a></dd>
                </dl>
            </div>
        </div>
    </div>
</div>
<div class="copyright">
    <div class="copyright_main w1200">
        <p class="fl">版权所有：天津城建大学计算机与信息工程学院 津ICP备案：12345678号</p>
        <div class="ico fr">
            <div class="ico1 fl"><a class="bl" href="###" target="_blank"></a></div>
            <div class="ico2 fl"><a class="bl" href="###" target="_blank"></a></div>
            <div class="ico3 fl"><a class="bl" href="###" target="_blank"></a></div>
            <div class="ico4 fl"><a class="bl" href="###" target="_blank"></a></div>
        </div>
    </div>
</div>
<!-- 底部 end -->
</body>
</html>
