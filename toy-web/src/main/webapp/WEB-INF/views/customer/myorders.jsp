<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="_meta.jsp"%>
<title>我的订单</title>
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

<!-- 我的订单 begin -->
<div class="cart">
    <div class="cart_main w1200 ovh">
        <div class="left fl">
            <div class="user_photo">
                <img src="${ctx}/static/img/user_photo.jpg"/>
            </div>
            <ul>
                <li><a  class="on" href="${ctx}/cart">我的购物车<span>></span></a></li>
                <li><a href="${ctx}/orders/myorders">我的订单<span>></span></a></li>
                <li><a  href="${ctx}/address/addressInfo">地址信息<span>></span></a></li>
                <li><a  href="${ctx}/collection/collectionData">个人收藏<span>></span></a></li>
            </ul>
        </div>
        <div class="right fr">
            <h2>我的订单</h2>
            <table id="cartTable" cellpadding="0" cellspacing="0">
                <tbody id="cartData">

                </tbody>
            </table>
        </div>
    </div>
</div>
<!-- 购物车 end -->

<%@include file="_down.jsp"%>
<script type="text/javascript" src="${ctx}/static/js/plugins/layer/layer.min.js"></script>
<script type="text/javascript" src="${ctx}/static/js/plugins/common/commons.js"></script>
<script>
        var params={
            url:"${ctx}/orders/myordersData",
            method:"get",
        }
    ajax(params,function (data) {
        console.log(data);
    })
</script>
</body>
</html>