<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="_meta.jsp"%>
<title>会员登录</title>
<link href="${ctx}/static/style/jquery-ui.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/static/style/style.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<!-- 注册头部 begin -->
    <div class="reg_header">
		<div class="reg_header_main w1200">
			<div class="logo fl"><a class="bl" href="index.html"><img src="${ctx}/static/img/reg_logo.png" alt=""></a></div>
			<a class="to_index fr" href="/">进入商城</a>
		</div>
	</div>
	<!-- 注册头部 end -->
	 
	<!-- 会员登录 begin -->
	<div class="reg">
		<div class="reg_main w1200 ovh">
			<div class="reg_con login">
				<h2>会员登录</h2>
				<i></i>
					<ul>
						<li class="li_1">
							<input id="account" class="input" type="text" placeholder="用户名"/>
						</li>
						<li class="li_2">
							<input id="password" class="input" type="password" placeholder="密码"/>
						</li>
						<a href="javascript:"><input type="button" class="submit" id="submit" value="登 录"></a>
						<li class="end">
							<input type="checkbox" class="checkbox" id="checkbox"><label for="checkbox">自动登录</label>
							<p class="fr"><a href="/forget1">忘记密码?</a> | <a href="reg.html">立即注册</a></p>
						</li>
					</ul>
			</div>
		</div>
	</div>
	<!-- 会员登录 end -->
		
	<!-- 注册底部 begin -->
	<div class="reg_footer">
		<div class="reg_footer_main w1200">
			<p class="fl">版权所有：天津城建大学计算机与信息工程学院    津ICP备案：12345678号</p>
			<p class="fr">技术支持：<a href="http://www.bentang.cn" target="_blank">夏露</a></p>
		</div>
	</div>
	<!-- 注册底部 end -->
<script type="text/javascript" src="${ctx}/static/js/jquery.min.js"></script>
<script type="text/javascript" src="${ctx}/static/js/jquery-ui.js"></script>
<script type="text/javascript">
	$(function  () {
		//多选框样式
		$( ".checkbox" ).button();
	})
</script>
<script type="text/javascript" src="${ctx}/static/js/plugins/layer/layer.min.js"></script>
<script type="text/javascript" src="${ctx}/static/js/plugins/common/commons.js"></script>
<script type="text/javascript" src="${ctx}/static/js/our/login.js"></script>
</body>
</html>