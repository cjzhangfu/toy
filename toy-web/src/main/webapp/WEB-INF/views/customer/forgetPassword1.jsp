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
<script type="text/javascript">
$(function  () {
	//获取短信验证码
	var validCode=true;
	$(".msgs").click (function  () {
		var time=30;
		var code=$(this);
		if (validCode) {
			validCode=false;
			code.addClass("msgs1");
		var t=setInterval(function  () {
			time--;
			code.html(+time+"秒后重新获取");
			if (time==0) {
				clearInterval(t);
			code.html("重新获取");
				validCode=true;
			code.removeClass("msgs1");
			}
		},1000)
		}
	})
})
</script>
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
				<form action="forget2.html">
					<ul>
						<li>
							<input id="iphone" class="input" type="text" placeholder="输入手机或邮箱号码"/>
						</li>
						<li>
							<input id="sms" class="input s" type="text" placeholder="输入短信验证码"/>
                        	<span class="msgs">发送短信验证码</span>
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
			<p class="fl">版权所有：天津城建大学计算机与信息工程学院  津ICP备案：12345678号</p>
			<p class="fr">技术支持：<a href="http://www.bentang.cn" target="_blank">夏露</a></p>
		</div>
	</div>
	<!-- 注册底部 end -->
</body>
</html>