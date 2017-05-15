<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="_meta.jsp"%>
<title>个人收藏</title>
<link href="${ctx}/static/style/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${ctx}/static/js/jquery-1.8.3.min.js"></script>
<script>
    $(function(){
        //退出登录
        $(".out").click(function(){
            if(confirm('您确定要安全退出?')){
                location.href="index.html";
            }else{
            }
        });
    })
</script>

</head>

<body>
<%@include file="_head.jsp"%>

<!-- 购物车 begin -->
<div class="cart">
    <div class="cart_main w1200 ovh">
        <div class="left fl">
            <div class="user_photo">
                <img src="${ctx}/static/img/user_photo.jpg"/>
            </div>
            <ul>
                <li><a  href="${ctx}/cart">我的购物车<span>></span></a></li>
                <li><a href="user.html">已买到的商品<span>></span></a></li>
                <li><a  href="${ctx}/personCenter">地址信息<span>></span></a></li>
                <li><a  class="on" href="${ctx}/collection/collectionData">个人收藏<span>></span></a></li>
            </ul>
        </div>
        <div class="right fr">
            <h2>我的收藏</h2>
            <table id="cartTable" cellpadding="0" cellspacing="0">
                <tbody id="cartData">
                <c:forEach items="${toys}" var="toys">
                    <tr>
                    <td class="goods"><a href="show.html" target="_blank"><img src="/uploadImage/${toys.picture}" alt=""/></a><span><a href="show.html" target="_blank">${toys.decription}</a></span><b>颜色分类：红色</b></td>
                    <td class="price">
                    <h3>品    牌：${toys.brand}</h3>
                    <h3>市场价格：￥${toys.price}</h3>
                    <h4>价　　格：<span>￥<span class="unit_price">${toys.price}</span></span></h4>
                    </td>
                    <td class="operation">
                        <a class="pay" href="###">购买</a>
                        <a class="delete" href="javascript:;">删除</a>
                    </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<!-- 购物车 end -->

<%@include file="_down.jsp"%>
<script type="text/javascript" src="${ctx}/static/js/plugins/layer/layer.min.js"></script>
<script type="text/javascript" src="${ctx}/static/js/plugins/common/commons.js"></script>
</body>
</html>