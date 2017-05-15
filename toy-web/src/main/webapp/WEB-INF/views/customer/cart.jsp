<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="_meta.jsp"%>
<title>购物车</title>
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

<!-- 购物车 js -->
<script src="${ctx}/static/js/cart.js"></script>
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
					<li><a  class="on" href="${ctx}/cart">我的购物车<span>></span></a></li>
					<li><a href="user.html">已买到的商品<span>></span></a></li>
					<li><a  href="${ctx}/address/addressInfo">地址信息<span>></span></a></li>
					<li><a  href="${ctx}/collection/collectionData">个人收藏<span>></span></a></li>
				</ul>
			</div>
			<div class="right fr">
				<h2>我的购物车</h2>
				<table id="cartTable" cellpadding="0" cellspacing="0">
					<tbody id="cartData">

					  <%--<tr>--%>
						<%--<td class="goods"><a href="show.html" target="_blank"><img src="img/index_new_img1.jpg" alt=""/></a><span><a href="show.html" target="_blank">包郵三朵彩色許願樹盆栽擺件羊毛氈戳</a></span><b>颜色分类：红色</b></td>--%>
						<%--<td class="price">--%>
							<%--<h3>市场价格：￥165.60</h3>--%>
							<%--<h4>价　　格：<span>￥<span class="unit_price">138.00</span><span></h4>--%>
						<%--</td>--%>
						<%--<td class="quantity-form2">--%>
							<%--<a class="decrement operationSubt">-</a>--%>
							<%--<input class="quantity-text" value="1" type="text">--%>
							<%--<a class="increment operationAdd">+</a>--%>
						    <%--<p class="fl">库存<span class="stock">10</span>件</p>--%>
					 	<%--</td>--%>
						<%--<td class="subtotalPeice">￥138.00</td>--%>
						<%--<td class="operation">--%>
							<%--<a class="pay" href="###">购买</a>--%>
							<%--<a class="delete" href="javascript:;">删除</a>--%>
						<%--</td>--%>
					  <%--</tr>--%>
					  <%--<tr>--%>
						<%--<td class="goods"><a href="show.html" target="_blank"><img src="img/index_new_img1.jpg" alt=""/></a><span><a href="show.html" target="_blank">包郵三朵彩色許願樹盆栽擺件羊毛氈戳</a></span><b>颜色分类：红色</b></td>--%>
						<%--<td class="price">--%>
							<%--<h3>市场价格：￥165.60</h3>--%>
							<%--<h4>价　　格：<span>￥<span class="unit_price">138.00</span><span></h4>--%>
						<%--</td>--%>
						<%--<td class="quantity-form2">--%>
							<%--<a class="decrement operationSubt">-</a>--%>
							<%--<input class="quantity-text" value="1" type="text">--%>
							<%--<a class="increment operationAdd">+</a>--%>
						    <%--<p class="fl">库存<span class="stock">6</span>件</p>--%>
					 	<%--</td>--%>
						<%--<td class="subtotalPeice">￥138.00</td>--%>
						<%--<td class="operation">--%>
							<%--<a class="pay" href="###">购买</a>--%>
							<%--<a class="delete" href="javascript:;">删除</a>--%>
						<%--</td>--%>
					  <%--</tr>--%>
					  <%--<tr>--%>
						<%--<td class="goods"><a href="show.html" target="_blank"><img src="img/index_new_img1.jpg" alt=""/></a><span><a href="show.html" target="_blank">包郵三朵彩色許願樹盆栽擺件羊毛氈戳</a></span><b>颜色分类：红色</b></td>--%>
						<%--<td class="price">--%>
							<%--<h3>市场价格：￥165.60</h3>--%>
							<%--<h4>价　　格：<span>￥<span class="unit_price">138.00</span><span></h4>--%>
						<%--</td>--%>
						<%--<td class="quantity-form2">--%>
							<%--<a class="decrement operationSubt">-</a>--%>
							<%--<input class="quantity-text" value="1" type="text">--%>
							<%--<a class="increment operationAdd">+</a>--%>
						    <%--<p class="fl">库存<span class="stock">6</span>件</p>--%>
					 	<%--</td>--%>
						<%--<td class="subtotalPeice">￥138.00</td>--%>
						<%--<td class="operation">--%>
							<%--<a class="pay" href="###">购买</a>--%>
							<%--<a class="delete" href="javascript:;">删除</a>--%>
						<%--</td>--%>
					  <%--</tr>--%>
					  <%--<tr>--%>
						<%--<td class="goods"><a href="show.html" target="_blank"><img src="img/index_new_img1.jpg" alt=""/></a><span><a href="show.html" target="_blank">包郵三朵彩色許願樹盆栽擺件羊毛氈戳</a></span><b>颜色分类：红色</b></td>--%>
						<%--<td class="price">--%>
							<%--<h3>市场价格：￥165.60</h3>--%>
							<%--<h4>价　　格：<span>￥<span class="unit_price">138.00</span><span></h4>--%>
						<%--</td>--%>
						<%--<td class="quantity-form2">--%>
							<%--<a class="decrement operationSubt">-</a>--%>
							<%--<input class="quantity-text" value="1" type="text">--%>
							<%--<a class="increment operationAdd">+</a>--%>
						    <%--<p class="fl">库存<span class="stock">6</span>件</p>--%>
					 	<%--</td>--%>
						<%--<td class="subtotalPeice">￥138.00</td>--%>
						<%--<td class="operation">--%>
							<%--<a class="pay" href="###">购买</a>--%>
							<%--<a class="delete" href="javascript:;">删除</a>--%>
						<%--</td>--%>
					  <%--</tr>--%>
					  <%--<tr>--%>
						<%--<td class="goods"><a href="show.html" target="_blank"><img src="img/index_new_img1.jpg" alt=""/></a><span><a href="show.html" target="_blank">包郵三朵彩色許願樹盆栽擺件羊毛氈戳</a></span><b>颜色分类：红色</b></td>--%>
						<%--<td class="price">--%>
							<%--<h3>市场价格：￥165.60</h3>--%>
							<%--<h4>价　　格：<span>￥<span class="unit_price">138.00</span><span></h4>--%>
						<%--</td>--%>
						<%--<td class="quantity-form2">--%>
							<%--<a class="decrement operationSubt">-</a>--%>
							<%--<input class="quantity-text" value="1" type="text">--%>
							<%--<a class="increment operationAdd">+</a>--%>
						    <%--<p class="fl">库存<span class="stock">6</span>件</p>--%>
					 	<%--</td>--%>
						<%--<td class="subtotalPeice">￥138.00</td>--%>
						<%--<td class="operation">--%>
							<%--<a class="pay" href="###">购买</a>--%>
							<%--<a class="delete" href="javascript:;">删除</a>--%>
						<%--</td>--%>
					  <%--</tr>--%>
					  <%--<tr>--%>
						<%--<td class="goods"><a href="show.html" target="_blank"><img src="img/index_new_img1.jpg" alt=""/></a><span><a href="show.html" target="_blank">包郵三朵彩色許願樹盆栽擺件羊毛氈戳</a></span><b>颜色分类：红色</b></td>--%>
						<%--<td class="price">--%>
							<%--<h3>市场价格：￥165.60</h3>--%>
							<%--<h4>价　　格：<span>￥<span class="unit_price">138.00</span><span></h4>--%>
						<%--</td>--%>
						<%--<td class="quantity-form2">--%>
							<%--<a class="decrement operationSubt">-</a>--%>
							<%--<input class="quantity-text" value="1" type="text">--%>
							<%--<a class="increment operationAdd">+</a>--%>
						    <%--<p class="fl">库存<span class="stock">6</span>件</p>--%>
					 	<%--</td>--%>
						<%--<td class="subtotalPeice">￥138.00</td>--%>
						<%--<td class="operation">--%>
							<%--<a class="pay" href="###">购买</a>--%>
							<%--<a class="delete" href="javascript:;">删除</a>--%>
						<%--</td>--%>
					  <%--</tr>--%>
					  <%--<tr>--%>
						<%--<td class="goods"><a href="show.html" target="_blank"><img src="img/index_new_img1.jpg" alt=""/></a><span><a href="show.html" target="_blank">包郵三朵彩色許願樹盆栽擺件羊毛氈戳</a></span><b>颜色分类：红色</b></td>--%>
						<%--<td class="price">--%>
							<%--<h3>市场价格：￥165.60</h3>--%>
							<%--<h4>价　　格：<span>￥<span class="unit_price">138.00</span><span></h4>--%>
						<%--</td>--%>
						<%--<td class="quantity-form2">--%>
							<%--<a class="decrement operationSubt">-</a>--%>
							<%--<input class="quantity-text" value="1" type="text">--%>
							<%--<a class="increment operationAdd">+</a>--%>
						    <%--<p class="fl">库存<span class="stock">6</span>件</p>--%>
					 	<%--</td>--%>
						<%--<td class="subtotalPeice">￥138.00</td>--%>
						<%--<td class="operation">--%>
							<%--<a class="pay" href="###">购买</a>--%>
							<%--<a class="delete" href="javascript:;">删除</a>--%>
						<%--</td>--%>
					  <%--</tr>--%>
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