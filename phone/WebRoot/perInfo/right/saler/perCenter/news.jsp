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
			消息通知
		</h2>
		<br>
		<a href="javascript:void(0)" id="light">全部消息</a> &nbsp; |&nbsp;
		<a href="javascript:void(0)">物流动态</a> &nbsp;|&nbsp;
		<a href="javascript:void(0)">特惠活动</a>&nbsp;
		<br>
		<br>
		<hr>
		<br>
			<div style="text-align:center;font-size: 25px;">暂无数据。</div>
		</div>
	</div>
  </body>
</html>
