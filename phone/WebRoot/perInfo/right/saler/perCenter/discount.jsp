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
			优惠券
		</h2>
		<br>
		<a href="javascript:void(0)" id="light">未使用</a> &nbsp; |&nbsp;
		<a href="javascript:void(0)">已使用</a> &nbsp;|&nbsp;
		<a href="javascript:void(0)">已失效</a>&nbsp;
		<br>
		<br>
		<hr width="99%">
		<br>
			<div style="text-align:center;font-size: 22px;">未找到相应优惠券。<br>
					参加小米社区活动，微博、微信活动即有机会赢优惠券哦~</div>
		</div>
	</div>
  </body>
</html>
