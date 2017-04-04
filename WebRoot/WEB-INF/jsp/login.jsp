<%@page import="org.springframework.web.context.request.RequestScope"%>
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
<link rel="stylesheet" href="static/main/css/sweetalert.css">
<link rel="stylesheet" href="static/main/css/login.css">
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
	<div class="login" id="login">
	<!-- <a href="javascript:openLogin();">登录/注册</a> -->
	<a href="javascript:changehao();">登录/注册</a>
	</div>
	<div class="logined" id="logined">
	<!-- <img id="head1" class="head1" alt="图像" src="static/main/imgs/pay/head.png"> -->
	<span id="nickname1" style="margin-left: 55%;">${pd.NICKNAME }<img class="xia" alt="xia" src="static/main/imgs/pay/bottom.png"></span>	
	<div  id="loginout" >
	<a href="<%=basePath %>logout.do"><button >退出登录</button></a>
	</div>
	</div>
	
</div>

<div class="content">

<div class="span">
<button id="button_zuan">钻石充值</button><button id="button_gold">金币充值</button>
</div>
<div class="uninformation" id="before">
	<div class="uninfor1"><img src="static/main/imgs/pay/unhead.png"/></div>
	<div class="uninfor2">你还没登陆<br>登录后可以充值<a href="javascript:changehao();">登录</a></div>
	<div class="uninfor3"><a href="javascript:changehao();">友播号充值</a></div>
</div>

<div class="uninformation" id="after">
	<div class="uninfor1"><img id="head" src="${pd.HEAD }"/></div>
	<div class="uninfor2">
	<span>昵称:</span><span id="nickname">${pd.NICKNAME }</span><span id="sex">${pd.SEX }</span>
	<span class="level">${pd.LEVEL_VALUE}</span><br>
	<span>友播号</span><span id="yoyoid">${pd.YOYO_ID }</span>
	</div>
	<div class="uninfor3"><a href="javascript:changehao();">切换账号</a></div>
</div>

<div id="zuan" class="zuan" >
<hr/>
<span>选择金额</span>
	<table>
		<tr>
			<td><a id="zuan60"   onclick="change('60','1')"><img  src="static/main/imgs/pay/unzuan60.png"></img></a></td>
			<td><a id="zuan300"  onclick="change('300','1')"><img  src="static/main/imgs/pay/unzuan300.png"></a></td>
			<td><a id="zuan980"  onclick="change('980','1')"><img  src="static/main/imgs/pay/unzuan980.png"></a></td>
		</tr>
		<tr>
			<td><a id="zuan2980"  onclick="change('2980',1)"><img id="2980" src="static/main/imgs/pay/unzuan2980.png"></a></td>
			<td><a id="zuan5880"  onclick="change('5880','1')"><img id="5880" src="static/main/imgs/pay/unzuan5880.png"></a></td>
			<td><a id="zuan29990" onclick="change('29990','1')"><img id="29990" src="static/main/imgs/pay/unzuan29990.png"></a></td>
		</tr>	
	</table>
</div>

<div id="gold" class="gold" >
<hr/>
<span>选择金额</span>
	<table>
		<tr>
			<td><a id="gold6" onclick="change('6','2')"><img   src="static/main/imgs/pay/unpay6.png"></a></td>
			<td><a id="gold30" onclick="change('30','2')"><img  src="static/main/imgs/pay/unpay30.png"></a></td>
			<td><a id="gold98" onclick="change('98',2)"><img  src="static/main/imgs/pay/unpay98.png"></a></td>
		</tr>
		<tr>
			<td><a id="gold298" onclick="change('298',2)"><img src="static/main/imgs/pay/unpay298.png"></a></td>
			<td><a id="gold588" onclick="change('588',2)"><img src="static/main/imgs/pay/unpay588.png"></a></td>
			<td><a id="gold2999" onclick="change('2999','2')"><img src="static/main/imgs/pay/unpay2999.png"></a></td>
		</tr>	
	</table>
</div>

<div class="pay">
	<span>选择支付方式</span>
	<div>
		<button class="weipay" id="weipay"></button>
		<button class="zhipay" id="zhipay"></button>
	</div>
	
</div>

