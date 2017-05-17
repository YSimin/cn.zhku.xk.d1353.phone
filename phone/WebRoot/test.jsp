<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
     <form action="" method="post">
   	<div style="margin-top:150px;">
   		<div style="margin-top:10%;margin-left:20%;margin-right:20%;background-color:white;height:450px;text-align:center;">
   			<div style="float:right;height:30px;line-height:100px;width:50px;"><a href="javascript:history.go(-1)" style="font-family:黑体;font-size:15px;color: #696969;">返回</a></div>
   			<div style="margin-top:50px;margin-left:3%;">
   				<h2 style="height:60px;line-height:100px;font-weight: bold; color:#FF6600;">个人信息</h2>	
   			</div>
   			<br>
   			<table style="margin-top:10px;margin-left:40%;font-size:20px;">
   			<tr><th style="height:50px;">姓名</th><td><input type="text" name="name" value="玛尼"></td></tr>
   			<tr><th style="height:50px;">生日</th><td><input type="text" name="birthday" value="1996-01-02"></td></tr>
   			<tr><th style="height:50px;">性别</th><td><input type="text" name="sex" value="女"></td></tr>
   			</table>
   			<br><br>
   			<input type="submit" value="修改" style="color: white; border: none; font-size: 20px; background-color: #EE7700; height: 50px; width: 20%;">
   		</div>
   	</div>
   	</form>
  </body>
</html>
