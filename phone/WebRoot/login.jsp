<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>

<title>请登录</title>

<style>
body {
	margin: 0px auto;
	position: relative;
	font-family: 微软雅黑;
}

.dl {
	width: 380px;
	height: 250px;
	background-color:white;
	border:1px;
	text-align: center;
	margin: auto;
	margin-top:50px;
	position: center;
}

.btn {
	font-family: 微软雅黑;
	font-size: medium;
	
}
#username {
	max-width: 200px;
	margin: 10px 0px 0px 0px;
	height: 28px;
}

#password {
	max-width: 200px;
	margin: 20px 0px 10px 0px;
	height: 28px;
}
</style>
</head>
<body style="background-image: url(<%=basePath%>/image/login.jpg)">


<h1 style="font-family:微软雅黑;text-align:center;color:white;margin-top:100px">欢迎来到小米商城</h1>
	<form class="dl" method="post">
		<div class="dl">
		<br/>
		
		   <input type="radio" checked="checked" name="identype" value="buyer" /><label>买家</label>&nbsp;&nbsp;
			<input type="radio" name="identype" value="seller" /><label>卖家</label>&nbsp;&nbsp;
			<input type="radio" name="identype" value="admin" /><label>管理员</label> 
			<br/>
			<br/>
			<div class="username">
				账号：<input type="text" id="username" name="username">
				<br/>
				
			</div>
			<div class="password">
				密码：<input type="password" id="password" name="password">
            </div>
			<div class="btn">
				<button type="submit" id="register"
					class="btn">注册</button>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<button type="submit" id="login"
					class="btn" >登录</button>
			</div>
		</div>
		
	</form>
	
	
      
           
	
	<script type="text/javascript">
	    
		var x = document.getElementById("username");
		var y = document.getElementById("password");
		var btnLogin = document.getElementById("login");
		var btnReset = document.getElementById("register");
		var u = document.getElementById("u");
		var p = document.getElementById("p");
		var up = document.getElementById("up");
	   
		//点击登录按钮时判断账号、密码是否为空或错误
	 
		btnLogin.onclick = function(){
			if(x.value==""|| y.value=="")
				{
				    alert("用户名或密码不能为空！");
				}
			
			else{
				
				var radio=document.getElementsByName("identype"); 
				for(i=0; i<radio.length; i++)
					if (radio[i].checked) {  
						
			          var a=radio[i].value;
					}
				 if(a=="buyer")
				{
					
					document.forms[0].action="<%=basePath%>/servlet/LoginCtrl?user=2";
					
					
				}
				else if(a=="seller")
				{
					
					document.forms[0].action="<%=basePath%>/servlet/LoginCtrl?user=3";
				}
				
				else{
				
					document.forms[0].action="<%=basePath%>/servlet/LoginCtrl?user=1";
				}
				
				
			}  
			
			
 
		}
		btnReset.onclick = function() {
			if(x.value==""|| y.value=="")
			{
			    alert("用户名或密码不能为空！");
			} else {
				
				
				var radio=document.getElementsByName("identype"); 
				for(i=0; i<radio.length; i++)
					if (radio[i].checked) {  
						
			          var a=radio[i].value;
					}
				 
				 if(a=="buyer")
				{
					
					 document.forms[0].action="<%=basePath%>/servlet/RegCtrl?user=2";
				}
				else if(a=="seller")
				{
					
					document.forms[0].action="<%=basePath%>/servlet/RegCtrl?user=3";
				}
				
				else{
					
					document.forms[0].action="<%=basePath%>/servlet/RegCtrl?user=1";
				} 
				
				
			} 
				
			}
		
		 
 
	</script>


</body>
</html>