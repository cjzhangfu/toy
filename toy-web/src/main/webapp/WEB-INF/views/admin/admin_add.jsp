<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="_meta.jsp"%>

<title>增加管理员 - 管理员管理 - H-ui.admin v3.0</title>
<meta name="keywords" content="H-ui.admin v3.0,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
<meta name="description" content="H-ui.admin v3.0，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
</head>
<body>
<article class="cl pd-20">
    <form action="" method="post" class="form form-horizontal" id="form-admin-add">
        <%--<div class="row cl">--%>
            <%--<label class="form-label col-xs-2 col-sm-2">ID:</label>--%>
            <%--<div class="formControls col-xs-8 col-sm-9">--%>
                <%--<input type="text" class="input-text"  readonly="readonly" value="${maps['id']}" placeholder="" id="id" name="adminName">--%>
            <%--</div>--%>
        <%--</div>--%>
        <div class="row cl">
            <label class="form-label col-xs-2 col-sm-2">登录名:</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="account" name="adminName">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-2 col-sm-2"><span class="c-red"></span>密码:</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="password" class="input-text" value="" autocomplete="off"  placeholder="密码" id="password" name="password">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-2 col-sm-2">角色:</label>
            <div class="formControls col-xs-8 col-sm-9 skin-minimal">
                <select class="form-control" style="width:150px; display: inline-block;padding:0;padding-left:5px;height:28px;" id="power">
                    <option selected="selected" value="1">管理员</option>
                    <option value="2">普通用户</option>
                </select>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-2 col-sm-2">地址:</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="address" name="address">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-2 col-sm-2">邮箱:</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" placeholder="@" name="email" id="email" value="">
            </div>
        </div>
        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
                <button onClick="article_add();" class="btn btn-secondary radius" type="button"><i class="Hui-iconfont">&#xe632;</i> 提交</button>
                <button onClick="layer_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
            </div>
        </div>
    </form>
</article>

<%@include file="_footer.jsp"%>

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="${ctx}/static/H_ui/static/lib/jquery.validation/1.14.0/jquery.validate.js"></script>
<script type="text/javascript" src="${ctx}/static/H_ui/static/lib/jquery.validation/1.14.0/validate-methods.js"></script>
<script type="text/javascript" src="${ctx}/static/H_ui/static/lib/jquery.validation/1.14.0/messages_zh.js"></script>
<script type="text/javascript">
    function article_add(){
        var account =$("#account").val();
        var password =$("#password").val();
        var email =$("#email").val();
        var power =$("#power").val();
        var address =$("#address").val();
        var params={
            url:"/admin/admin_add",
            method:'post',
            data:{
                account:account,
                password:password,
                email:email,
                power:power,
                address:address
            }
        }
        ajax(params,function (data) {
            layer.msg('修改成功!',{icon:1,time:1000});
            parent.location.reload();
            parent.layer.closeAll();
        })
    }
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>