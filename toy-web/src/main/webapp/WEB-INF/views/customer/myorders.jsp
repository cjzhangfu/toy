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
<div class="cart order">
    <div class="cart_main w1200 ovh">
        <div class="left fl">
            <div class="user_photo">
                <img src="${ctx}/static/img/user_photo.jpg"/>
            </div>
            <ul>
                <li><a   href="${ctx}/cart">我的购物车<span>></span></a></li>
                <li><a class="on" href="${ctx}/orders/myorders">我的订单<span>></span></a></li>
                <li><a  href="${ctx}/address/addressInfo">地址信息<span>></span></a></li>
                <li><a  href="${ctx}/collection/collectionData">个人收藏<span>></span></a></li>
            </ul>
        </div>
        <div class="right fr">
            <h2>我的订单</h2>
            <div class="first" style="height: 600px;overflow: auto">

            </div>
        </div>
    </div>
</div>
<!-- 购物车 end -->

<%@include file="_down.jsp"%>
<script type="text/javascript" src="${ctx}/static/js/plugins/layer/layer.min.js"></script>
<script type="text/javascript" src="${ctx}/static/js/plugins/common/commons.js"></script>
<script type="text/javascript" src="${ctx}/static/js/moment.js"></script>
<script>
        var params={
            url:"${ctx}/orders/myordersData",
            method:"get",
        }
    ajax(params,function (result) {
        console.log(result);
        var html="";
        $.each(result,function (i,v) {
            html+='<table id="cartTable" cellpadding="0" cellspacing="0">'+
                    '<tbody id="cartData">'+
                    '<tr><td colspan="2"><h3>订单编号：'+v.number+'</h3></td></tr>'+
                    '<tr><td colspan="2"><h3>地址信息：'+v.address.contact+'--'+v.address.mobile+'</h3></td></tr>'+
                    '<tr>'+
                    '<td class="top">'
                    if(v.status=="未支付"){
                        html+='<h3>订单状态：'+v.status+'<button id="" type="submit" class="">去支付</button></h3>'
                    }else{
                        html+='<h3>订单状态：'+v.status+'</h3>'
                    }
                    html+='<h3>订单总量：'+v.total_amount+'</h3>'+
                    '<h3>支付总金额：'+v.total_price+'</h3>'+
                    '</td>'+
                    '<td class="top">'+
                    '<h3>创建时间：'+moment(v.creat_time).format('YYYY-MM-DD HH:mm:ss')+'</h3>'+
                    '<h3>下单时间：'+(v.payment_time ? moment(v.payment_time).format('YYYY-MM-DD HH:mm:ss'):"")+'</h3>'+
                    '</td>'+
                    '</tr>';
                for(var i=0;i<v.ordersToys.length;i++){
                    html+='<tr>'+
                            '<input type="hidden" class="toys_ids" value=""/>'+
                            '<td class="goods"><a href="show.html" target="_blank"><img src="/uploadImage/'+(v.ordersToys[i].toysInfoBean.picture).split(",")[0]+'" alt=""/></a><b>'+v.ordersToys[i].toysInfoBean.name+'</b></td>'+
                            '<td>'+
                            '<h3>购买数量：'+v.ordersToys[i].number+'</h3>'+
                            '<h3>价　　格：￥'+v.ordersToys[i].toysInfoBean.price+'</h3>'+
                            '</td>'+
                            '</tr>'
                }
                    html+='</tbody>'+
                    '</table>'

        })
        $(".first").html(html);
    })
</script>
</body>
</html>