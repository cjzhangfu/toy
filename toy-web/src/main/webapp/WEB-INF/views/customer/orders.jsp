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

<!-- 购物车 begin -->
<div class="cart">
    <div class="cart_main w1200 ovh">
        <div class="">
            <h2>下单购买</h2>
            <table id="cartTable" cellpadding="0" cellspacing="0">
                <tbody id="cartData">
                <c:forEach  items="${toys}" var="toys">
                    <tr>
                    <td class="goods"><a href="show.html" target="_blank"><img src="img/index_new_img1.jpg" alt=""/></a><span><a href="show.html" target="_blank">${toys.toysInfoBean.decription}</a></span><b>颜色分类：红色</b></td>
                    <td class="price">
                    <h3>市场价格：￥${toys.toysInfoBean.price }</h3>
                    <h4>价　　格：<span>￥<span class="unit_price">${toys.toysInfoBean.price}</span></span></h4>
                    </td>
                    <td class="">
                    <h3>购买数量：${toys.number}</h3>
                    <p class="fl">库存<span class="stock">${toys.toysInfoBean.num}</span>件</p>
                    </td>
                    <td class="subtotalPeice">￥${toys.toysInfoBean.price }*${toys.number}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        <div>
            <h2>选择地址</h2>
            <table  cellpadding="0" cellspacing="0">
                <tr>
                    <td></td>
                    <td>联系人</td>
                    <td>地址</td>
                    <td>手机号</td>
                </tr>
                <c:forEach items="${address}" var="address">
                    <tr>
                        <td><input type="radio" /></td>
                        <td>${address.contact}</td>
                        <td>${address.address}</td>
                        <td>${address.mobile}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <div class="beizhu">
            <span>添加备注：</span><textarea></textarea>
        </div>
        <h2>合计：<span class="fr">￥59</span></h2>
        <div class="btns fr">
            <button id="reset" type="reset" class="fr">取消</button>
            <button id="submitGo" type="submit" class="fr">提交付款</button>
        </div>
    </div>
</div>
<!-- 购物车 end -->

<%@include file="_down.jsp"%>
<script type="text/javascript" src="${ctx}/static/js/plugins/layer/layer.min.js"></script>
<script type="text/javascript" src="${ctx}/static/js/plugins/common/commons.js"></script>
<script>

</script>
</body>
</html>