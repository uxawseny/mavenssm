<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>用户登录</title>
    <%--取出部署的应用程序名--%>
    <link href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/signin.css" rel="stylesheet">
    <link rel="icon" href="${pageContext.request.contextPath}/images/ico2.ico" />
</head>

<body>

<div class="signin">
    <div class="signin-head"><img src="${pageContext.request.contextPath}/images/test/head_120.jpg" alt="" class="img-circle"></div>
    <form class="form-signin" role="form" action="${pageContext.request.contextPath}/user/login" method="post" id="myform">
        <input type="text" class="form-control" id="userName" name="userName" placeholder="用户名" required autofocus />
        <input type="password" class="form-control"  id="userPwd" name="userPwd" placeholder="密码" required  autofocus />
        <button class="btn btn-lg btn-warning btn-block" type="submit">登录</button>
        <label class="checkbox">
            <input type="checkbox" value="remember-me"> 记住我
        </label>
    </form>
</div>
</body>

</html>
