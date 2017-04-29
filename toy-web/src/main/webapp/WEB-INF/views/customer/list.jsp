<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ include file="../global.jsp"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="renderer" content="webkit">
<meta name="format-detection" content="telephone=no" />
<title>产品列表</title>
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script>
	$(function(){
		//商品筛选排序
		$(".filter ul li").click(function(){
			$(this).addClass("on");
			$(this).siblings().removeClass("on");
		});
	});
</script>
</head>

<body>
	<!-- 头部 begin -->
    <div class="header">
		<div class="header_main w1200">
			<p class="fl">您好，请 <a href="login.jsp">[登录]</a> <a href="reg.html">[免费注册]</a></p>
			<ul class="fr ovh">
				<li class="li_1"><a class="bl" href="###">手机版</a></li><span>|</span>
				<li class="li_2"><a class="bl" href="help.html">帮助中心</a></li><span>|</span>
				<li class="li_3"><a class="bl" href="cart.html">购物车0件</a></li><span>|</span>
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
	 
	<!-- 产品列表 begin -->
	<div class="list">
		<div class="list_main w1200 ovh">
			<div class="left fl">
				<div class="sort">
					<h2>产品分类</h2>
					<ul>
						<li><a href="list.jsp">婴儿专区(0-3岁)</a></li>
						<li><a href="list.jsp">幼儿专区(3-6岁)</a></li>
						<li><a href="list.jsp">儿童专区(6-11岁)</a></li>
						<li><a href="list.jsp">少年专区(11-15岁)</a></li>
						<li><a href="list.jsp">青年专区(>15岁)</a></li>
						<li class="last"><a href="list.jsp">周边专区</a></li>
					</ul>
				</div>
				<div class="hot">
					<h2>热销产品 Hot-sale product</h2>
					<ul>
						<li>
							<a href="show.html">
								<div class="img">
									<img src="img/index_hot_img1.jpg" alt=""/>
								</div>
								<div class="text">
									<h3>派克瑞 宠物指甲剪</h3>
									<p>刀片采用进口不锈钢铸造高硬度、耐磨...</p>
									<span>￥16.80</span>
								</div>
							</a>
						</li>
						<li>
							<a href="show.html">
								<div class="img">
									<img src="img/index_hot_img1.jpg" alt=""/>
								</div>
								<div class="text">
									<h3>派克瑞 宠物指甲剪</h3>
									<p>刀片采用进口不锈钢铸造高硬度、耐磨...</p>
									<span>￥16.80</span>
								</div>
							</a>
						</li>
						<li>
							<a href="show.html">
								<div class="img">
									<img src="img/index_hot_img1.jpg" alt=""/>
								</div>
								<div class="text">
									<h3>派克瑞 宠物指甲剪</h3>
									<p>刀片采用进口不锈钢铸造高硬度、耐磨...</p>
									<span>￥16.80</span>
								</div>
							</a>
						</li>
					</ul>
				</div>
				<div class="left_adv">
					<div class="adv">
						<a href="###"><img src="img/index_l1.jpg" alt=""/></a>
					</div>
					<div class="adv">
						<a href="###"><img src="img/index_l2.jpg" alt=""/></a>
					</div>
				</div>
			</div>
			<div class="right fr">
				<div class="filter">
					<ul class="ovh">
						<li class="li_1">新品</li>
						<li class="li_2">销售</li>
						<li class="li_3">价格</li>
					</ul>
				</div>
				<div class="list_con">
					<ul class="ovh">
						<li>
							<a href="show.html">
								<div class="img">
									<img src="img/index_new_img1.jpg" alt=""/>
								</div>
								<div class="text">
									<h3>莎金氏Sergeant's 鸡肉哑铃零食</h3>
									<h4>鸡肉包裹着牛皮棒</h4>
									<p><b>￥16.80 </b> <span>￥16.80</span></p>
								</div>
							</a>
						</li>
						<li>
							<a href="show.html">
								<div class="img">
									<img src="img/index_new_img1.jpg" alt=""/>
								</div>
								<div class="text">
									<h3>莎金氏Sergeant's 鸡肉哑铃零食</h3>
									<h4>鸡肉包裹着牛皮棒</h4>
									<p><b>￥16.80 </b> <span>￥16.80</span></p>
								</div>
							</a>
						</li>
						<li>
							<a href="show.html">
								<div class="img">
									<img src="img/index_new_img1.jpg" alt=""/>
								</div>
								<div class="text">
									<h3>莎金氏Sergeant's 鸡肉哑铃零食</h3>
									<h4>鸡肉包裹着牛皮棒</h4>
									<p><b>￥16.80 </b> <span>￥16.80</span></p>
								</div>
							</a>
						</li>
						<li>
							<a href="show.html">
								<div class="img">
									<img src="img/index_new_img1.jpg" alt=""/>
								</div>
								<div class="text">
									<h3>莎金氏Sergeant's 鸡肉哑铃零食</h3>
									<h4>鸡肉包裹着牛皮棒</h4>
									<p><b>￥16.80 </b> <span>￥16.80</span></p>
								</div>
							</a>
						</li>
						<li>
							<a href="show.html">
								<div class="img">
									<img src="img/index_new_img1.jpg" alt=""/>
								</div>
								<div class="text">
									<h3>莎金氏Sergeant's 鸡肉哑铃零食</h3>
									<h4>鸡肉包裹着牛皮棒</h4>
									<p><b>￥16.80 </b> <span>￥16.80</span></p>
								</div>
							</a>
						</li>
						<li>
							<a href="show.html">
								<div class="img">
									<img src="img/index_new_img1.jpg" alt=""/>
								</div>
								<div class="text">
									<h3>莎金氏Sergeant's 鸡肉哑铃零食</h3>
									<h4>鸡肉包裹着牛皮棒</h4>
									<p><b>￥16.80 </b> <span>￥16.80</span></p>
								</div>
							</a>
						</li>
						<li>
							<a href="show.html">
								<div class="img">
									<img src="img/index_new_img1.jpg" alt=""/>
								</div>
								<div class="text">
									<h3>莎金氏Sergeant's 鸡肉哑铃零食</h3>
									<h4>鸡肉包裹着牛皮棒</h4>
									<p><b>￥16.80 </b> <span>￥16.80</span></p>
								</div>
							</a>
						</li>
						<li>
							<a href="show.html">
								<div class="img">
									<img src="img/index_new_img1.jpg" alt=""/>
								</div>
								<div class="text">
									<h3>莎金氏Sergeant's 鸡肉哑铃零食</h3>
									<h4>鸡肉包裹着牛皮棒</h4>
									<p><b>￥16.80 </b> <span>￥16.80</span></p>
								</div>
							</a>
						</li>
						<li>
							<a href="show.html">
								<div class="img">
									<img src="img/index_new_img1.jpg" alt=""/>
								</div>
								<div class="text">
									<h3>莎金氏Sergeant's 鸡肉哑铃零食</h3>
									<h4>鸡肉包裹着牛皮棒</h4>
									<p><b>￥16.80 </b> <span>￥16.80</span></p>
								</div>
							</a>
						</li>
						<li>
							<a href="show.html">
								<div class="img">
									<img src="img/index_new_img1.jpg" alt=""/>
								</div>
								<div class="text">
									<h3>莎金氏Sergeant's 鸡肉哑铃零食</h3>
									<h4>鸡肉包裹着牛皮棒</h4>
									<p><b>￥16.80 </b> <span>￥16.80</span></p>
								</div>
							</a>
						</li>
						<li>
							<a href="show.html">
								<div class="img">
									<img src="img/index_new_img1.jpg" alt=""/>
								</div>
								<div class="text">
									<h3>莎金氏Sergeant's 鸡肉哑铃零食</h3>
									<h4>鸡肉包裹着牛皮棒</h4>
									<p><b>￥16.80 </b> <span>￥16.80</span></p>
								</div>
							</a>
						</li>
						<li>
							<a href="show.html">
								<div class="img">
									<img src="img/index_new_img1.jpg" alt=""/>
								</div>
								<div class="text">
									<h3>莎金氏Sergeant's 鸡肉哑铃零食</h3>
									<h4>鸡肉包裹着牛皮棒</h4>
									<p><b>￥16.80 </b> <span>￥16.80</span></p>
								</div>
							</a>
						</li>
						<li>
							<a href="show.html">
								<div class="img">
									<img src="img/index_new_img1.jpg" alt=""/>
								</div>
								<div class="text">
									<h3>莎金氏Sergeant's 鸡肉哑铃零食</h3>
									<h4>鸡肉包裹着牛皮棒</h4>
									<p><b>￥16.80 </b> <span>￥16.80</span></p>
								</div>
							</a>
						</li>
						<li>
							<a href="show.html">
								<div class="img">
									<img src="img/index_new_img1.jpg" alt=""/>
								</div>
								<div class="text">
									<h3>莎金氏Sergeant's 鸡肉哑铃零食</h3>
									<h4>鸡肉包裹着牛皮棒</h4>
									<p><b>￥16.80 </b> <span>￥16.80</span></p>
								</div>
							</a>
						</li>
						<li>
							<a href="show.html">
								<div class="img">
									<img src="img/index_new_img1.jpg" alt=""/>
								</div>
								<div class="text">
									<h3>莎金氏Sergeant's 鸡肉哑铃零食</h3>
									<h4>鸡肉包裹着牛皮棒</h4>
									<p><b>￥16.80 </b> <span>￥16.80</span></p>
								</div>
							</a>
						</li>
						<li>
							<a href="show.html">
								<div class="img">
									<img src="img/index_new_img1.jpg" alt=""/>
								</div>
								<div class="text">
									<h3>莎金氏Sergeant's 鸡肉哑铃零食</h3>
									<h4>鸡肉包裹着牛皮棒</h4>
									<p><b>￥16.80 </b> <span>￥16.80</span></p>
								</div>
							</a>
						</li>
						<li>
							<a href="show.html">
								<div class="img">
									<img src="img/index_new_img1.jpg" alt=""/>
								</div>
								<div class="text">
									<h3>莎金氏Sergeant's 鸡肉哑铃零食</h3>
									<h4>鸡肉包裹着牛皮棒</h4>
									<p><b>￥16.80 </b> <span>￥16.80</span></p>
								</div>
							</a>
						</li>
						<li>
							<a href="show.html">
								<div class="img">
									<img src="img/index_new_img1.jpg" alt=""/>
								</div>
								<div class="text">
									<h3>莎金氏Sergeant's 鸡肉哑铃零食</h3>
									<h4>鸡肉包裹着牛皮棒</h4>
									<p><b>￥16.80 </b> <span>￥16.80</span></p>
								</div>
							</a>
						</li>
						<li>
							<a href="show.html">
								<div class="img">
									<img src="img/index_new_img1.jpg" alt=""/>
								</div>
								<div class="text">
									<h3>莎金氏Sergeant's 鸡肉哑铃零食</h3>
									<h4>鸡肉包裹着牛皮棒</h4>
									<p><b>￥16.80 </b> <span>￥16.80</span></p>
								</div>
							</a>
						</li>
						<li>
							<a href="show.html">
								<div class="img">
									<img src="img/index_new_img1.jpg" alt=""/>
								</div>
								<div class="text">
									<h3>莎金氏Sergeant's 鸡肉哑铃零食</h3>
									<h4>鸡肉包裹着牛皮棒</h4>
									<p><b>￥16.80 </b> <span>￥16.80</span></p>
								</div>
							</a>
						</li>
						<li>
							<a href="show.html">
								<div class="img">
									<img src="img/index_new_img1.jpg" alt=""/>
								</div>
								<div class="text">
									<h3>莎金氏Sergeant's 鸡肉哑铃零食</h3>
									<h4>鸡肉包裹着牛皮棒</h4>
									<p><b>￥16.80 </b> <span>￥16.80</span></p>
								</div>
							</a>
						</li>
						<li>
							<a href="show.html">
								<div class="img">
									<img src="img/index_new_img1.jpg" alt=""/>
								</div>
								<div class="text">
									<h3>莎金氏Sergeant's 鸡肉哑铃零食</h3>
									<h4>鸡肉包裹着牛皮棒</h4>
									<p><b>￥16.80 </b> <span>￥16.80</span></p>
								</div>
							</a>
						</li>
						<li>
							<a href="show.html">
								<div class="img">
									<img src="img/index_new_img1.jpg" alt=""/>
								</div>
								<div class="text">
									<h3>莎金氏Sergeant's 鸡肉哑铃零食</h3>
									<h4>鸡肉包裹着牛皮棒</h4>
									<p><b>￥16.80 </b> <span>￥16.80</span></p>
								</div>
							</a>
						</li>
						<li>
							<a href="show.html">
								<div class="img">
									<img src="img/index_new_img1.jpg" alt=""/>
								</div>
								<div class="text">
									<h3>莎金氏Sergeant's 鸡肉哑铃零食</h3>
									<h4>鸡肉包裹着牛皮棒</h4>
									<p><b>￥16.80 </b> <span>￥16.80</span></p>
								</div>
							</a>
						</li>
					</ul>
					<div class="page"><span class="disabled"> < Previous </span><span class="current">1</span><a href="#?page=2">2</a><a href="#?page=3">3</a><a href="#?page=4">4</a><a href="#?page=5">5</a><a href="#?page=6">6</a><a href="#?page=7">7</a>... <a href="#?page=199">199</a><a href="#?page=200">200</a><a href="#?page=2"> Next > </a></div>
				</div>
			</div>
		</div>
	</div>
	<!-- 产品列表 end -->
		
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