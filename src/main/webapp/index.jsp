<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>用户登录</title>
</head>

<body>

<form action="user/login" method="post" id="myform">
    <input type="text" id="userName" name="userName"/>
    <input type="password" id="userPwd" name="userPwd"/>
    <input type="submit" value="提交" id="login" />
</form>
</body>

</html>
