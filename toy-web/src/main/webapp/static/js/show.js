// JavaScript Document

$(function(){
	//商品规格选择
	$(".text .color").click(function(){
		$(this).addClass("on");
		$(this).siblings().removeClass("on");
	});
	$(".text .size").click(function(){
		$(this).addClass("on");
		$(this).siblings().removeClass("on");
	});
	
	//商品数量增减
	$(".operationAdd").click(function(){ 
		var n = $(".stork").text();
		var t=$(this).parent().find('input[class*=quantity-text]'); 
		t.val(parseInt(t.val())+1);
		$(".operationSubt").removeClass("nocz");
		if(parseInt(t.val())>=n){ 
			t.val(n); 
			$(this).addClass("nocz");
		} 
	});
	$(".operationSubt").click(function(){ 
		var n = $(".stork").text();
		var t=$(this).parent().find('input[class*=quantity-text]'); 
		t.val(parseInt(t.val())-1) ;
		$(".operationAdd").removeClass("nocz");
		if(parseInt(t.val())<=1){ 
			t.val(1); 
			$(this).addClass("nocz");
		} 
	});
	
});


	
function MoveBox(obj) {
	//商品飞入购物车
	var divTop = $(obj).parent().find("img").offset().top;
	var divLeft = $(obj).parent().find("img").offset().left;
	var clone_img = $(obj).parent().find("img").clone();
	
	$(obj).parent().parent().append(clone_img);
	clone_img.css({
		"position": "absolute",
		"z-index": "9999",
		"left": divLeft + "px",
		"top": divTop + "px"
	});
	clone_img.animate({
		"left": ($("#collectBox").offset().left) + "px",
		"top": ($(document).scrollTop() + 30) + "px",
		"width": "50px",
		"height": "50px",
		"transition":"none",
		"-moz-transition":"none",
		"-webkit-transition":"none"
	},
	500,
	function() {
		clone_img.animate({
			"left": $("#collectBox").offset().left + 8 + "px",
			"top": $("#collectBox").offset().top + "px",
			"width": "25px",
			"height": "25px",
			"transition":"none",
			"-moz-transition":"none",
			"-webkit-transition":"none"
		},500).fadeTo(0, 0.1).hide(0);
		$("#collectBox b").text(t);
	});	
	
	var t=$("#collectBox b").text();
	t=parseInt(t)+1;	
}