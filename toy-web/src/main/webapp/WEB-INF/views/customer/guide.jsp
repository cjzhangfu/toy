<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="_meta.jsp"%>
<title>帮助中心</title>
<link href="${ctx}/static/style/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${ctx}/static/js/jquery-1.8.3.min.js"></script>
</head>

<body>
<%@include file="_head.jsp"%>

<!-- 帮助中心 begin -->
<div class="cart">
    <div class="cart_main w1200 ovh">
        <div class="left fl">
            <ul>
                <li><a  class="on" href="${ctx}/guide">新手指南<span>></span></a></li>
                <li><a  href="${ctx}/process">购物流程<span>></span></a></li>
                <li><a  href="${ctx}/helpCenter">常见问题<span>></span></a></li>
                <li><a href="${ctx}/aboutUs">关于我们<span>></span></a></li>
            </ul>
        </div>
        <div class="right fr">
            <h2>常见问题文字内容</h2>
            <div class="con">
                <p>我们是国内领先的、专业提供“互联网应用服务”的供应商，拥有互联网经验丰富的精英团队，始终保持务实的风格，以“帮助客户成功”为已任，专注于提供对客户有价值的服务，业务服务范围主要包括：</p>
                <p>1.专业化网站设计和开发：网站建设的目的是通过网页图形设计，界面设计、创作及标准化的代码和专有软件、用户体验设计和搜索引擎优化来实现信息在web端的展现。</p>
                <p>2.数字化营销和推广：</p>
                <p>（1）SEM搜索引擎优化与传播：就是根据客户使用搜素引擎的方式，利用用户检索信息的机会尽可能将营销信息传递给目标用户。</p>
                <p>（2）APP应用营销与开发：就是通过特制手机、社区、SNS等平台上运行的应用程序来开展营销活动。</p>
                <p>（3）EDM电子邮件营销策划与执行：向目标客户发送EDM邮件，建立同目标顾客的沟通渠道，向其直接传达相关信息，用来促进销售。</p>
                <p>（4）微博营销策划及运营：通过微博平台为商家、个人等创造价值的一种营销平台。</p>
                <p>（5）微信营销策划及运营：商家通过提供用户需要的信息，推广自己产品的点对点的营销方式。</p>
            </div>
        </div>
    </div>
</div>
<!-- 帮助中心 end -->

<%@include file="_down.jsp"%>
</body>
</html>