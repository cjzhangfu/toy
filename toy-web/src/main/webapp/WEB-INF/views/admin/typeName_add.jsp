<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="_meta.jsp"%>

<title>增加玩具类型 - 玩具类型管理 - H-ui.admin v3.0</title>
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
            <label class="form-label col-xs-2 col-sm-2">ID:</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" readonly="readonly" placeholder="id自动生成" id="ID" name="ID">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-2 col-sm-2"><span class="c-red"></span>玩具类型名称:</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" autocomplete="off"  id="typeName" name="typeName">
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
        var typeName =$("#typeName").val();
        var params={
            url:"/typeName/typeName_add",
            method:'post',
            data:{
                typename:typeName
            }
        }
        ajax(params,function (data) {
            layer.msg('添加成功!',{icon:1,time:1000});
            layer.close();
        })
    }
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>