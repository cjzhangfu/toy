$(function(){ 

		//购物车js
		
		$(".quantity-text").val(1);
		
		//商品数量增减
		$(".operationAdd").click(function(){
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
		$(".operationSubt").click(function(){ 
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
		$(".delete").click(function(){ 
			if(confirm('您确定要删除此商品?')){
				$(this).parents("tr").remove();
			}
			else{
			}
		});

	
});