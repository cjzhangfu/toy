<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<meta name="format-detection" content="telephone=no" />
<title>购物车</title>
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
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
<script src="js/cart.js"></script>
</head>

<body>
	<!-- 头部 begin -->
    <div class="header">
		<div class="header_main w1200">
			<p class="fl" style="display:none;">您好，请 <a href="login.jsp">[登录]</a> <a href="reg.html">[免费注册]</a></p>
			<p class="fl">梦梦，欢迎来到宠物用品商城！<a class="out" href="javascript:;">[退出]</a></p>
			<ul class="fr ovh">
				<li class="li_1"><a class="bl" href="###">手机版</a></li><span>|</span>
				<li class="li_2"><a class="bl" href="help.html">帮助中心</a></li><span>|</span>
				<li class="li_3" id="collectBox"><a class="bl" href="cart.html">购物车<b>0</b>件</a></li><span>|</span>
				<li class="li_4"><a class="bl" href="user.html">个人中心</a></li>
			</ul>
		</div>
	</div>
	<div class="header2">
		<div class="header2_main w1200">
			<div class="logo fl"><a class="bl" href="index.html"><img src="img/index_logo.png" alt=""></a></div>
			<div class="search_box fr">
				<form>
					<input id="search" class="search" type="text" placeholder="宠物罐头   磨牙棒   满额立减"/>
					<input class="submit" type="submit" value="" />
				</form>
			</div>
		</div>
	</div>
	<div class="nav">
		<div class="nav_main w1200">
			<ul class="ovh">
				<li><a href="list.jsp">首页</a></li><span>|</span>
				<li><a href="list.jsp">婴儿专区(0-3岁)</a></li><span>|</span>
				<li><a href="list.jsp">幼儿专区(3-6岁)</a></li><span>|</span>
				<li><a href="list.jsp">儿童专区(6-11岁)</a></li><span>|</span>
				<li><a href="list.jsp">少年专区(11-15岁)</a></li><span>|</span>
				<li><a href="list.jsp">青年专区(>15岁)</a></li><span>|</span>
				<li><a href="list.jsp">周边专区</a></li>
			</ul>
		</div>
	</div>	
	<!-- 头部 end -->
	 
	<!-- 购物车 begin -->
	<div class="cart">
		<div class="cart_main w1200 ovh">
			<div class="left fl">
				<div class="user_photo">
					<img src="img/user_photo.jpg"/>
				</div>
				<ul>
					<li><a class="on" href="cart.html">我的购物车<span>></span></a></li>
					<li><a href="user.html">已买到的商品<span>></span></a></li>
					<li><a href="data.html">完善个人资料<span>></span></a></li>
				</ul>
			</div>
			<div class="right fr">
				<h2>我的购物车</h2>
				<table id="cartTable" cellpadding="0" cellspacing="0">
					<tbody>
					  <tr>
						<td class="goods"><a href="show.html" target="_blank"><img src="img/index_new_img1.jpg" alt=""/></a><span><a href="show.html" target="_blank">包郵三朵彩色許願樹盆栽擺件羊毛氈戳</a></span><b>颜色分类：红色</b></td>
						<td class="price">
							<h3>市场价格：￥165.60</h3>
							<h4>价　　格：<span>￥<span class="unit_price">138.00</span><span></h4>
						</td>
						<td class="quantity-form2">
							<a class="decrement operationSubt">-</a>
							<input class="quantity-text" value="1" type="text">
							<a class="increment operationAdd">+</a>
						    <p class="fl">库存<span class="stock">3</span>件</p>
					 	</td>
						<td class="subtotalPeice">￥138.00</td>
						<td class="operation">
							<a class="pay" href="###">购买</a>
							<a class="delete" href="javascript:;">删除</a>
						</td>
					  </tr>
					  <tr>
						<td class="goods"><a href="show.html" target="_blank"><img src="img/index_new_img1.jpg" alt=""/></a><span><a href="show.html" target="_blank">包郵三朵彩色許願樹盆栽擺件羊毛氈戳</a></span><b>颜色分类：红色</b></td>
						<td class="price">
							<h3>市场价格：￥165.60</h3>
							<h4>价　　格：<span>￥<span class="unit_price">138.00</span><span></h4>
						</td>
						<td class="quantity-form2">
							<a class="decrement operationSubt">-</a>
							<input class="quantity-text" value="1" type="text">
							<a class="increment operationAdd">+</a>
						    <p class="fl">库存<span class="stock">10</span>件</p>
					 	</td>
						<td class="subtotalPeice">￥138.00</td>
						<td class="operation">
							<a class="pay" href="###">购买</a>
							<a class="delete" href="javascript:;">删除</a>
						</td>
					  </tr>
					  <tr>
						<td class="goods"><a href="show.html" target="_blank"><img src="img/index_new_img1.jpg" alt=""/></a><span><a href="show.html" target="_blank">包郵三朵彩色許願樹盆栽擺件羊毛氈戳</a></span><b>颜色分类：红色</b></td>
						<td class="price">
							<h3>市场价格：￥165.60</h3>
							<h4>价　　格：<span>￥<span class="unit_price">138.00</span><span></h4>
						</td>
						<td class="quantity-form2">
							<a class="decrement operationSubt">-</a>
							<input class="quantity-text" value="1" type="text">
							<a class="increment operationAdd">+</a>
						    <p class="fl">库存<span class="stock">6</span>件</p>
					 	</td>
						<td class="subtotalPeice">￥138.00</td>
						<td class="operation">
							<a class="pay" href="###">购买</a>
							<a class="delete" href="javascript:;">删除</a>
						</td>
					  </tr>
					  <tr>
						<td class="goods"><a href="show.html" target="_blank"><img src="img/index_new_img1.jpg" alt=""/></a><span><a href="show.html" target="_blank">包郵三朵彩色許願樹盆栽擺件羊毛氈戳</a></span><b>颜色分类：红色</b></td>
						<td class="price">
							<h3>市场价格：￥165.60</h3>
							<h4>价　　格：<span>￥<span class="unit_price">138.00</span><span></h4>
						</td>
						<td class="quantity-form2">
							<a class="decrement operationSubt">-</a>
							<input class="quantity-text" value="1" type="text">
							<a class="increment operationAdd">+</a>
						    <p class="fl">库存<span class="stock">6</span>件</p>
					 	</td>
						<td class="subtotalPeice">￥138.00</td>
						<td class="operation">
							<a class="pay" href="###">购买</a>
							<a class="delete" href="javascript:;">删除</a>
						</td>
					  </tr>
					  <tr>
						<td class="goods"><a href="show.html" target="_blank"><img src="img/index_new_img1.jpg" alt=""/></a><span><a href="show.html" target="_blank">包郵三朵彩色許願樹盆栽擺件羊毛氈戳</a></span><b>颜色分类：红色</b></td>
						<td class="price">
							<h3>市场价格：￥165.60</h3>
							<h4>价　　格：<span>￥<span class="unit_price">138.00</span><span></h4>
						</td>
						<td class="quantity-form2">
							<a class="decrement operationSubt">-</a>
							<input class="quantity-text" value="1" type="text">
							<a class="increment operationAdd">+</a>
						    <p class="fl">库存<span class="stock">6</span>件</p>
					 	</td>
						<td class="subtotalPeice">￥138.00</td>
						<td class="operation">
							<a class="pay" href="###">购买</a>
							<a class="delete" href="javascript:;">删除</a>
						</td>
					  </tr>
					  <tr>
						<td class="goods"><a href="show.html" target="_blank"><img src="img/index_new_img1.jpg" alt=""/></a><span><a href="show.html" target="_blank">包郵三朵彩色許願樹盆栽擺件羊毛氈戳</a></span><b>颜色分类：红色</b></td>
						<td class="price">
							<h3>市场价格：￥165.60</h3>
							<h4>价　　格：<span>￥<span class="unit_price">138.00</span><span></h4>
						</td>
						<td class="quantity-form2">
							<a class="decrement operationSubt">-</a>
							<input class="quantity-text" value="1" type="text">
							<a class="increment operationAdd">+</a>
						    <p class="fl">库存<span class="stock">6</span>件</p>
					 	</td>
						<td class="subtotalPeice">￥138.00</td>
						<td class="operation">
							<a class="pay" href="###">购买</a>
							<a class="delete" href="javascript:;">删除</a>
						</td>
					  </tr>
					  <tr>
						<td class="goods"><a href="show.html" target="_blank"><img src="img/index_new_img1.jpg" alt=""/></a><span><a href="show.html" target="_blank">包郵三朵彩色許願樹盆栽擺件羊毛氈戳</a></span><b>颜色分类：红色</b></td>
						<td class="price">
							<h3>市场价格：￥165.60</h3>
							<h4>价　　格：<span>￥<span class="unit_price">138.00</span><span></h4>
						</td>
						<td class="quantity-form2">
							<a class="decrement operationSubt">-</a>
							<input class="quantity-text" value="1" type="text">
							<a class="increment operationAdd">+</a>
						    <p class="fl">库存<span class="stock">6</span>件</p>
					 	</td>
						<td class="subtotalPeice">￥138.00</td>
						<td class="operation">
							<a class="pay" href="###">购买</a>
							<a class="delete" href="javascript:;">删除</a>
						</td>
					  </tr>
					  <tr>
						<td class="goods"><a href="show.html" target="_blank"><img src="img/index_new_img1.jpg" alt=""/></a><span><a href="show.html" target="_blank">包郵三朵彩色許願樹盆栽擺件羊毛氈戳</a></span><b>颜色分类：红色</b></td>
						<td class="price">
							<h3>市场价格：￥165.60</h3>
							<h4>价　　格：<span>￥<span class="unit_price">138.00</span><span></h4>
						</td>
						<td class="quantity-form2">
							<a class="decrement operationSubt">-</a>
							<input class="quantity-text" value="1" type="text">
							<a class="increment operationAdd">+</a>
						    <p class="fl">库存<span class="stock">6</span>件</p>
					 	</td>
						<td class="subtotalPeice">￥138.00</td>
						<td class="operation">
							<a class="pay" href="###">购买</a>
							<a class="delete" href="javascript:;">删除</a>
						</td>
					  </tr>
					</tbody>
				  </table>
			</div>
		</div>
	</div>
	<!-- 购物车 end -->
		
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
			<p class="fl">版权所有：天津奔唐网络科技发展有限公司 津ICP备案：12345678号</p>
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