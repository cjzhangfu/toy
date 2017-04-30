<%--
  Created by IntelliJ IDEA.
  User: fu
  Date: 2017/4/25
  Time: 9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="_meta.jsp"%>
<title>玩具类型列表</title>
</head>
<body>
<%@ include file="_header.jsp"%>
<%@ include file="_menu.jsp"%>
<section class="Hui-article-box">
    <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页
        <span class="c-gray en">&gt;</span>
        玩具类型管理
        <span class="c-gray en">&gt;</span>
        玩具类型列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a> </nav>
    <div class="Hui-article">
        <article class="cl pd-20">
            <div class="text-c">
                <input type="text" class="input-text" style="width:320px" placeholder="输入管理员名称" id="account" name="">
                <button type="submit" class="btn btn-success" onclick="admin_search()" id="" name=""><i class="Hui-iconfont">&#xe665;</i> 搜玩具类型</button>
            </div>
            <div class="cl pd-5 bg-1 bk-gray mt-20">
                <span class="l"> <a href="javascript:;" onclick="typeName_add()" class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 添加玩具类型</a> </span>
            </div>
            <table class="table table-border table-bordered  table-hover table-bg table-sort">
                <thead>
                <tr class="text-c">
                    <th ><input name="" type="checkbox" value="">全选</th>
                    <th >ID</th>
                    <th >名称</th>
                    <th >操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${typeName}" var="item">
                    <tr class="text-c">
                        <td><input name="" type="checkbox" value=""></td>
                        <td>${item.id}</td>
                        <td>${item.typename}</td>
                        <td class="td-manage">
                            <a style="text-decoration:none" class="ml-5" onClick="typeName_edit(this)" href="javascript:;" title="编辑">
                                <i class="Hui-iconfont">&#xe6df;</i></a>
                            <a style="text-decoration:none" class="ml-5" onClick="type_del(this)" href="javascript:;" title="删除">
                                <i class="Hui-iconfont">&#xe6e2;</i></a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </article>
    </div>
</section>

<%@ include file="_footer.jsp"%>

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="${ctx}/static/H_ui/static/lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="${ctx}/static/H_ui/static/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="${ctx}/static/H_ui/static/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
    /*
     参数解释：
     title	标题
     url		请求的url
     id		需要操作的数据id
     w		弹出层宽度（缺省调默认值）
     h		弹出层高度（缺省调默认值）
     */
    /*管理员-查询*/
    function admin_search(){
        var account =$("#account").val();
        var params={
            url:"/admin/search",
            method:"get",
            data: {
                account: account
            }
        }
        ajax(params,function (data) {
            var html="";
            html+='<tr class="text-c">'+
                    '<td><input type="checkbox" value="1" name=""></td>'+
                    '<td>'+data.id+'</td>'+
                    '<td>'+data.account+'</td>'+
                    '<td>'+data.password+'</td>'+
                    '<td>'+data.email+'</td>';
            if(data.power==1){
                html+='<td>管理员</td>';
            }else{
                html+='<td>普通用户</td>';
            }
            html+='<td>'+data.address+'</td>'+
                    '<td class="td-manage">'+
                    '<a title="编辑"  href="javascript:;" onclick="typeName_edit(this)" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a>'+
                    '<a title="删除"  href="javascript:;" onclick="type_del(this)" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>'+
                    '</tr>';
            $("#adminTable").html(html);
        })
    }
    /*管理员-增加*/
    function typeName_add(){
        layer.open({
            type: 2,
            title: "增加用户",
            content: place+'/typeName/add',
            area: ['640px', '420px']
        });
    }
    /*管理员-删除*/
    function type_del(obj){
        var id =  $(obj).parents("tr").find("td").eq(1).text();
        layer.confirm('确认要删除吗？',function(index){
            var params={
                url:place+"/typeName/typeNameDelete",
                method:"post",
                data:{
                    typeId:id
                }
            }
            ajax(params,function (data) {
                $(obj).parents("tr").remove();
                layer.msg('已删除!',{icon:1,time:1000});
            })
        });
    }
    /*管理员-编辑*/
    function typeName_edit(obj){
        var id =  $(obj).parents("tr").find("td").eq(1).text();
        var typeName =$(obj).parents("tr").find("td").eq(2).text();
        layer.open({
            type: 2,
            title: "编辑用户",
            content: place+'/typeName/typeName_update?id='+id+'&typeName='+typeName,
            area: ['640px', '420px']
        });
    }
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>