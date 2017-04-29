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
<title>帮助中心</title>
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
</head>

<body>
	<!-- 头部 begin -->
    <div class="header">
		<div class="header_main w1200">
			<p class="fl">您好，请 <a href="login.jsp">[登录]</a> <a href="reg.html">[免费注册]</a></p>
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
	 
	<!-- 帮助中心 begin -->
	<div class="cart">
		<div class="cart_main w1200 ovh">
			<div class="left fl">
				<ul>
					<li><a href="help.html">新手指南<span>></span></a></li>
					<li><a href="help.html">购物流程<span>></span></a></li>
					<li><a class="on" href="help.html">常见问题<span>></span></a></li>
					<li><a href="help.html">关于我们<span>></span></a></li>
				</ul>
			</div>
			<div class="right fr">
				<h2>常见问题文字内容</h2>
				<div class="con">
					<p>奔唐网络是国内领先的、专业提供“互联网应用服务”的供应商，拥有互联网经验丰富的精英团队，始终保持务实的风格，以“帮助客户成功”为已任，专注于提供对客户有价值的服务，业务服务范围主要包括：</p>
					<p>1.专业化网站设计和开发：网站建设的目的是通过网页图形设计，界面设计、创作及标准化的代码和专有软件、用户体验设计和搜索引擎优化来实现信息在web端的展现。</p>
					<p>2.数字化营销和推广：</p>
					<p>（1）SEM搜索引擎优化与传播：就是根据客户使用搜素引擎的方式，利用用户检索信息的机会尽可能将营销信息传递给目标用户。</p>
					<p>（2）APP应用营销与开发：就是通过特制手机、社区、SNS等平台上运行的应用程序来开展营销活动。</p>
					<p>（3）EDM电子邮件营销策划与执行：向目标客户发送EDM邮件，建立同目标顾客的沟通渠道，向其直接传达相关信息，用来促进销售。</p>
					<p>（4）微博营销策划及运营：通过微博平台为商家、个人等创造价值的一种营销平台。</p>
					<p>（5）微信营销策划及运营：商家通过提供用户需要的信息，推广自己产品的点对点的营销方式。</p>
				</div>
			</div>
		</div>
	</div>
	<!-- 帮助中心 end -->
		
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