<div class="last">
	<hr/>
	<div class="last_left">支付金额：<span id="amount"></span>元</div>
	<div class="last_right"><span id="commit1" >确认支付</span><span id="commit2" style="display: none;">确认支付</span>
	</div>
</div>

<!-- <div class="weimg">  
    <img src="../common/img/wei_06.png">  
<img id="id_wxtwoCode"src=""/>  
<p>打开手机端微信<br>扫一扫继续支付</p>  
</div>  --> 

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
	

<!-- <div id="back" style="display:none; position:fixed; _position:absolute; left:0; top:0; width:100%; height:100%;; background-color:		
#F2F2F2;opacity: 0.7 ; filter: alpha(opacity=99);"></div>
<div id="win" style="display:none; POSITION:absolute; left:50%; top:50%; width:600px; height:400px; margin-left:-300px; margin-top:-200px; border:1px solid #888; background-color:#edf; text-align:center">
这是DIV登录框示例<br><a href="javascript:closeLogin();">关闭登录框</a>
</div> -->

<div id="back" style="display:none; position:fixed; _position:absolute; left:0; top:0; width:100%; height:100%;; background-color:		
#F2F2F2;opacity: 0.8 ; filter: alpha(opacity=99);"></div>
<div id="win" style="display:none; POSITION:absolute; left:50%; top:50%; width:500px; height:300px; margin-left:-250px; margin-top:-150px; border:1px solid #888;background-color:white; text-align:center">

<div class="min_left" style="width: 68%;height:100%; float: left;margin: 4% 1%;">
<span style="color: #333333;font-size: 16px;">登录友播</span>
<form action="" id="form">
	<table style="margin: 8%;">
		<tr >
		<td colspan="2" align="left" style="padding-bottom: 10px;">
		<input id="phone" onblur="test1()" style="margin-left: 1px;border: 0px;border-bottom: 1px solid #E6E6E6;line-height: 30px;font-size: 14px;width: 180px;"  placeholder="请输入手机号:" />
		</td>		
		</tr>
		<tr >
		<td style="padding-bottom: 20px;"><input id="inputCode" onblur="test2()" style="border: 0px;border-bottom: 1px solid #E6E6E6;line-height: 30px;font-size: 14px;width: 180px" placeholder="请输入验证码:" /></td>
		<td style="padding-bottom: 20px;"><div id="checkCode" onclick="createCode()" style="height: 30px;width: 100%;background-color: #f2f222;line-height: 30px;font-style: "></div></td>
		</tr>
		<tr >
		<td style="padding-bottom: 20px;"><input id="phcode" style="border: 0px;border-bottom: 1px solid #E6E6E6;line-height: 30px;font-size: 14px;width: 180px" placeholder="请输入手机验证码:"></td>
		<td style="padding-bottom: 20px;"><button style="background-color: #DDDFE0;border-radius:10px;height: 25px;line-height: 25px;font-size: 10px;color: #FFFFFF;">获取手机验证码</button></td>
		</tr>
		<tr>
		<td><a style="border: 1px solid #00DAFF;background-color: #00DAFF;" onclick="save()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;登录&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
		<td><a style="border: 1px solid #00DAFF;background-color: #00DAFF;" href="javascript:closeLogin();">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;关闭&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></td>
		</tr>	
	</table>
</form>
</div>
<div class="min_right" style="width: 30%;height:100%; background-color: #adfe12;float: right;">
<div style="margin-top: 80px;">
<img src="static/main/imgs/first/code.png" style="width: 100px; height: 100px;"/>
<p>扫码下载app<br>更多精彩呈现</p>
</div>
</div>

</div>

<div id="hao" style="display:none; POSITION:absolute; left:50%; top:50%; width:300px; height:200px; margin-left:-150px; margin-top:-100px; border:1px solid #888;background-color:white; text-align:center">
<div style="margin: 8%;">
<img id="quxiao" style="float:right;margin-top: -15px;margin-right: -15px;" src="static/main/imgs/pay/quxiao.png">
<form action="" id="yoboform">
<table style="margin: 8%;">
<span>登录友播</span>
<tr>
<td style="padding-bottom : 30px;"><input id="yobohao" style="border: 0px;border-bottom: 1px solid #E6E6E6;line-height: 30px;font-size: 14px;width: 200px;" type="text" placeholder="这里输入友播号"/></td>
</tr>
<tr >
<td><button id="yobocommit" style="line-height: 30px;font-size: 14px;margin: 0 25px;">确定</button>
</td>
</tr>
</table>
</form>
</div>
</div>
</body>
<script src="static/main/js/jquery-1.9.1.min.js"></script>
<script src="static/main/js/jquery.min.js"></script>
<script src="static/main/js/sweetalert.min.js"></script>
<script src="static/main/js/jquery.tips.js"></script> 
<script src="static/main/js/jweixin-1.0.0.js"></script> 
 
