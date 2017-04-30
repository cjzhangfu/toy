<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- 头部 begin -->
<div class="header">
    <div class="header_main w1200">
            <c:choose>
            <c:when test="${sessionScope.user!=null}">
            <p class="fl">欢迎${sessionScope.user.account}光临商城</p>
            </c:when>
            <c:otherwise>
                <p class="fl">您好，请 <a href="${ctx}/customer/login">[登录]</a> <a href="/customer/regist">[免费注册]</a></p>
            </c:otherwise>
            </c:choose>
        <ul class="fr ovh">
            <li class="li_1"><a class="bl" href="###">手机版</a></li><span>|</span>
            <li class="li_2"><a class="bl" href="help.html">帮助中心</a></li><span>|</span>
            <li class="li_3" id="collectBox"><a class="bl" href="cart.html">购物车<b>0</b>件</a></li><span>|</span>
            <li class="li_4"><a class="bl" href="user.html">个人中心</a></li>
        </ul>
    </div>
</div>
<div class="header2">
    <div class="header2_main w1200">
        <div class="logo fl"><a class="bl" href="index.html"><img src="${ctx}/static/img/index_logo.png" alt=""></a></div>
        <div class="search_box fr">
            <form>
                <input id="search" class="search" type="text" placeholder="宠物罐头   磨牙棒   满额立减"/>
                <input class="submit" type="submit" value="" />
            </form>
        </div>
    </div>
</div>
<div class="nav">
    <div class="nav_main w1200">
        <ul class="ovh">
            <li><a href="list.jsp">首页</a></li><span>|</span>
            <li><a href="list.jsp">婴儿专区(0-3岁)</a></li><span>|</span>
            <li><a href="list.jsp">幼儿专区(3-6岁)</a></li><span>|</span>
            <li><a href="list.jsp">儿童专区(6-11岁)</a></li><span>|</span>
            <li><a href="list.jsp">少年专区(11-15岁)</a></li><span>|</span>
            <li><a href="list.jsp">青年专区(>15岁)</a></li><span>|</span>
            <li><a href="list.jsp">周边专区</a></li>
        </ul>
    </div>
</div>
<!-- 头部 end -->