<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://"
+ request.getServerName() + ":" + request.getServerPort()
+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>登陆</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="resources/assets/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/mycss/login.css">
<script type="text/javascript" src="resources/assets/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/assets/js/jquery.min.js"></script>
<base href="<%=basePath%>">
</head>

<body style="background-image:url('resources/images/login-img.jpg')">
	
<div class="main-box">
    <ul class="main-ul">
        <li class="main-li main-li-left"><a href="#" id="a-left"    onfocus="this.blur();" >登陆</a>
            <ul>
            <li id="login" >
                <form class="form-horizontal" role="form">
                <div class="form-group">
                    <div class="col-sm-12">
                        <input class="form-control"  type="email" onfocus="if(this.value==defaultValue) {this.value=''}" onblur="if(!value) {value=defaultValue; this.value='';}" value="" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-12">
                        <input class="form-control"  type="password" onfocus="if(this.value==defaultValue) {this.value=''}" onblur="if(!value) {value=defaultValue; this.value='XXXXXX';}"  value="XXXXXX" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-12 column">
                        <button type="button" class="btn btn-default btn-block btn-primary">登陆</button>
                    </div>
                </div>
                    <div class="col-md-12 column" style="height:auto;padding:0px 0px;">
                        <input id="check-box-login" type="checkbox" onfocus="this.blur();"/><p style="float: left;line-height:25px; ">记住我</p>
                        <div class="icon"><a href="#"> <img src="resources/images/WEIBO.png"></a></div>
                        <div class="icon"><a href="#"><img src="resources/images/QQ.png"></a></div>
                        <div class="icon"><a href="#"><img src="resources/images/PHONE.png"></a></div>
                        <div class="icon"><a href="#"><img src="resources/images/WEIXIN.png"></a></div>

                    </div>
                </form>
            </li>
        </ul>
        </li>
        <li class="main-li main-li-right"><a href="#" id="a-right" onfocus="this.blur();">注册</a>
            <ul>
                <li id="register">
                    <form class="form-horizontal" role="form">
                        <div class="form-group">
                        <div class="col-sm-12">
                            <input class="form-control"  type="email" onfocus="if(this.value==defaultValue) {this.value=''}"  onblur="if(!value) {value=defaultValue; this.value='';}" value="" />
                        </div>
                    </div>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <input class="form-control"  type="text"  onfocus="if(this.value==defaultValue) {this.value=''}" onblur="if(!value) {value=defaultValue; this.value='username';}" value="username"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <input class="form-control"  type="password"   onfocus="if(this.value==defaultValue) {this.value=''}" onblur="if(!value) {value=defaultValue; this.value='XXXXXX';}"  value="XXXXXX" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-12">
                                <input class="form-control"  type="text" onfocus="if(this.value==defaultValue) {this.value='';this.type='password'}" onblur="if(!value) {value=defaultValue; this.type='text';}" value="确认密码"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-12 column">
                                <button type="button"   class="btn btn-default btn-block btn-primary">注册</button>
                            </div>
                        </div>
                    </form>
                </li>
            </ul>
        </li>
    </ul>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $(".main-li-left").click(function () {
            $(".main-li-left ,#login").css("background-color","rgba(213, 216, 213, 0.5)");
            $(".main-li-right").css("background-color","rgba(49, 52, 49, 0.5)");
            $("#a-left").css("color"," #1b1b1b");
            $("#a-right").css("color","rgba(49, 52, 49, 0.5)");
            $("a").css("color","write");
            $('#login').fadeIn(40);
            $('#register').fadeOut(40);
        });
        $(".main-li-right").click(function () {
            $(".main-li-right ,#register").css("background-color","rgba(213, 216, 213, 0.5)");
            $(".main-li-left").css("background-color","rgba(49, 52, 49, 0.5)");
            $("#a-right").css("color","#1b1b1b");
            $("#a-left").css("color","rgba(49, 52, 49, 0.5)");
            $("#register").fadeIn(40);
            $("#login").fadeOut(40);
        });
    });
</script>
</body>
</html>