<script type="text/javascript">
	$(document).ready(function(){ 
		$("#button_zuan").css({"background-color":""});
		$("#button_gold").css({"background-color":"#f0f5f5"});
		  document.getElementById("commit1").style.display="block";
		  document.getElementById("commit2").style.display="none";
		var flag=$("#yoyoid").html();
		if(flag==null||flag==''){
			document.getElementById("before").style.display="block";
			document.getElementById("after").style.display="none";
			document.getElementById("login").style.display="block";
			document.getElementById("logined").style.display="none";
		}else{
			document.getElementById("before").style.display="none";
			document.getElementById("after").style.display="block";
			document.getElementById("logined").style.display="block";
			document.getElementById("login").style.display="none";
		}		
	});
	
	//单击昵称，或三角号显示退出登录按钮
	$("#nickname1").click(function(){		
		$("#loginout").css('display','block');
		 setTimeout(function(){$("#loginout").hide();},3000);//2秒后执行该方法
	});
	
	
	

	$("#button_zuan").click(function(){
		$("#button_zuan").css({"background-color":""});
		$("#button_gold").css({"background-color":"#f0f5f5"});
		document.getElementById("zuan").style.display="block";
		document.getElementById("gold").style.display="none";
		document.getElementById("weipay").setAttribute("style","background:url('static/main/imgs/pay/unweipay.png')");
		document.getElementById("zhipay").setAttribute("style","background:url('static/main/imgs/pay/unzhipay.png')");
		
		$(".last_right").css("background-color","#c0c0c0");
		document.getElementById("commit1").style.display="block";
		document.getElementById("commit2").style.display="none";
		
		for(var i=0;i<6;i++){
			var flag
			var strs=new Array();
			//通过获取图片其实名字不同，看是否被选中
			strs=$("#zuan img").eq(i).attr("src").split("/");//.substring(17,19)			
			flag=strs[strs.length-1];
			flag=flag.substring(0,2);
			if(flag=="un"){
				$("#amount").html('');
			}else if(flag=="zu"){
				var num=$("#zuan a").eq(i).attr("id").substring(4);
				$("#amount").html(num/10);
				return;
			}
		}
	});
	
	
	
	$("#button_gold").click(function(){
		$("#button_zuan").css({"background-color":"#f0f5f5"});
		$("#button_gold").css({"background-color":""});
		document.getElementById("zuan").style.display="none";
		document.getElementById("gold").style.display="block";
		document.getElementById("weipay").setAttribute("style","background:url('static/main/imgs/pay/unweipay.png')");
		document.getElementById("zhipay").setAttribute("style","background:url('static/main/imgs/pay/unzhipay.png')");
		
		$(".last_right").css("background-color","#c0c0c0");
		document.getElementById("commit1").style.display="block";
		document.getElementById("commit2").style.display="none";
		for(var i=0;i<6;i++){
			var flag
			var strs=new Array();
			//通过获取图片其实名字不同，看是否被选中
			strs=$("#gold img").eq(i).attr("src").split("/");//.substring(17,19)			
			flag=strs[strs.length-1];
			flag=flag.substring(0,2);
			if(flag=="un"){
				$("#amount").html('');
			}else if(flag=="pa"){
				var num=$("#zuan a").eq(i).attr("id").substring(4);
				$("#amount").html(num);
				return;
			}
		}
		
	});

