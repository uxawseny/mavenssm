$(".btn").click(function () {
    is_hide();
})
var u = $("input[name=userName]");
var p = $("input[name=userPwd]");
$("#submit").live('click', function () {
    if (u.val() == '' || p.val() == '') {
        $("#ts").html("用户名或密码不能为空~");
        is_show();
        return false;
    }
    else {
        /*用户名正则 只能输入5-20个以字母开头、可带数字、“_”的字串 */
        var reg = /^[a-zA-Z]{1}([a-zA-Z0-9]|[_]){4,19}$/;
        /*邮箱正则*/
        var reg1 = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        /*至少6位数字或字母*/
        var reg2 = /^[0-9A-Za-z]{6,}$/;
        /*/^[0-9A-Za-z]+$/;*/
        if (!(reg.exec(u.val()) || reg1.exec(u.val()))) {
            $("#ts").html("用户名错误");
            is_show();
            return false;
        } else if (!reg2.exec(p.val())) {
            $("#ts").html("密码错误");
            is_show();
            return false;
        }
    }
});
window.onload = function () {
    $(".connect p").eq(0).animate({"left": "0%"}, 600);
    $(".connect p").eq(1).animate({"left": "0%"}, 400);
}
function is_hide() {
    $(".alert").animate({"top": "-40%"}, 300)
}
function is_show() {
    $(".alert").show().animate({"top": "45%"}, 300)
}
