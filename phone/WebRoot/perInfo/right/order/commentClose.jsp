<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>/css/perInfo.css">
  </head>
  <body>
   	<div
			style="margin-left: 40%; margin-top: 5%; width: 90%; height: 70%; background: white;">
			<div style="margin-left: 5%; margin-top: 5%; height: 10%;">
		<h2>
		<br>
			商品评价
		</h2>
		<br>
		<a href="Account_waitComment.action">待评价商品</a> &nbsp; |&nbsp;
		<a href="Account_commented.action">已评价商品</a> &nbsp;|&nbsp;
		<hr>
		<br><br>
			<div style="text-align:center;">暂时没有符合条件的商品。</div>
		</div>
	</div>
  </body>
</html>
