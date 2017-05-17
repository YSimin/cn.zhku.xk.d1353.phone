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
   	<div style="margin-left: 500px;margin-top:60px; width: 1000px; height:220px; background: white;">
   		<div style="margin-left: 20px; margin-top: 20px;height:160px;">
		<h2>
		<br>
			商品评价
		</h2>
		<br>
		<a href="Account_waitComment">待评价商品</a> &nbsp; |&nbsp;
		<a href="Account_commented">已评价商品</a> &nbsp;|&nbsp;
		<a href="Account_commentClose" id="light">评价失效商品</a>&nbsp;
		<hr>
		<br><br>
			<div style="text-align:center;">暂时没有符合条件的商品。</div>
		</div>
	</div>
  </body>
</html>
