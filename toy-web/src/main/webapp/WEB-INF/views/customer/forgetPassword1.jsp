<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="_meta.jsp"%>
<title>找回密码</title>
<link href="${ctx}/static/style/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${ctx}/static/js/jquery-1.8.3.min.js"></script>
</head>

<body>
	<!-- 注册头部 begin -->
    <div class="reg_header">
		<div class="reg_header_main w1200">
			<div class="logo fl"><a class="bl" href="/"><img src="${ctx}/static/img/reg_logo.png" alt=""></a></div>
			<a class="to_index fr" href="/">进入商城</a>
		</div>
	</div>
	<!-- 注册头部 end -->
	 
	<!-- 忘记密码 begin -->
	<div class="reg">
		<div class="reg_main w1200 ovh">
			<div class="reg_con forget">
				<h2>找回密码</h2>
				<i></i>
					<form>
						<ul>
							<li>
								<input id="account" class="input" type="text" placeholder="输入用户名"/>
							</li>
							<li>
								<input id="email" class="input" type="email" placeholder="输入注册时邮箱"/>
							</li>
							<li>
								<input id="password1" class="input" type="password" placeholder="输入新密码"/>
							</li>
							<li>
								<input id="password2" class="input" type="password" placeholder="再次输入新密码"/>
							</li>
							<input type="button" class="submit" id="submit" value="修改密码">
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
	<script type="text/javascript" src="${ctx}/static/js/plugins/layer/layer.min.js"></script>
	<script type="text/javascript" src="${ctx}/static/js/plugins/common/commons.js"></script>
<script>

	$("#submit").click(function () {
		var account =$("#account").val();
		var email=$("#email").val();
		var password1=$("#password1").val();
		var password2=$("#password2").val();
		if(account==null){
			layer.alert("账号为空！")
		}else if(email==null){
			layer.alert("邮箱为空！")
		}else if(password1==null&&password2==null){
			layer.alert("密码为空！")
		}else if(password1!=password2){
			layer.alert("两次输入密码不一致！")
		}else{
			var params={
				url:"${ctx}/customer/forgetPassword",
				method:"post",
				data:{
					account:account,
					email:email,
					password:password1
				}
			}
			ajax(params,function (result) {
				window.location.href="${ctx}/customer/login"
			})
		}
	})
</script>
</body>
</html>