//对金额和钻的改变	
function change(msg,num){
	onchange(msg,num);
}	
function onchange(msg,num){
	var arr1 = new Array(60,300,980,2980,5880,29990);
	var arr2 = new Array(6,30,98,298,588,2999);
		if(num==1){
			for(var i=0;i<arr1.length;i++){
				if(arr1[i]==msg){
					$("#zuan"+msg).children("img").attr("src","static/main/imgs/pay/zuan"+arr1[i]+".png");
					$("#amount").html(msg/10);
				}else{
					$("#zuan"+arr1[i]).children("img").attr("src","static/main/imgs/pay/unzuan"+arr1[i]+".png");			
				}
			}
		}else if(num==2){
			for(var i=0;i<arr2.length;i++){
				if(arr2[i]==msg){
					$("#gold"+msg).children("img").attr("src","static/main/imgs/pay/pay"+arr2[i]+".png");
					$("#amount").html(msg);
				}else{
					$("#gold"+arr2[i]).children("img").attr("src","static/main/imgs/pay/unpay"+arr2[i]+".png");			
				}
			}
		}
}



$("#weipay").click(function(){
	var amount=$("#amount").html();
	if(amount!=0&&amount!=null){
		document.getElementById("weipay").setAttribute("style","background:url('static/main/imgs/pay/weipay.png')");
		document.getElementById("zhipay").setAttribute("style","background:url('static/main/imgs/pay/unzhipay.png')");
		  $(".last_right").css("background-color","#00DAFF");
		  document.getElementById("commit1").style.display="none";
		  document.getElementById("commit2").style.display="block";
	}else{		
			swal("", "请先选择你要充值的金额!!！", "");

	}
});
$("#zhipay").click(function(){
	var amount=$("#amount").html();
	if(amount!=0&&amount!=null){
	document.getElementById("weipay").setAttribute("style","background:url('static/main/imgs/pay/unweipay.png')");
	document.getElementById("zhipay").setAttribute("style","background:url('static/main/imgs/pay/zhipay.png')");
	$(".last_right").css("background-color","#00DAFF");
	  document.getElementById("commit1").style.display="none";
	  document.getElementById("commit2").style.display="block";
	}else{		
	swal("", "请选择你要充值的金额!!", "");
	}
});


/*$("#commit").click(function(){
	    var yoyoId = document.getElementById("userid").value;
	     $.ajax({
	      url:"./youbo_curl/login_c.php",
	      type:"post",
	      data:{'yoyoId':yoyoId},         
	      success:function(data){
	         console.log(data);
	         if(data==""){	
	          alert("服务器报错啦!请稍后重试!");
	          return;
	         }
	         var json =JSON.parse(data);
	         console.log(json);
	             if(json.code!="0"){
	                  alert(json.message);
	                  return;
	                }else{
	                  document.getElementById("nick_id").value = json.nickname;
	                  document.getElementById("head_id").value = json.head;
	                  document.getElementById("zt_id").value = json.zuanAmount;
	                  document.getElementById("bt_id").value = json.yobiAmount;
	                  
	                  var n = json.nickname;
	                  var h = json.head;
	                  var zu = json.zuanAmount;
	                  var bm = json.yobiAmount;
	                  window.location.href = "./login.php?nick_name="+n+"&nick_head="+h+"&z_amount="+zu+"&b_amount="+bm;
	                }
	         
	         },
	        error:function(){
	         alert('error');
	        	}
	     
	    });
	}
}); */

//取消账号弹出框
function changehao(){
	document.getElementById("back").style.display="";
	document.getElementById("hao").style.display="";
}
//切换友播账号，调取数据库比较是否匹配，匹配成功，则切换完成，返回支付选择页面，并获取该用户的nickname，level，sex,yoyoid
$("#yobocommit").click(
	function(){
		var yobohao = $("#yobohao").val();
		var yoid=/^\d{6}$/;
		if(!yoid.test(yobohao)){
			$("#yobohao").tips({
				side:3,
	            msg:'请输入正确的友播号!',
	            bg:'#AE81FF',
	            time:2
	        });
			 $("#inputCode").focus();
				return false;
		}
		$.ajax({			
			type: "POST",
			url: '<%=basePath%>goFind.do?tm='+new Date().getTime(),
			async:false,
	    	data: {YOYO_ID:yobohao},
			dataType:'json',
			//beforeSend: validateData,
			cache: false,
			success: function(data){
 		         if(data==""){	
		        	 $("#yobohao").tips({
 							side:3,
				            msg:'你输入的友播号不存在!',
 				            bg:'#AE81FF',
 				            time:2
 				        });
 		          return;
 		         }
				var n=data.YOYO_ID;
 		        document.getElementById("back").style.display="none";
             	document.getElementById("hao").style.display="none";
 		        document.getElementById('nickname').value= data.NICKNAME;	        
 		       window.location.href = "<%=basePath %>answer.do?YOYO_ID="+n;
		     }
		   
		    });	
	return false;
});


