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
<script src="${ctx}/static/js/orders.js"></script>
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
                        <input type="hidden" class="toys_ids" value="${toys.toysInfoBean.id}"/>
                    <td class="goods"><a href="show.html" target="_blank"><img src="/uploadImage/${fn:split(toys.toysInfoBean.picture,',')[0]}" alt=""/></a><span><a href="show.html" target="_blank">${toys.toysInfoBean.decription}</a></span><b>颜色分类：红色</b></td>
                    <td class="price">
                    <h3>市场价格：￥${toys.toysInfoBean.price }</h3>
                    <h4>价　　格：<span>￥<span class="unit_price">${toys.toysInfoBean.price}</span></span></h4>
                    </td>
                        <td class="quantity-form2">
                        <a class="decrement operationSubt">-</a>
                        <input class="quantity-text" value="${toys.number}" type="text" readonly="readonly">
                        <a class="increment operationAdd">+</a>
                        <p class="fl">库存<span class="stock">${toys.toysInfoBean.num}</span>件</p>
                        </td>
                        <td class="subtotalPeice">￥<span>${toys.number*toys.toysInfoBean.price}</span></td>
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
                        <td><input type="radio" name="radio" value="${address.id}"/></td>
                        <td>${address.contact}</td>
                        <td>${address.address}</td>
                        <td>${address.mobile}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <div class="beizhu">
            <span>添加备注：</span><textarea id="remark"></textarea>
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
    $("#submitGo").click(function(){
        var datas=[]
        var index=$("#cartData").find('tr').length;
        var total_amount=0;
        var total_price=0;
        for(var i=0;i<index;i++){
            total_amount+=parseInt($("#cartData").find('tr').eq(i).find(".quantity-text").val());
            total_price+=parseInt($("#cartData").find('tr').eq(i).find(".subtotalPeice span").text())
            datas.push({
                id:$("#cartData").find('tr').eq(i).find(".toys_ids").val(),
            ToysNum:$("#cartData").find('tr').eq(i).find(".quantity-text").val()
            })
        }
        var addressId=$("input[name='radio']:checked").val();
        var remark=$("#remark").text();
        var data={
            list:datas,
            total_amount:total_amount,
            total_price:total_price,
            address_id:addressId,
            remark:remark
        }
        $.ajax({
            url: "${ctx}/orders/payFor",
            type: "post",
            data: JSON.stringify(data),
            cache: false,
            contentType: "application/json",
            dataType:'json',
            success: function (data) {
                console.log(data);
                if(data.status=="success"){
                    layer.open({
                        title:"支付",
                        content:"确认支付￥"+data.data[0],
                        btn:['确认','取消'],
                        yes:function (index) {
                            var findId = data.data[1];
                            var params={
                                url:"${ctx}/orders/payMoney",
                                method:"post",
                                data:{
                                    id:findId
                                }
                            }
                            ajax(params,function (datass) {
                                layer.msg("支付成功！",{time:1000})
                                layer.close(index);
                            })
                        }
                    })
                }else{

                }
            },
            error: function (xhr) {

            }
        })

    })
</script>
</body>
</html>