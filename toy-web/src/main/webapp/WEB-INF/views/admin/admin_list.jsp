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
    <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页
        <span class="c-gray en">&gt;</span>
        管理员管理
        <span class="c-gray en">&gt;</span>
        管理员列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a> </nav>
    <div class="Hui-article">
        <article class="cl pd-20">
            <div class="text-c">
                <input type="text" class="input-text" style="width:320px" placeholder="输入管理员名称" id="account" name="">
                <button type="submit" class="btn btn-success" onclick="admin_search()" id="" name=""><i class="Hui-iconfont">&#xe665;</i> 搜用户</button>
            </div>
            <div class="cl pd-5 bg-1 bk-gray mt-20">
                <span class="l"> <a href="javascript:;" onclick="admin_add()" class="btn btn-primary radius"><i class="Hui-iconfont">&#xe600;</i> 添加管理员</a> </span>
            </div>
            <table class="table table-border table-bordered table-bg">
                <thead>
                <tr>
                    <th scope="col" colspan="9">员工列表</th>
                </tr>
                <tr class="text-c">
                    <th width="25"><input type="checkbox" name="" value=""></th>
                    <th width="40">ID</th>
                    <th width="150">登录名</th>
                    <th width="90">密码</th>
                    <th width="150">邮箱</th>
                    <th>角色</th>
                    <th width="130">地址</th>
                    <th width="100">操作</th>
                </tr>
                </thead>
                <tbody id="adminTable">
                <c:forEach items="${adminlist}" var="item">
                    <tr class="text-c">
                        <td><input type="checkbox" value="1" name=""></td>
                        <td>${item.id}</td>
                        <td>${item.account}</td>
                        <td>${item.password}</td>
                        <td>${item.email}</td>
                        <td>
                            <c:choose>
                                <c:when test="${item.power==1}">
                                    管理员
                                </c:when>
                                <c:otherwise>
                                    普通用户
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>${item.address}</td>
                        <td class="td-manage">
                            <a title="编辑" id="${item.id}" href="javascript:;" onclick="admin_edit(this)" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a>
                            <a title="删除" data-id="${item.id}" href="javascript:;" onclick="admin_del(this)" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
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
                '<a title="编辑"  href="javascript:;" onclick="admin_edit(this)" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6df;</i></a>'+
                '<a title="删除"  href="javascript:;" onclick="admin_del(this)" class="ml-5" style="text-decoration:none"><i class="Hui-iconfont">&#xe6e2;</i></a></td>'+
                '</tr>';
            $("#adminTable").html(html);
        })
    }
    /*管理员-增加*/
    function admin_add(){
        layer.open({
            type: 2,
            title: "增加用户",
            content: place+'/admin/add',
            area: ['640px', '420px']
        });
    }
    /*管理员-删除*/
    function admin_del(obj){
        var id =  $(obj).parents("tr").find("td").eq(1).text();
        layer.confirm('确认要删除吗？',function(index){
            var params={
                url:place+"/admin/adminDelete",
                method:"post",
                data:{
                    userId:id
                }
            }
            ajax(params,function (data) {
                $(obj).parents("tr").remove();
                layer.msg('已删除!',{icon:1,time:1000});
            })
        });
    }
    /*管理员-编辑*/
    function admin_edit(obj){
        var id =  $(obj).parents("tr").find("td").eq(1).text();
        var account =$(obj).parents("tr").find("td").eq(2).text();
        var password =$(obj).parents("tr").find("td").eq(3).text();
        var email =$(obj).parents("tr").find("td").eq(4).text();
        var power =$(obj).parents("tr").find("td").eq(5).text();
        var address =$(obj).parents("tr").find("td").eq(6).text();
        layer.open({
            type: 2,
            title: "编辑用户",
            content: place+'/admin/admin_update?id='+id+'&account='+account+'&password='+password+'&address='+address+'&power='+power+'&email='+email,
            area: ['640px', '420px']
        });
    }
</script>
<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>