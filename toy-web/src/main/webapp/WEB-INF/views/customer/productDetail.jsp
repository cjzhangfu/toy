<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="_meta.jsp"%>
<title>产品详情</title>
<link href="${ctx}/static/style/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${ctx}/static/js/jquery-1.8.3.min.js"></script>
<!-- 产品详情图片放大展示 js -->
<script type="text/javascript" src="${ctx}/static/js/jquery.jqzoom2.js"></script>
<script type="text/javascript" src="${ctx}/static/js/base2.js"></script>

<!-- 产品详情页 js -->
<script type="text/javascript" src="${ctx}/static/js/show.js"></script>
</head>

<body>
<%@include file="_head.jsp"%>

	<!-- 产品详情 begin -->
	<div class="show">
		<div class="show_main w1200">
			<div class="show_t ovh">
				<div class="show_t_img">
					<!--缩图开始-->
					<div class="spec-scroll">
						  <a class="prev">︿</a>
						  <div class="items">
							<ul>
								<c:forEach items="${fn:split(toys.picture,',')}" var="items">
									<li><img alt="" bimg="/uploadImage/${items}" src="/uploadImage/${items}" onmousemove="preview(this);"></li>
								</c:forEach>
							</ul>
						  </div>
						  <a class="next">﹀</a>
					</div>
					<!--缩图结束-->
					<div id="preview" class="spec-preview"> <span class="jqzoom"><img jqimg="/uploadImage/${fn:split(toys.picture,',')[0]}" src="/uploadImage/${fn:split(toys.picture,',')[0]}" /></span> </div>
				</div>
				<div class="text">
					<input type="hidden" id="toysId"value="${toys.id}">
					<h2>${toys.name}</h2>
					<h3>市场价格：￥${toys.price}</h3>
					<h3>价　　格：<span class="price">￥${toys.price}</span><b>元</b></h3>
					<h3>品牌：${toys.brand}</h3>
					<c:choose>
						<c:when test="${toys.ishot==0}">
							<h3>是否热销产品：是</h3>
						</c:when>
						<c:otherwise >
							<h3>是否热销产品：否</h3>
						</c:otherwise>
					</c:choose>
					<h3>收藏:<img src="${ctx}/static/img/collection.png" style="margin-left:5px;width: 30px;height: 30px" id="collection"/></h3>
					<h3 class="stock_line">
                        <div class="t fl">数量：</div>
                        <div class="quantity-form2">
                            <a class="decrement operationSubt">-</a>
                            <input class="quantity-text" data-specid="0" readonly value="1" type="text" id="toysNum">
                            <a class="increment  operationAdd" data-stock="3">+</a>
                        </div>
						<p class="fl">库存<span class="stork">${toys.num}</span>件</p>
                    </h3>

					<div class="button">
                    	<div class="pay"><a href="javascript:;" onclick="buy()">立即购买</a></div>
                        <div class="add_cart"><img src="${ctx}/static/img/show_img1_b.jpg" width="25" height="25" alt="" /><a onClick="MoveBox(this)" href="javascript:;">加入购物车</a></div>
                    </div>
				</div>
			</div>
			<div class="show_b ovh">
				<div class="left fl">
					<div class="hot">
						<h2>热销产品 Hot-sale product</h2>
						<ul>
							<c:forEach items="${hotToys}" var="hotToys">
								<li>
									<a href="${ctx}/toy/toyDetail?id=${hotToys.id}">
										<div class="img">
											<img src="/uploadImage/${fn:split(hotToys.picture,',')[0]}" alt=""/>
										</div>
										<div class="text">
											<h3>${hotToys.name}</h3>
											<p>${hotToys.decription}</p>
											<span>￥${hotToys.price}</span>
										</div>
									</a>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>
				<div class="right fr">
					<h2>产品详情</h2>
					<div class="con">
						<c:forEach items="${fn:split(toys.picture,',')}" var="items">
							<img src="/uploadImage/${items}" alt=""/>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 产品详情 end -->
	<%@include file="_down.jsp"%>
<script type="text/javascript" src="${ctx}/static/js/plugins/layer/layer.min.js"></script>
<script type="text/javascript" src="${ctx}/static/js/plugins/common/commons.js"></script>
<script>
	function buy(){
		var toysId=$("#toysId").val();
		var toysNum=$("#toysNum").val();
		var datas=[
			{
				toys_id:toysId,
				number:toysNum
			}
		];
		$.ajax({
			url: "${ctx}/orders/buyData",
			type: "post",
			data: JSON.stringify(datas),
			cache: false,
			contentType: "application/json",
			dataType:'json',
			success: function (data) {
				if(data.status=="success"){
					window.location.href="${ctx}/orders/buy";
				}else{
					layer.alert("请先登录！")
				}
			},
			error: function (xhr) {

			}
		})
	}
</script>
</body>
</html>