//取消，退出弹出框
$("#quxiao").click(function(){
	document.getElementById("back").style.display="none";
	document.getElementById("hao").style.display="none";

})


//登录时弹出框
function openLogin(){
	   document.getElementById("win").style.display="";
	   document.getElementById("back").style.display="";
	   createCode();
	}
	function closeLogin(){
	   document.getElementById("win").style.display="none";
	   document.getElementById("back").style.display="none";
	}



function test1(){
	var mobilephone = $("#phone").val();
    var patrnPhone  = /^(13[0-9]|14[0-9]|15[0-9]|17[0-9]|18[0-9])\d{8}$/;
    if (!patrnPhone.test(mobilephone)) {
    	$("#phone").tips({
			side:1,
            msg:'请输入正确的手机号!',
            bg:'#AE81FF',
            time:0.8
        });
		//$("#phone").focus();
		return false;
	};		
}

function test2(){
	/* var inputCode=document.getElementById("inputCode").value;
	 if(inputCode.length <= 0) 
	 {
		 $("#inputCode").tips({
				side:3,
	            msg:'请输入验证码!',
	            bg:'#AE81FF',
	            time:2
	        });
		 $("#inputCode").focus();
			return false;
	 }
	 else if(inputCode.toUpperCase() != code.toUpperCase()) 
	 {
		 $("#inputCode").tips({
				side:3,
	            msg:'请输入正确的验证码!',
	            bg:'#AE81FF',
	            time:2
	        });
	   createCode();
	   $("#inputCode").focus();
		return false;
	 } */
	
} 

function save(btn) {
	var wait = 60; 	   
    /* btn.removeAttribute("disabled");
    if (wait == 60) {
        $.post("./mobile_validate_code", { "mobile": mobilephone },
            function(data){
        }, "json");
    }

    if (wait == 0) {
      btn.removeAttribute("disabled");
      btn.value = "免费获取验证码";
      wait = 60;
    } else {
      btn.setAttribute("disabled", true);
      btn.value = wait + "秒后重新获取验证码";
      wait--;
      setTimeout(function () {
          time(btn);
      },
      1000)
    } */
}

//创建二维码
var code;
function createCode() 
{
 code = "";
 var codeLength = 6; //验证码的长度
 var checkCode = document.getElementById("checkCode");
 var codeChars = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 
      'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',
      'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'); //所有候选组成验证码的字符，当然也可以用中文的
 for(var i = 0; i < codeLength; i++) 
 {
  var charNum = Math.floor(Math.random() * 52);
  code += codeChars[charNum];
 }
 if(checkCode) 
 {
  checkCode.className = "code";
  checkCode.innerHTML = code;
 }
}
 
 $("#commit2").click(function(){
	 var base='<%=basePath %>';
	 var orderId=2107011912345;
	$.get(base+"wxpay/WxPayUnifiedorder.do?out_trade_no="+orderId,function(data){
			var json=JSON.parse(data)		 			 
		    var codeUrl = json.codeUrl; 
		    alert(codeUrl);
		    if(codeUrl!=null && codeUrl!=""){ 	
		   // $("#id_wxtwoCode").attr('src',base+"wxpay/qr_codeImg?code_url="+codeUrl); 
		   /*  $("#id_wxtwoCode").attr('src',base+"wxpay/qr_codeImg?code_url="+codeUrl);*/
		    	window.location.href = "<%=basePath %>wxpay/qr_codeImg.do?code_url="+codeUrl; 
		    	
		  /*  $.post(base+"wxpay/qr_codeImg.do?",{code_url:codeUrl},function(data){
		    	//alert(data+"11111111111");
		    	$("#id_wxtwoCode").attr('src',data);
			  
		    }); */
		    } 
		});
		
	
 });
</script>

</html>