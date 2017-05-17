<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
	<head>
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="this is my page">
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/perInfo.css">
	</head>

	<body>
		<div style="margin-left:200px; width: 250px; height: 690px; float: left; background:white;">
				<div style="margin-left:50px;">
				<h4>
					订单中心
				</h4>
				<br>
				<a href="Account_myOrder.action?id=1">我的订单</a>
				<br>
				<br>
				<a href="Account_comment.action?id=1">评价晒单</a>
				<br>
				<br>
				<h4>
					个人中心
				</h4>
				<br>
				<a href="Account_perCenter.action?id=1">我的个人中心</a>
				<br>
				<br>
				<a href="Account_discount.action?id=1">优惠券</a>
				<br>
				<br>
				<h4>
					账户管理
				</h4>
				<br>
				<a href="Account_getUserInfo.action?id=1"> 个人信息</a>
				<br>
				<br>
				<a href="Account_password.action?id=1">修改密码</a>
				<br>
				<br>
				</div>
			</div>
	</body>
</html>
