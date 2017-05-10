<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="_meta.jsp"%>
    <title>新增玩具</title>
    <!-- 引用控制层插件样式 -->
    <link rel="stylesheet" href="${ctx}/static/style/zyUpload.css" type="text/css">
    <script type="text/javascript" src="${ctx}/static/js/plugins/upload/jquery-1.7.2.js"></script>
<!-- 引用核心层插件 -->
    <script type="text/javascript" src="${ctx}/static/js/plugins/upload/zyFile.js"></script>
    <!-- 引用控制层插件 -->
    <script type="text/javascript" src="${ctx}/static/js/plugins/upload/zyUpload.js"></script>
    <!-- 引用初始化JS -->
    <script type="text/javascript" src="${ctx}/static/js/plugins/upload/demo.js"></script>
</head>
<body>
<div class="page-container">
    <form class="form form-horizontal" id="form-article-add">
        <div class="row cl">
            <label class="form-label col-xs-2 col-sm-1">玩具名称:</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="name" name="">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-2 col-sm-1">玩具数量:</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="num" name="">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-2 col-sm-1">玩具价格：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="" placeholder="" id="price" name="">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-2 col-sm-1">玩具类型:</label>
            <div class="formControls col-xs-8 col-sm-9">
				<span class="select-box">
				<select name="" class="select" id="selectType">
                    <option value="0">全部栏目</option>
                    <option value="1">新闻资讯</option>
                </select>
				</span>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-2 col-sm-1">是否热销:</label>
            <div class="formControls col-xs-8 col-sm-9">
				<span class="select-box">
				<select name="" class="select" id="selectIsHot">
                    <option value="0">是</option>
                    <option value="1">否</option>
                </select>
				</span>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-2 col-sm-1">玩具品牌:</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="0" placeholder="" id="brand" name="">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-2 col-sm-1">适合年龄段:</label>
            <div class="formControls col-xs-3 col-sm-3">
                <input type="text" class="input-text" value="0" placeholder="" id="startAges" name="">
            </div>
            <label class="form-label col-xs-1 col-sm-1">至</label>
            <div class="formControls col-xs-3 col-sm-3">
                <input type="text" class="input-text" value="0" placeholder="" id="endAges" name="">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-2 col-sm-1">玩具描述:</label>
            <div class="formControls col-xs-8 col-sm-9">
                <textarea id="decription" name="" cols="" rows="" class="textarea"  placeholder="说点什么...最少输入10个字符" datatype="*10-100" dragonfly="true" nullmsg="备注不能为空！"></textarea>
                <p class="textarea-numberbar"><em class="textarea-length">0</em>/200</p>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-2 col-sm-1">玩具图片:</label>
            <div id="demo" class="demo"></div>
            <input type="hidden" id="picture"/>
        </div>
        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
                <button onClick="article_save();" class="btn btn-secondary radius" type="button"><i class="Hui-iconfont">&#xe632;</i> 提交修改</button>
                <button onClick="layer_close();" class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
            </div>
        </div>
    </form>
</div>
</div>

<!--请在下方写此页面业务相关的脚本-->
<script>
    //获取类型名称
    function getTypeName(){
        var params={
            url:"${ctx}/typeName/typeNameList",
            method:"get"
        }
        ajax(params,function(data){
            var html="";
            $.each(data,function(i,v){
                html+='<option value="'+v.typename+'">'+v.typename+'</option>'
            })
            $("#selectType").html(html);
        })
    }
    getTypeName();
    function article_save(){
    var toy_name = $("#name").val();
    var toy_num = $("#num").val();
    var toy_price=$("#price").val();
    var toy_type=$("#selectType option:selected").val();
    var toy_brand=$("#brand").val();
    var toy_startAges=$("#startAges").val();
    var toy_endAges=$("#endAges").val();
    var toy_decription=$("#decription").val();
    var toy_picture=$("#picture").val();
    var toy_isHot=$("#selectIsHot option:selected").val();
    var params={
        url:"${ctx}/toy/toy_addToy",
        method:"post",
        data:{
            name:toy_name,
            num:toy_num,
            price:toy_price,
            type:toy_type,
            brand:toy_brand,
            startAges:toy_startAges,
            endAges:toy_endAges,
            decription:toy_decription,
            picture:toy_picture,
            ishot:toy_isHot
        }
    }
    ajax(params,function(data){
        layer.msg('添加成功!',{icon:1,time:1000});
        layer.closeAll();
    })
}
</script>
</body>
</html>