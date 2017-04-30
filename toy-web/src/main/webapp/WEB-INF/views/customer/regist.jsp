<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="_meta.jsp"%>
<title>会员注册</title>
<link href="${ctx}/static/style/jquery-ui.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/static/style/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${ctx}/static/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="${ctx}/static/js/jquery-ui.js"></script>
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
	
	//多选框样式
	$( ".checkbox" ).button();
})
</script>
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
	 
	<!-- 会员注册 begin -->
	<div class="reg">
		<div class="reg_main w1200 ovh">
			<div class="reg_con">
				<h2>注册会员</h2>
				<i></i>
				<form>
					<ul>
						<li class="li_1">
							<input id="name" class="input" type="text" placeholder="用户名"/>
						</li>
						<li class="li_2">
							<input id="password" class="input" type="password" placeholder="密码"/>
						</li>
						<li class="li_3">
							<input id="password2" class="input" type="password" placeholder="再次输入密码"/>
						</li>
						<li class="li_4">
							<input id="email" class="input" type="text" placeholder="邮箱"/>
						</li>
						<%--<li>--%>
							<%--<input id="code" class="input s" type="text" placeholder="输入验证码"/>--%>
							<%--<a class="code_img" title="看不清？换一张"><img src="img/reg_code.png" width="105" height="45" alt=""/></a>--%>
						<%--</li>--%>
						<%--<li>--%>
							<%--<input id="sms" class="input s" type="text" placeholder="输入短信验证码"/>--%>
                        	<%--<span class="msgs">发送短信验证码</span>--%>
						<%--</li>--%>
						<li class="end"><input type="checkbox" class="checkbox" id="checkbox"><label for="checkbox">我已同意<a href="###" target="_blank">《betop注册协议》</a></label></li>
						<input type="button" class="submit" id="submit" value="注 册">
					</ul>
				</form>
			</div>
		</div>
	</div>
	<!-- 会员注册 end -->
		
	<!-- 注册底部 begin -->
	<div class="reg_footer">
		<div class="reg_footer_main w1200">
			<p class="fl">版权所有：天津城建大学计算机与信息工程学院 津ICP备案：12345678号</p>
			<p class="fr">技术支持：<a href="http://www.bentang.cn" target="_blank">夏露</a></p>
		</div>
	</div>
	<!-- 注册底部 end -->
	<script type="text/javascript" src="${ctx}/static/js/plugins/layer/layer.min.js"></script>
	<script type="text/javascript" src="${ctx}/static/js/plugins/common/commons.js"></script>
	<script type="text/javascript" src="${ctx}/static/js/our/regist.js"></script>
</body>
</html>