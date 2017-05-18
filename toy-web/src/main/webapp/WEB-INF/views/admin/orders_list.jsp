<%--
  Created by IntelliJ IDEA.
  User: fu
  Date: 2017/4/25
  Time: 9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="_meta.jsp"%>
<title>订单列表</title>
</head>
<body>
<%@ include file="_header.jsp"%>
<%@ include file="_menu.jsp"%>
<section class="Hui-article-box">
    <nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 订单管理 <span class="c-gray en">&gt;</span> 订单列表 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
    <div class="Hui-article">
        <article class="cl pd-20">
            <div class="text-c">
                <input type="text" name="" id="names" placeholder=" 订单编号" style="width:320px" class="input-text">
                <button name="" id="toysubmit" class="btn btn-success" type="submit"><i class="Hui-iconfont">&#xe665;</i> 搜索订单</button>
            </div>
            <div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"></span> <span class="r">共有数据：<strong>54</strong> 条</span> </div>
            <div class="mt-20">
                <table class="table table-border table-bordered table-bg table-hover table-sort">
                    <thead>
                    <tr class="text-c">
                        <th width="40"><input name="" type="checkbox" value=""></th>
                        <th width="80">图片</th>
                        <th width="100">订单编号</th>
                        <th width="120">地址信息</th>
                        <th width="40">玩具总数量</th>
                        <th>玩具总价格</th>
                        <th width="40">支付总价格</th>
                        <th width="70">备注</th>
                        <th width="80">创建时间</th>
                        <th width="80">支付时间</th>
                        <th width="100">状态</th>
                        <th width="100">操作</th>
                    </tr>
                    </thead>
                    <tbody id="toyListData">
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
<script type="text/javascript" src="${ctx}/static/js/moment.js"></script>
<script type="text/javascript">
    $('.table-sort').dataTable({
        "aaSorting": [[ 1, "desc" ]],//默认第几个排序
        "bStateSave": true,//状态保存
        "aoColumnDefs": [
            //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
            {"orderable":false,"aTargets":[0,8]}// 制定列不参与排序
        ]
    });
    initData()
    function initData(){
        var params={
            url:"${ctx}/orders/myordersDataSource",
            method:"get",
        }
        ajax(params,function (result) {
            console.log(result);
            var html="";
            $.each(result,function (i,v) {
                html+= '<tr class="text-c">'+
                        '<td><input name="" type="checkbox" value=""></td>'+
                        '<td><img src="/uploadImage/'+v.ordersToys[0].toysInfoBean.picture.split(",")[0]+'" style="width: 67px;height: 82px"/></td>'+
                        '<td>'+v.number+'</td>'+
                        '<td>'+v.address.contact+'--'+v.address.address+v.address.mobile+'</td>'+
                        '<td>'+v.total_amount+'</td>'+
                        '<td class="text-l">'+v.total_price+'</td>'+
                        '<td class="text-c">'+v.payment_price+'</td>'+
                        '<td>'+v.remark+'</td>'+
                        '<td class="td-status"><span>'+moment(v.creat_time).format('YYYY-MM-DD HH:mm:ss')+'</span></td>'+
                        '<td >'+moment(v.payment_time).format('YYYY-MM-DD HH:mm:ss')+'</td>'+
                        '<td>'+v.status+'</td>'+
                        '<td class="td-manage"><a style="text-decoration:none" class="ml-5" onClick="toy_del(this)" href="javascript:;" title="删除" id="'+v.id+'"><i class="Hui-iconfont">&#xe6e2;</i></a></td>'+
                        '</tr>';
            })
            $("#toyListData").html(html);
        })
    }
    /*订单-搜索*/
    $("#toysubmit").click(function(){
        var names=$("#names").val();
        var params={
            url:"${ctx}/orders/myordersDataSource?id="+names,
            method:"get",
        }
        ajax(params,function (result) {
            var html="";
            $.each(result,function (i,v) {
                html+= '<tr class="text-c">'+
                        '<td><input name="" type="checkbox" value=""></td>'+
                        '<td><img src="/uploadImage/'+v.ordersToys[0].toysInfoBean.picture.split(",")[0]+'" style="width: 67px;height: 82px"/></td>'+
                        '<td>'+v.number+'</td>'+
                        '<td>'+v.address.contact+'--'+v.address.address+v.address.mobile+'</td>'+
                        '<td>'+v.total_amount+'</td>'+
                        '<td class="text-l">'+v.total_price+'</td>'+
                        '<td class="text-c">'+v.payment_price+'</td>'+
                        '<td>'+v.remark+'</td>'+
                        '<td class="td-status"><span>'+moment(v.creat_time).format('YYYY-MM-DD HH:mm:ss')+'</span></td>'+
                        '<td >'+moment(v.payment_time).format('YYYY-MM-DD HH:mm:ss')+'</td>'+
                        '<td>'+v.status+'</td>'+
                        '<td class="td-manage"><a style="text-decoration:none" class="ml-5" onClick="toy_del(this)" href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a></td>'+
                        '</tr>';
            })
            $("#toyListData").html(html);
        })
    })
    /*订单-删除*/
    function toy_del(obj){
        var orders_id = $(obj).attr("id");
        layer.confirm('确认要删除吗？',function(index){
            var params={
                url:place+"/orders/delectOrders",
                method:"post",
                data:{
                    id:orders_id
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
