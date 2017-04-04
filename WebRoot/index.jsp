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
<c:set var="ctp" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
<head>
<link rel="stylesheet" href="${ctp}/static/main/css/index.css" />
<meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>友播直播官网</title>

</head>
<body>
<div class="container"> 
<div class="bg">
<img style="position: fixed;display: block;min-width: 1200px; 
width:expression(document.body.clientWidth < 1200px? '1200px': 'auto' );" id="i1" src="${ctp}/static/main/imgs/first/webbg1.png" height="100%" width="100%" />
		<!-- <img style="position: fixed;display: none;" id="i2" src="${ctp}/static/main/imgs/first/webbg2.png" height="100%" width="100%" />
		<img style="position: fixed;display: none;" id="i3" src="${ctp}/static/main/imgs/first/webbg3.png" height="100%" width="100%" /> -->
</div>
<div  class="head">
	<div class="logo">
		<img  alt="logo" src="${ctp}/static/main/imgs/first/logo.png"> </img>
	</div>		
	<div class="head_right">
			<a href="#">Home</a>
			<span
				style="margin-left: 20px; margin-right: 20px">|</span>
			<a href="#">活动</a><span
				style="margin-left: 20px; margin-right: 20px">
			|</span>
			<a href="<%=basePath %>login.do">账户充值</a>			
	</div>
</div>

<div class="content">
<div class="con_left">友播直播</div><div class="con_right">乐享生活</div>
</div>

<!-- http:/${ctp}/static.yoyozhibo.com/youbo-file/ipa/youbo_test_1.0.0.ipa -->

<div class="load">
	
			<div class="an">
			<!-- http:/${ctp}/static.yoyozhibo.com/youbo-file/apk/youbo_test_1.0.0.apk -->
				<a type="txt" href="#">
				<img border="0px" alt="android" width="150px" height="40px" src="${ctp}/static/main/imgs/first/unan.png"
						onMouseOver="this.src='${ctp}/static/main/imgs/first/an.png'"
						onMouseOut="this.src='${ctp}/static/main/imgs/first/unan.png'"/></a>
			</div><div class="ios">
			<!-- https://www.pgyer.com/7jxt -->
			<a type="txt" href="#">
					<img alt="pc" border="0px"
						width="150px" height="40px" src="${ctp}/static/main/imgs/first/unios.png"
						onMouseOver="this.src='${ctp}/static/main/imgs/first/ios.png'"
						onMouseOut="this.src='${ctp}/static/main/imgs/first/unios.png'"/></a>
			</div><div class="code"> 			
				<a type="txt" href="#">
				 <img border="0px"
						id="code" alt="code" width="150px" height="40px" src="${ctp}/static/main/imgs/first/unqr.png"
						onMouseover="this.src='${ctp}/static/main/imgs/first/qr.png'"
						onmouseout="this.src='${ctp}/static/main/imgs/first/unqr.png'"/>
				</a>												
			</div> 
			<div class="codeqr" id="codeqr" >
			<img id="codeqr" style="display: none;"></img>
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

</div>



</body>
<script src="${ctp}/static/main/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">

//发送图片鼠标滑过
//style="background-image: url(${ctp}/static/main/imgs/first/code.png);"
//"background:url('${ctp}/static/main/imgs/first/code.png');position: relative;padding:-5px;width:160px;height:160px;left:78%;bottom: 50px;display:block;
$("#code").mouseover(	
	function (){
		$("#codeqr").attr("style",
				"background:url('${ctp}/static/main/imgs/first/code.png');width:160px;height: 160px;");
	}
);
//发送图片鼠标离开
$("#code").mouseout(
		function (){
			$("#codeqr").attr("style","");
		}
	/* function (){		
		$("#codeqr").attr("style","background:url('');");
	} */
);
	

/* setInterval(function auto() {			
			var date=new Date();
			var s=date.getSeconds();			
			if(s%6==0||s%6==1){
				document.getElementById("i1").style.display = "block";
				document.getElementById("i2").style.display = "none";
				document.getElementById("i3").style.display = "none";
			}else if(s%6==2||s%6==3){
				document.getElementById("i1").style.display = "none";
				document.getElementById("i2").style.display = "block";
				document.getElementById("i3").style.display = "none";
			}else{
				document.getElementById("i1").style.display = "none";
				document.getElementById("i2").style.display = "none";
				document.getElementById("i3").style.display = "block";
			}						
		},1000);  */
	</script>

</html>