<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en" class="no-js">

<head>

    <meta charset="utf-8">
    <title>I AM NOT AI</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="${pageContext.request.contextPath}/images/ico2.ico" />

    <!--  CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/supersized.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <script src="${pageContext.request.contextPath}/js/html5.js"></script>

</head>

<body oncontextmenu="return false">

<div class="page-container">
    <h1>SIGN IN AI SPACE</h1>
    <form action="${pageContext.request.contextPath}/user/login" method="post">
        <div>
            <input type="text" id="username" name="userName" class="username" placeholder="Username or email address" autocomplete="off"/>
        </div>
        <div>
            <input type="password" id="password" name="userPwd" class="password" placeholder="Password" oncontextmenu="return false" onpaste="return false" />
        </div>
        <button id="submit" type="submit">Sign in</button>

        <div id="btnlink">

                <a id="register" href="${pageContext.request.contextPath}/user/registerPage">Sign up</a>
                <a id="forgotpwd" href="${pageContext.request.contextPath}/user/findPwdPage">Forgot password?</a>
        </div>

    </form>
    <div class="connect">
        <p>If we can only encounter each other rather than stay with each other,then I wish we had never encountered.</p>
        <p style="margin-top:20px;">如果只是遇见，不能停留，不如不遇见。</p>
    </div>
</div>
<div class="alert" style="display:none">
    <h2 >消息</h2>
    <div class="alert_con" >
        <p id="ts"></p>
        <p style="line-height:70px"><a class="btn">确定</a></p>
    </div>
</div>

<!-- Javascript -->
<script src="${pageContext.request.contextPath}/js/jquery-1.6.4.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/supersized.3.2.7.min.js"></script>
<script src="${pageContext.request.contextPath}/js/supersized-init.js"></script>
<%--校验js--%>
<script src="${pageContext.request.contextPath}/js/validate.js"></script>

</body>

</html>