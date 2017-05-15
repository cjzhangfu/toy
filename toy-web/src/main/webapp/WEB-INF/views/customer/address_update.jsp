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
<article class="cl pd-20">
    <form action="" method="post" class="form form-horizontal" id="form-admin-add">
        <div class="row cl">
            <input type="hidden" id="addressId" value="${address.id}">
            <label class="form-label col-xs-2 col-sm-2">收件人姓名:</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="${address.contact}" placeholder="" id="contact" name="contact">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-2 col-sm-2">收件人地址:</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="${address.address}" placeholder="" id="address" name="address">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-2 col-sm-2">收件人电话:</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="${address.mobile}" placeholder="" id="mobile" name="mobile">
            </div>
        </div>
        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
                <button onClick="article_add();" class="btn btn-secondary radius" type="button" ><i class="Hui-iconfont">&#xe632;</i> 提交</button>
                <button  class="btn btn-default radius" type="reset">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
            </div>
        </div>
    </form>
</article>
<script type="text/javascript" src="${ctx}/static/js/plugins/layer/layer.min.js"></script>
<script type="text/javascript" src="${ctx}/static/js/plugins/common/commons.js"></script>
<script>
    function article_add(){
        var id=$("#addressId").val();
        var contact=$("#contact").val();
        var address=$("#address").val();
        var mobile=$("#mobile").val();
        var params={
            url:"${ctx}/address/addressInfoUpdate",
            method:"post",
            data:{
                id:id,
                contact:contact,
                address:address,
                mobile:mobile
            }
        }
        ajax(params,function (data) {
            layer.msg('添加成功',{icon:1,time:1000})
            layer.closeAll();
        })
    }
</script>
</body>
</html>