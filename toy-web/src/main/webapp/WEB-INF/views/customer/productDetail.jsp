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
							  <li><img alt="" bimg="${ctx}/static/img/show_img1_b.jpg" src="${ctx}/static/ img/show_img1_b.jpg" onmousemove="preview(this);"></li>
							  <li><img alt="" bimg="${ctx}/static/img/show_img2_b.jpg" src="${ctx}/static/img/show_img2_b.jpg" onmousemove="preview(this);"></li>
							  <li><img alt="" bimg="${ctx}/static/img/show_img1_b.jpg" src="${ctx}/static/img/show_img1_b.jpg" onmousemove="preview(this);"></li>
							  <li><img alt="" bimg="${ctx}/static/img/show_img2_b.jpg" src="${ctx}/static/img/show_img2_b.jpg" onmousemove="preview(this);"></li>
							  <li><img alt="" bimg="${ctx}/static/img/show_img1_b.jpg" src="${ctx}/static/img/show_img1_b.jpg" onmousemove="preview(this);"></li>
							  <li><img alt="" bimg="${ctx}/static/img/show_img2_b.jpg" src="${ctx}/static/img/show_img2_b.jpg" onmousemove="preview(this);"></li>
							  <li><img alt="" bimg="${ctx}/static/img/show_img1_b.jpg" src="${ctx}/static/img/show_img1_b.jpg" onmousemove="preview(this);"></li>
							</ul>
						  </div>
						  <a class="next">﹀</a>
					</div>
					<!--缩图结束-->
					<div id="preview" class="spec-preview"> <span class="jqzoom"><img jqimg="${ctx}/static/img/show_img1_b.jpg" src="${ctx}/static/img/show_img1_b.jpg" /></span> </div>
				</div>
				<div class="text">
					<h2>${toys.name}</h2>
					<h3>市场价格：￥${toys.price}</h3>
					<h3>价　　格：<span class="price">￥${toys.price}</span><b>元</b></h3>
					<h3>品牌：${toys.brand}</h3>
					<h3>是否热销产品：${toys.ishot}</h3>
					<h3 class="stock_line">
                        <div class="t fl">数量：</div>
                        <div class="quantity-form2">
                            <a class="decrement operationSubt">-</a>
                            <input class="quantity-text" data-specid="0" readonly value="1" type="text">
                            <a class="increment  operationAdd" data-stock="3">+</a>
                        </div>
						<p class="fl">库存<span class="stork">6</span>件</p>
                    </h3>

					<div class="button">
                    	<div class="pay"><a href="###">立即购买</a></div>
                        <div class="add_cart"><img src="${ctx}/static/img/show_img1_b.jpg" width="25" height="25" alt="" /><a onClick="MoveBox(this)" href="javascript:;">加入购物车</a></div>
                    </div>
				</div>
			</div>
			<div class="show_b ovh">
				<div class="left fl">
					<div class="hot">
						<h2>热销产品 Hot-sale product</h2>
						<ul>
							<li>
								<a href="show.html">
									<div class="img">
										<img src="${ctx}/static/img/index_hot_img1.jpg" alt=""/>
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
										<img src="${ctx}/static/img/index_hot_img1.jpg" alt=""/>
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
										<img src="${ctx}/static/img/index_hot_img1.jpg" alt=""/>
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
										<img src="${ctx}/static/img/index_hot_img1.jpg" alt=""/>
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
										<img src="${ctx}/static/img/index_hot_img1.jpg" alt=""/>
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
										<img src="${ctx}/static/img/index_hot_img1.jpg" alt=""/>
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
				</div>
				<div class="right fr">
					<h2>产品详情</h2>
					<div class="con">
						<img src="${ctx}/static/img/show_con_img.jpg" alt=""/>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 产品详情 end -->
	<%@include file="_down.jsp"%>
</body>
</html>