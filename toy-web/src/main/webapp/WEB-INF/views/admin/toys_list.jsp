<%--
  Created by IntelliJ IDEA.
  User: fu
  Date: 2017/4/25
  Time: 9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="_meta.jsp"%>
<title>玩具列表</title>
</head>
<body>
<%@ include file="_header.jsp"%>
<%@ include file="_menu.jsp"%>
<section class="Hui-article-box">
    <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 玩具管理 <span class="c-gray en">&gt;</span> 玩具列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
    <div class="Hui-article">
        <article class="cl pd-20">
            <div class="text-c">
                <input type="text" name="" id="" placeholder=" 玩具名称" style="width:320px" class="input-text">
                <button name="" id="" class="btn btn-success" type="submit"><i class="Hui-iconfont">&#xe665;</i> 搜玩具</button>
            </div>
            <div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"><!--<a href="javascript:;" onclick="datadel()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a>--> <a class="btn btn-primary radius" onclick="toy_add(this)" href="javascript:;"><i class="Hui-iconfont">&#xe600;</i> 添加玩具</a></span> <span class="r">共有数据：<strong>54</strong> 条</span> </div>
            <div class="mt-20">
                <table class="table table-border table-bordered table-bg table-hover table-sort">
                    <thead>
                    <tr class="text-c">
                        <th width="40"><input name="" type="checkbox" value=""></th>
                        <th width="80">ID</th>
                        <th width="100">名称</th>
                        <th width="20">库存数量</th>
                        <th width="40">价格</th>
                        <th>分类</th>
                        <th width="40">品牌</th>
                        <th width="150">适合年龄段</th>
                        <th width="60">描述</th>
                        <th width="60">图片路径</th>
                        <th width="100">是否热门</th>
                        <th width="100">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${admin_toyList}" var="toyList">
                        <tr class="text-c">
                            <td><input name="" type="checkbox" value=""></td>
                            <td>${toyList.id}</td>
                            <td>${toyList.name}</td>
                            <td>${toyList.num}</td>
                            <td>${toyList.price}</td>
                            <td class="text-l">${toyList.type}</td>
                            <td class="text-c">${toyList.brand}</td>
                            <td>${toyList.startAges}-${toyList.endAges}</td>
                            <td class="td-status"><span>${toyList.decription}</span></td>
                            <td>${toyList.picture}</td>
                            <td>${toyList.ishot}</td>
                            <td class="td-manage"> <a style="text-decoration:none" class="ml-5" onClick="picture_edit('图库编辑','picture-add.html','10001')" href="javascript:;" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a> <a style="text-decoration:none" class="ml-5" onClick="toy_del(this)" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </article>
    </div>
</section>

<%@ include file="_footer.jsp"%>

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="${ctx}/static/H_ui/static/lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="${ctx}/static/H_ui/static/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${ctx}/static/H_ui/static/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
    $('.table-sort').dataTable({
        "aaSorting": [[ 1, "desc" ]],//默认第几个排序
        "bStateSave": true,//状态保存
        "aoColumnDefs": [
            //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
            {"orderable":false,"aTargets":[0,8]}// 制定列不参与排序
        ]
    });
    /*玩具-添加*/
    function toy_add(opt){
        var index = layer.open({
            type: 2,
            title: '添加玩具 ',
            content: '${ctx}/toy/toy_add',
            area: ['680px', '500px']
        });
    }
    /*图片-查看*/
    function picture_show(title,url,id){
        var index = layer.open({
            type: 2,
            title: title,
            content: url
        });
        layer.full(index);
    }
    /*图片-审核*/
    function picture_shenhe(obj,id){
        layer.confirm('审核文章？', {
                    btn: ['通过','不通过'],
                    shade: false
                },
                function(){
                    $(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="picture_start(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
                    $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已发布</span>');
                    $(obj).remove();
                    layer.msg('已发布', {icon:6,time:1000});
                },
                function(){
                    $(obj).parents("tr").find(".td-manage").prepend('<a class="c-primary" onClick="picture_shenqing(this,id)" href="javascript:;" title="申请上线">申请上线</a>');
                    $(obj).parents("tr").find(".td-status").html('<span class="label label-danger radius">未通过</span>');
                    $(obj).remove();
                    layer.msg('未通过', {icon:5,time:1000});
                });
    }
    /*图片-下架*/
    function picture_stop(obj,id){
        layer.confirm('确认要下架吗？',function(index){
            $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="picture_start(this,id)" href="javascript:;" title="发布"><i class="Hui-iconfont">&#xe603;</i></a>');
            $(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已下架</span>');
            $(obj).remove();
            layer.msg('已下架!',{icon: 5,time:1000});
        });
    }

    /*图片-发布*/
    function picture_start(obj,id){
        layer.confirm('确认要发布吗？',function(index){
            $(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="picture_stop(this,id)" href="javascript:;" title="下架"><i class="Hui-iconfont">&#xe6de;</i></a>');
            $(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已发布</span>');
            $(obj).remove();
            layer.msg('已发布!',{icon: 6,time:1000});
        });
    }
    /*图片-申请上线*/
    function picture_shenqing(obj,id){
        $(obj).parents("tr").find(".td-status").html('<span class="label label-default radius">待审核</span>');
        $(obj).parents("tr").find(".td-manage").html("");
        layer.msg('已提交申请，耐心等待审核!', {icon: 1,time:2000});
    }
    /*图片-编辑*/
    function picture_edit(title,url,id){
        var index = layer.open({
            type: 2,
            title: title,
            content: url,
            area: ['640px', '460px']
        });
//	layer.full(index);
    }
    /*图片-删除*/
    function toy_del(obj){
        var picture_id = $(obj).parents("tr").find("td").eq(1).text();
        layer.confirm('确认要删除吗？',function(index){
            var params={
                url:place+"/toy/toyDelete",
                method:"post",
                data:{
                    id:picture_id
                }
            }
            ajax(params,function (data) {
                console.log(data);
                $(obj).parents("tr").remove();
                layer.msg('已删除!',{icon:1,time:1000});
            })
        });
    }
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>
