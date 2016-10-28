<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en" class="no-js">

<head>
    <meta charset="utf-8">
    <title>I AM NOT AI</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="${pageContext.request.contextPath}/images/ico2.ico"/>
    <!-- CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/supersized.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <script src="${pageContext.request.contextPath}/js/html5.js"></script>
</head>

<body oncontextmenu="return false">
<div class="page-container">
    <h1>JOIN IN AI SPACE</h1>
    <form action="${pageContext.request.contextPath}/user/register" method="post">
        <div>
            <input type="text" id="userName" name="userName" class="userName" placeholder="Name" autocomplete="off"/>
            <span id="userNamespan"></span>
        </div>
        <div>
            <input type="password" id="password" name="userPwd" class="password" placeholder="Password"
                   oncontextmenu="return false" onpaste="return false"/>
        </div>
        <div>
            <input type="text" id="userPhone" name="userPhone" class="userPhone" placeholder="Phone"
                   oncontextmenu="return false" onpaste="return false"/>
        </div>
        <div>
            <input type="text" id="userEmail" name="userEmail" class="userEmail" placeholder="Email"
                   oncontextmenu="return false" onpaste="return false"/>
            <span id="userEmailspan"></span>
        </div>
        <button id="submit" type="submit">Sign up for AI space</button>
    </form>
    <div class="connect">
        <p>If we can only encounter each other rather than stay with each other,then I wish we had never
            encountered.</p>
        <p style="margin-top:20px;">如果只是遇见，不能停留，不如不遇见。</p>
    </div>
</div>
<div class="alert" style="display:none">
    <h2>消息</h2>
    <div class="alert_con">
        <p id="ts"></p>
        <p style="line-height:70px"><a class="btn">确定</a></p>
    </div>
</div>

<%--以下js不要放在头文件--%>
<!-- Javascript -->
<script src="${pageContext.request.contextPath}/js/jquery-1.6.4.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/supersized.3.2.7.min.js"></script>
<script src="${pageContext.request.contextPath}/js/supersized-init.js"></script>
<%--注册校验和存在校验js--%>
<script src="${pageContext.request.contextPath}/js/registerValidate.js"></script>

</body>
</html>