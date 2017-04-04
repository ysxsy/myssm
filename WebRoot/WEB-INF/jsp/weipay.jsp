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
<base href="<%=basePath%>">
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{margin: 0;padding: 0;font-family: "微软雅黑";font-size: 16px;}

body{background-color: #f0f5f5;}

.container{min-width: 1200px; width:expression(document.body.clientWidth < 1200px? "1200px": "auto" );}

a:LINK{text-decoration: none;color: black;}
a:HOVER {color: red;}

.head{background-image: url("static/main/imgs/pay/navigation.png");width: 100%;height: 92px;clear: both;}

.logo{float: left;height: 92px;width: 120px;margin-right: 2px;}
.logo img{height:60px;width: 60px;margin-top: 12.5px;margin-left: 50%;}

.text{float: left;width: 53%;}
.text span{font-size: 20px;line-height: 92px;}
.text a{font-size: 16px;margin: 5% 5%;}

.login{float: right;width: 35%;}
.login a{line-height: 92px;font-size: 16px;margin-left: 70%;}

.content{margin:51px 92px;margin-right:120px;background-color:white;}

.title{background-color: #f0f5f5;}
.title p{width: 200px;height: 40px;line-height:40px; background-color: white;text-align: center;}

.total{height: 391px;}
.total .pay_left{float: left;margin-top: 28px;margin-left: 168px;height: 362px;text-align: center;}
.total .pay_left img{width: 229px;height: 362px;}
.total .pay_center{float: left;margin: 0 107px;text-align: center;}
.total .pay_center img{width: 30px;height: 57px;margin-top: 190px;}
.total .pay_right{float: left;margin-top: 40px;}
.total .pay_right p{margin-bottom: 18px;height: 31px;text-align: center;}
.total .pay_right span{font-size: 24px;color: #00DAFF;}
.total .pay_right img{width: 271px;height: 271px;border:1px solid #00DAFF;border-radius:9px;}
.total .pay_right .code_bo{color: #989898; font-size: 12px;height: 22px;margin-bottom: 0px;}

.con_footer{margin-left: 34px;margin-right: 34px;height: 95px;border-top:1px solid #D8D8D8;line-height: 95px; }
.con_footer a{color: #333333;}
.con_footer img{vertical-align:middle;}


.footer{padding-bottom:40px;  text-align: center;font-size: 12px;width: 50%;padding-left: 25%;}
.footer a{font-size: 12px;color: #949494;}
.footer span{font-size: 12px;color: #949494; }

</style>
</head>
<body>
<div class="container">

<div class="head">
	<div class="logo">
	<img src="static/main/imgs/pay/logo.png" />
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
	<div class="title"><p>正在使用微信支付充值</p>${pd.YOYO_ID }</div>
	<div  class="total">
			<div class="pay_left">
			<img alt="扫一扫" src="static/main/imgs/weipay/watch.png"/>
			</div>
			
			<div class="pay_center">		
			<img alt="指向" src="static/main/imgs/weipay/bottom.png"/>
			</div>
			
			<div class="pay_right">
			<p>支付金额：<span>2999</span>元</p>		
			<!-- <img alt="二维码" src="static/main/imgs/first/code.png"> -->
			<div align="center" id="qrcode">			
			<input type="hidden" value="${pd.code_url}" id="url">
			</div>
			<p class="code_bo">请用微信扫面二维码进行支付</p>			
			</div>		
	</div>
	<div class="con_footer">
		<a href="login.html"><img src="<%=basePath %>static/main/imgs/weipay/return.png"/>修改返回信息</a>
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
<script src="static/main/js/jquery.min.js"></script>
<script src="static/main/js/qrcode.js"></script>
<script>
 	//这个地址是Demo.java生成的code_url,这个很关键
	//var url = "weixin://wxpay/bizpayurl?pr=IrbYjQm";
 	var url=$("#url").val();
	alert(url);
	//参数1表示图像大小，取值范围1-10；参数2表示质量，取值范围'L','M','Q','H'
	var qr = qrcode(10, 'H');
	qr.addData(url);
	qr.make();
	var dom=document.createElement('DIV');
	dom.innerHTML = qr.createImgTag();
	var element=document.getElementById("qrcode");
	element.appendChild(dom); 
	
	
	function checkOrder(orderId) {  
        console.log("定时器方法"+orderId);  
        common.get("/*******/order/checkOrder?out_trade_no="+orderId,function(data){  
   var isorder = data.isorder;  
   var paystatus = data.paystatus;  
   if(isorder=="1"){  
     if(paystatus=="1"){  
         //支付成功跳转  
         window.location.href="******/order/wxpaySuccess?out_trade_no="+orderId;  
         clearInterval(time);  
     }else if(paystatus=="2"){  
         //支付失败  
         alert("支付失败！");  
         clearInterval(time);  
     }  
   }  
});        
 }  
 </script>

</html>