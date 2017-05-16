$(function(){ 

		//购物车js
		
		$(".quantity-text").val(1);
		
		//商品数量增减
		$(document).on("click",".operationAdd",function(){
			var n = $(this).parent().find(".stock").text();
			var t = $(this).parent().find($(".quantity-text")); 
			t.val(parseInt(t.val())+1);
			$(this).parent().find(".operationSubt").removeClass("nocz");
			if(parseInt(t.val())>=n){ 
				t.val(n); 
				$(this).addClass("nocz");
			} 
			setTotal(this);
		}); 
		$(document).on("click",".operationSubt",function(){
			var n = $(this).parent().find(".stock").text();
			var t=$(this).parent().find($(".quantity-text")); 
			t.val(parseInt(t.val())-1);
			$(this).parent().find(".operationAdd").removeClass("nocz");
			if(parseInt(t.val())<=1){ 
				t.val(1); 
				$(this).addClass("nocz");
			} 
			setTotal(this); 
		});
		
		//输入框
		$(".quantity-text").blur(function(){ 
			var n = $(this).parent().find(".stock").text();
			var val = parseInt(this.value);
			if (isNaN(val) || val <= 1) {
				val = 1;
				$(this).parent().find(".operationAdd").removeClass("nocz");
				$(this).parent().find(".operationSubt").addClass("nocz");
			}
			if (val > 1 && val < n) {
				$(this).parent().find(".operationAdd").removeClass("nocz");
				$(this).parent().find(".operationSubt").removeClass("nocz");
			}
			if (val >= n) {
				val = n;
				$(this).parent().find(".operationSubt").removeClass("nocz");
				$(this).parent().find(".operationAdd").addClass("nocz");
			}
			if (this.value != val) {
				this.value = val;
			}
			setTotal(this); 
		}) 
		
		//合计
		function setTotal(tr){ 
			var s=0; 
			var quantity = $(tr).parent().find(".quantity-text");
			var unit_price = $(tr).parents("tr").find(".unit_price");
			var subtotalPeice = $(tr).parents("tr").find(".subtotalPeice");
			s += parseInt($(quantity).val())*parseFloat($(unit_price).text()); 
			$(subtotalPeice).html('￥'+ s.toFixed(2));
		}
		
		//删除
		$(document).on("click",".delete",function(){
			if(confirm('您确定要删除此商品?')){
				$(this).parents("tr").remove();
			}
			else{
			}
		});
	function toyCart(){
		var params ={
			url:place+"/cart/toyCart",
			method:"get",
		}
		ajax(params,function (data) {
			var html="";
			$.each(data,function (i,v) {
				var pic=(v.toysInfoBean.picture).split(",");
				html+='<tr>'+
				'<td class="goods"><a href="show.html" target="_blank"><img src="'+/uploadImage/+pic[0]+'" alt=""/></a><span><a href="show.html" target="_blank">'+v.toysInfoBean.decription+'</a></span><b>颜色分类：红色</b></td>'+
				'<td class="price">'+
				'<h3>市场价格:￥'+v.toysInfoBean.price+'</h3>'+
				'<h4>价　　格：<span>￥<span class="unit_price">'+v.toysInfoBean.price+'</span><span></h4>'+
				'</td>'+
				'<td class="quantity-form2">'+
				'<a class="decrement operationSubt">-</a>'+
				'<input class="quantity-text" value="'+v.num+'" type="text">'+
				'<a class="increment operationAdd">+</a>'+
				'<p class="fl">库存<span class="stock">'+v.toysInfoBean.num+'</span>件</p>'+
				'</td>'+
				'<td class="subtotalPeice">￥'+parseInt(v.num)*parseInt(v.toysInfoBean.price)+'</td>'+
				'<td class="operation">'+
				'<a class="pay" href="###">购买</a>'+
				'<a class="delete" href="javascript:;">删除</a>'+
				'</td>'+
				'</tr>';
			})
			$("#cartData").html(html);
		})
	}
	toyCart();
	
});