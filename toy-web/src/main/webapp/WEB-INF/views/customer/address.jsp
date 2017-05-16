<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="_meta.jsp"%>
<title>地址信息</title>
<link href="${ctx}/static/style/style.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/static/H_ui/static/h-ui.admin/css/H-ui.admin.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="${ctx}/static/H_ui/static/lib/Hui-iconfont/1.0.8/iconfont.css">
<link href="${ctx}/static/H_ui/static/h-ui/css/H-ui.min.css" rel="stylesheet" type="text/css"/>
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

<!-- 地址信息 begin -->
<div class="cart">
    <div class="cart_main w1200 ovh">
        <div class="left fl">
            <div class="user_photo">
                <img src="${ctx}/static/img/user_photo.jpg"/>
            </div>
            <ul>
                <li><a  href="${ctx}/cart">我的购物车<span>></span></a></li>
                <li><a href="user.html">已买到的商品<span>></span></a></li>
                <li><a  class="on" href="${ctx}/personCenter">地址信息<span>></span></a></li>
                <li><a   href="${ctx}/collection/collectionData">个人收藏<span>></span></a></li>
            </ul>
        </div>
        <div class="right fr">
            <h2>我的地址信息</h2><a href="javascript:;" onclick="address_add()" class="btn btn-primary radius"><i class="Hui-iconfont"></i> 添加地址信息</a>
                <table class="table table-border table-bordered table-hover table-bg" style="margin-top: 5px;">
                    <thead>
                    <tr class="text-c">
                        <th width="200">收件人姓名</th>
                        <th>收件人地址</th>
                        <th width="300">收件人联系电话</th>
                        <th width="70">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${address}" var="address">
                    <tr class="text-c">
                        <td>${address.contact}</td>
                        <td>${address.address}</td>
                        <td>${address.mobile}</td>
                        <td class="f-14" ><a id="${address.id}" title="编辑" href="javascript:;" onclick="address_edit(this)" style="text-decoration:none"><i class="Hui-iconfont"></i></a> <a id="${address.id}" title="删除" href="javascript:;" onclick="address_del(this)" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont"></i></a></td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>
        </div>
    </div>
</div>
<!-- 购物车 end -->

<%@include file="_down.jsp"%>
<script type="text/javascript" src="${ctx}/static/js/plugins/layer/layer.min.js"></script>
<script type="text/javascript" src="${ctx}/static/js/plugins/common/commons.js"></script>
<script>
    function address_add(){
        var index = layer.open({
            type: 2,
            title: '添加地址信息 ',
            content: '${ctx}/address/address_add',
            area: ['680px', '500px']
        });
    }
    function address_del(obj){
        var id=$(obj).attr("id");
        var params={
            url:"${ctx}/address/address_del",
            method:"post",
            data:{
                id:id
            }
        }
        ajax(params,function (data) {
            layer.msg("删除成功！",{icon:1,time:1000});
            location.reload();
        })
    }
    function address_edit(obj){
        var id=$(obj).attr("id");
        var index = layer.open({
            type: 2,
            title: '修改地址信息 ',
            content: '${ctx}/address/address_edit?id='+id,
            area: ['680px', '500px']
        });
    }
</script>
</body>
</html>