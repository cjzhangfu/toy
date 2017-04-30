<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="_meta.jsp"%>
<title>个人中心-完善个人资料</title>
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
	 
	<!-- 个人中心-完善个人资料 begin -->
	<div class="cart">
		<div class="cart_main w1200 ovh">
			<div class="left fl">
				<div class="user_photo">
					<img src="${ctx}/static/img/user_photo.jpg"/>
				</div>
				<ul>
					<li><a href="${ctx}/cart">我的购物车<span>></span></a></li>
					<li><a href="user.html">已买到的商品<span>></span></a></li>
					<li><a class="on" href="${ctx}/personCenter">完善个人资料<span>></span></a></li>
				</ul>
			</div>
			<div class="right fr">
				<h2>完善个人资料</h2>
				<form>
					<div class="form">
						<ul>
							<li>
								<label>email：</label>
								<input id="email" class="input" type="text"/>
							</li>
							<li>
								<label>收货地址：</label>
								<input id="address" class="input"  type="text"/>
							</li>
							<input type="submit" class="submit" id="submit" value="提 交">
						</ul>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- 个人中心-完善个人资料 end -->
		
<%@include file="_down.jsp"%>
</body>
</html>