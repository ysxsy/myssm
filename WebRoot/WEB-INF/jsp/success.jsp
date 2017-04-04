<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/*border:solid 1px red;  */
*{margin: 0;padding: 0;font-family: "微软雅黑";font-size: 16px;}

body{background-color: #f0f5f5;}

.container{margin: 0;padding: 0;
min-width: 1200px; 
width:expression(document.body.clientWidth < 1200px? "1200px": "auto" );}

a:LINK{text-decoration: none;color: black;}
a:HOVER {color: red;}

.head{background-image: url("main/imgs/pay/navigation.png");width: 100%;height: 92px;clear: both;}

.logo{float: left;height: 92px;width: 120px;margin-right: 2px;}
.logo img{height:60px;width: 60px;margin-top: 12.5px;margin-left: 50%;}

.text{float: left;width: 53%;}
.text span{font-size: 20px;line-height: 92px;}
.text a{font-size: 16px;margin: 5% 5%;}

.login{float: right;width: 35%;}
.login a{line-height: 92px;font-size: 16px;margin-left: 70%;}


.content{margin:51px 92px;margin-right:120px; background-color: white;}
.title{background-color: #f0f5f5;}
.title p{width: 200px;height: 40px;line-height:40px; background-color: white;text-align: center;}

.payed{padding-top: 147px;padding-bottom: 146px;text-align: center;}
.payed p{font-size: 20px;color: #00DAFF;}
.payed img{width: 69px;height: 69px;margin: 39px;}

.payed a{font-size: 16px;}


.footer{padding-bottom:40px;  text-align: center;font-size: 12px;width: 50%;padding-left: 25%;}
.footer a{font-size: 12px;color: #949494;}
.footer span{font-size: 12px;color: #949494; }

</style>
</head>
<body>
<div class="container">

<div class="head">
	<div class="logo">
	<img src="main/imgs/pay/logo.png" />
	</div>
	<div class="text">
			<span><strong>友播直播</strong></span>
			<a href="#">Home</a>|
			<a href="#">活动</a>|
			<a href="#">账户充值</a>
	</div>
	<div class="login">
	<a href="javascript:openLogin();">登录/注册</a>
	</div>
</div>

<div class="content">
	<div class="title"><p>正在支付</p></div>
	<div class="payed">
	<p>支付成功</p>
	<img alt="正在跳转。。。。。" src="static/main/imgs/success/Shape.png"/>
	<div><a href="login.html">返回</a></div><p>
	</div>
</div>

<div class="footer">
<a target="_blank" href="#">主播协议</a> <span
				style="margin-left: 12px; margin-right: 6px">|</span> <a
				style="margin-left: 6px; margin-right: 6px" target="_blank"
				href="#">服务条款</a> <span
				style="margin-left: 6px; margin-right: 12px">|</span> <a
				target="_blank" href="#">联系我们</a><br/>
		<p class="txt">
			<a href="http://www.yoyozhibo.com">北京瓦勒迈杉互联网科技有限公司</a><span style="margin-left: 15px;">邮箱：walemaishan@126.com</span><span style="margin-left: 15px;">京ICP备16053270号</span>
		</p>
</div>


</div>

</body>
</html>