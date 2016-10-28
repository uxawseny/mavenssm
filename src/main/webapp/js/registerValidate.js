$(".btn").click(function () {
    is_hide();
})
var u = $("input[name=userName]");
var p = $("input[name=userPwd]");
var pe = $("input[name=userPhone]");
var em = $("input[name=userEmail]");
$("#submit").live('click', function () {
    if (u.val() == '' || p.val() == '') {
        $("#ts").html("用户名或密码不能为空~");
        is_show();
        return false;
    } else if (pe.val() == '' || em.val() == '') {
        $("#ts").html("手机号码或邮箱不能为空~");
        is_show();
        return false;
    }
    else {
        /* 用户名正则 只能输入5-20个以字母开头、可带数字、“_”的字串 */
        var reg = /^[a-zA-Z]{1}([a-zA-Z0-9]|[_]){4,19}$/;
        /*密码正则,至少6位数字或字母*/
        var reg2 = /^[0-9A-Za-z]{6,}$/;
        /*手机号码正则*/
        var reg3 = /^1[34578]\d{9}$/;
        /*邮箱正则*/
        var reg4 = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        if (!reg.exec(u.val())) {
            $("#ts").html("用户名格式错误,5-20个以字母开头");
            is_show();
            return false;
        } else if (!reg2.exec(p.val())) {
            $("#ts").html("密码格式错误");
            is_show();
            return false;
        } else if (!reg3.exec(pe.val())) {
            $("#ts").html("手机号码格式错误");
            is_show();
            return false;
        } else if (!reg4.exec(em.val())) {
            $("#ts").html("邮箱格式错误");
            is_show();
            return false;
        }
    }
});
function funcIsRight() {
    $(".connect p").eq(0).animate({"left": "0%"}, 600);
    $(".connect p").eq(1).animate({"left": "0%"}, 400);
}
function is_hide() {
    $(".alert").animate({"top": "-40%"}, 300)
}
function is_show() {
    $(".alert").show().animate({"top": "45%"}, 300)
}

/* 创建异步对象 */
function createXMLHttpRequest() {
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

function funcIsExist() {
    // 获取文本框，给它的失去焦点事件注册监听
    var userEle = document.getElementById("username");
    userEle.onblur = function () {
        //1.得到异步对象
        var xmlHttp = createXMLHttpRequest();
        //2.打开连接
        xmlHttp.open("POST", "/ajaxDemo/AjaxRegister", true);
        //3.设置请求头：Content-Type
        xmlHttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        //4.发送请求，给出请求体
        xmlHttp.send("username=" + userEle.value);

        //5.给xmlHttp的onreadystatechange事件注册监听
        xmlHttp.onreadystatechange = function () {
            if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {//双重判断
                //获取服务器的响应，判断是否为1
                // 是：获取span，添加内容：“用户名已被注册”
                var text = xmlHttp.responseText;
                var emailSpan = document.getElementById("userNamespan");
                var nameSpan = document.getElementById("userNamespan");
                if (text == "1") {
                    //得到span元素
                    emailSpan.innerHTML = "用户名已被注册！";
                } else if (text == "2") {
                    nameSpan.innerHTML = "邮箱已被注册！";
                }
            }
        };
    };
};


window.onload = function () {
    funcIsRight();
    funcIsExist();
}