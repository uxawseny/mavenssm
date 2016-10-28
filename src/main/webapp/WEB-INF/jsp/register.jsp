<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en" class="no-js">

<head>

    <meta charset="utf-8">
    <title>I AM NOT AI</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="${pageContext.request.contextPath}/images/ico2.ico" />

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
            <span id="userNamespan" ></span>
        </div>
        <div>
            <input type="password" id="password" name="userPwd" class="password" placeholder="Password" oncontextmenu="return false" onpaste="return false" />
        </div>
        <div>
            <input type="text" id="userPhone" name="userPhone" class="userPhone" placeholder="Phone" oncontextmenu="return false" onpaste="return false" />
        </div>
        <div>
            <input type="text" id="userEmail" name="userEmail" class="userEmail" placeholder="Email" oncontextmenu="return false" onpaste="return false" />
            <span id="userEmailspan" ></span>
        </div>
        <button id="submit" type="submit">Sign up for AI space</button>
    </form>
    <div class="connect">
        <p>If we can only encounter each other rather than stay with each other,then I wish we had never encountered.</p>
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

<!-- Javascript -->
<script src="${pageContext.request.contextPath}/js/jquery-1.6.4.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/supersized.3.2.7.min.js"></script>
<script src="${pageContext.request.contextPath}/js/supersized-init.js"></script>
<script>
    $(".btn").click(function(){
        is_hide();
    })
    var u = $("input[name=userName]");
    var p = $("input[name=userPwd]");
    var pe = $("input[name=userPhone]");
    var em = $("input[name=userEmail]");
    $("#submit").live('click',function(){
        if(u.val() == '' || p.val() =='')
        {
            $("#ts").html("用户名或密码不能为空~");
            is_show();
            return false;
        }else if(pe.val() == '' || em.val() ==''){
            $("#ts").html("手机号码或邮箱不能为空~");
            is_show();
            return false;
        }
        else{
            /* 用户名正则 只能输入5-20个以字母开头、可带数字、“_”的字串 */
            var reg = /^[a-zA-Z]{1}([a-zA-Z0-9]|[_]){4,19}$/;
            /*密码正则,至少6位数字或字母*/
            var reg2 = /^[0-9A-Za-z]{6,}$/;
            /*手机号码正则*/
            var reg3 = /^1[34578]\d{9}$/;
            /*邮箱正则*/
            var reg4 = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
            if(!reg.exec(u.val()))
            {
                $("#ts").html("用户名格式错误,5-20个以字母开头");
                is_show();
                return false;
            }else if(!reg2.exec(p.val())){
                $("#ts").html("密码格式错误");
                is_show();
                return false;
            }else if(!reg3.exec(pe.val())){
                $("#ts").html("手机号码格式错误");
                is_show();
                return false;
            }else if(!reg4.exec(em.val())){
                $("#ts").html("邮箱格式错误");
                is_show();
                return false;
            }
        }
    });
    function func1()
    {
        $(".connect p").eq(0).animate({"left":"0%"}, 600);
        $(".connect p").eq(1).animate({"left":"0%"}, 400);
    }
    function is_hide(){ $(".alert").animate({"top":"-40%"}, 300) }
    function is_show(){ $(".alert").show().animate({"top":"45%"}, 300) }
</script>

<script type="text/javascript">
    /* 创建异步对象 */
    function createXMLHttpRequest(){
        try {
            return new XMLHttpRequest();//大多数浏览器
        } catch (e) {
            try {
                return ActvieXObject("Msxml2.XMLHTTP");//IE6.0
            } catch (e) {
                try {
                    return ActvieXObject("Microsoft.XMLHTTP");//IE5.5及更早版本
                } catch (e) {
                    alert("浏览器不支持！");
                    throw e;
                }
            }
        }
    }

    function func2() {
        // 获取文本框，给它的失去焦点事件注册监听
        var userEle = document.getElementById("username");
        userEle.onblur = function() {
            //1.得到异步对象
            var xmlHttp = createXMLHttpRequest();
            //2.打开连接
            xmlHttp.open("POST", "/ajaxDemo/AjaxRegister", true);
            //3.设置请求头：Content-Type
            xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            //4.发送请求，给出请求体
            xmlHttp.send("username=" + userEle.value);

            //5.给xmlHttp的onreadystatechange事件注册监听
            xmlHttp.onreadystatechange = function() {
                if(xmlHttp.readyState == 4 && xmlHttp.status == 200) {//双重判断
                    //获取服务器的响应，判断是否为1
                    // 是：获取span，添加内容：“用户名已被注册”
                    var text = xmlHttp.responseText;
                    var emailSpan = document.getElementById("userNamespan");
                    var nameSpan = document.getElementById("userNamespan");
                    if(text == "1") {
                        //得到span元素
                        emailSpan.innerHTML = "用户名已被注册！";
                    } else if (text == "2"){
                        nameSpan.innerHTML = "邮箱已被注册！";
                    }
                }
            };
        };
    };



</script>
<script type="text/javascript">
    window.onload=function(){
        func1();
        func2();
    }
</script>


</body>

</html>