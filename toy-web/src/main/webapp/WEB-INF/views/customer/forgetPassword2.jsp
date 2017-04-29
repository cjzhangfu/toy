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
<title>找回密码</title>
<link href="style/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
</head>

<body>
	<!-- 注册头部 begin -->
    <div class="reg_header">
		<div class="reg_header_main w1200">
			<div class="logo fl"><a class="bl" href="index.html"><img src="img/reg_logo.png" alt=""></a></div>
			<a class="to_index fr" href="index.html">进入商城</a>
		</div>
	</div>
	<!-- 注册头部 end -->
	 
	<!-- 忘记密码 begin -->
	<div class="reg">
		<div class="reg_main w1200 ovh">
			<div class="reg_con forget">
				<h2>找回密码</h2>
				<i></i>
				<form action="forget3.html">
					<ul>
						<li>
							<input id="password1" class="input" type="password" placeholder="输入新密码"/>
						</li>
						<li>
							<input id="password2" class="input" type="password" placeholder="再次输入新密码"/>
						</li>
						<input type="submit" class="submit" id="submit" value="下一步">
					</ul>
				</form>
			</div>
		</div>
	</div>
	<!-- 忘记密码 end -->
		
	<!-- 注册底部 begin -->
	<div class="reg_footer">
		<div class="reg_footer_main w1200">
			<p class="fl">版权所有：天津城建大学计算机与信息工程学院 津ICP备案：12345678号</p>
			<p class="fr">技术支持：<a href="http://www.bentang.cn" target="_blank">夏露</a></p>
		</div>
	</div>
	<!-- 注册底部 end -->
</body>
</html>