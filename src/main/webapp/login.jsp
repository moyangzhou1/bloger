<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/9/8
  Time: 9:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="icon" href="loginSpecial/images/favicon.ico" type="image/x-icon"/>
<link rel="shortcut icon" href="loginSpecial/images/favicon.ico" type="image/x-icon"/>
<link href="../loginSpecial/css/default.css" rel="stylesheet" type="text/css" />
<!--必要样式-->
<link href="../loginSpecial/css/styles.css" rel="stylesheet" type="text/css" />
<link href="../loginSpecial/css/demo.css" rel="stylesheet" type="text/css" />
<link href="../loginSpecial/css/loaders.css" rel="stylesheet" type="text/css" />
<script src="../loginSpecial/js/jquery-2.1.1.min.js"></script>

<html>
<head>
    <title>我的私人空间</title>
</head>
<body>
<div class='login'>

    <!--<img class="MyLogo" src="loginSpecial/images/logo01.png" alt="   LOGO">-->
    <div class='login_title'>
        <span>主人，欢迎您回来！</span>
    </div>
    <div class='login_fields'>
        <div class='login_fields__user'>
            <div class='icon'>

                <img alt="" src='../loginSpecial/img/user_icon_copy.png'>
            </div>
            <input name="login" placeholder='用户名' maxlength="16" class="username" type='text' autocomplete="off" value="moyangzhou"/>
            <div class='validation'>
                <img alt="" src='../loginSpecial/img/tick.png'>
            </div>
        </div>
        <div class='login_fields__password'>
            <div class='icon'>
                <img alt="" src='../loginSpecial/img/lock_icon_copy.png'>
            </div>
            <input name="pwd" class="passwordNumder" placeholder='密码' maxlength="16" type='text' autocomplete="off">
            <div class='validation'>
                <img alt="" src='../loginSpecial/img/tick.png'>
            </div>
        </div>
        <div class='login_fields__password'>
            <div class='icon'>
                <img alt="" src='../loginSpecial/img/key.png'>
            </div>
            <input name="code" placeholder='验证码' maxlength="4"  class="ValidateNum" type='text' name="ValidateNum" autocomplete="off">
            <div class='validation' style="opacity: 1; right: -5px;top: -3px; margin-right: 0px">
                <canvas  class="J_codeimg" id="myCanvas" onclick="Code();">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
            </div>
        </div>
        <div class='login_fields__submit' onclick="login()">
            <input type='button' value='登录' >
        </div>
    </div>
    <div class='success'>
    </div>
    <div class='disclaimer'>
        <p>欢迎登陆接入平台</p>
    </div>
</div>
<div class='authent'>
    <div class="loader" style="height: 60px;width: 60px;margin-left: 28px;margin-top: 40px">
        <div class="loader-inner ball-clip-rotate-multiple">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>
    <p>认证中...</p>
</div>
<div class="OverWindows"></div>
<link href="../loginSpecial/layui/css/layui.css" rel="stylesheet" type="text/css" />
<!--<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>-->
<script type="text/javascript" src="../loginSpecial/js/jquery-ui.min.js"></script>
<script type="text/javascript" src='../loginSpecial/js/stopExecutionOnTimeout.js?t=1'></script>
<script src="../loginSpecial/layui/layui.js" type="text/javascript"></script>
<script src="../loginSpecial/js/Particleground.js" type="text/javascript"></script>
<script src="../loginSpecial/js/Treatment.js" type="text/javascript"></script>
<script src="../loginSpecial/js/jquery.mockjax.js" type="text/javascript"></script>
<%--<script src="loginSpecial/js/controlLogin.js" type="text/javascript"></script>--%>
<script>
    function login() {
        $.ajax({
            type: "GET",
            url: "/user/list.do",
            data: {username:$("#username").val(), content:$("#content").val()},
            dataType: "json",
            success: function(data){
                // window.location.href("index.jsp");
                alert("你要打开百度嘛？" );
            },
            error : function (data) {


            }
        });
    }
</script>
</body>
</html>
