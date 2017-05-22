<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="this is my page">
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>/css/perInfo.css">
	</head>
	<body>
		<div style="margin-left: 40%; margin-top: 5%; width: 90%; height: 70%; background: white;">
			<div style="margin-left: 5%; margin-top: 5%; height: 10%;">
				<h2>
					<br>
					我的订单
				</h2>
				<br>
				<div style="margin-top: 8px;float:left;">
					<a href="Account_myOrder?id=1">全部有效订单</a> &nbsp; |&nbsp;
					<a href="Account_waitPay?id=1">待发货</a> &nbsp;|&nbsp;
					<a href="Account_waitConfirm?id=1">待收货</a>&nbsp;&nbsp;
					<a href="Account_closed?id=1" id="light">已关闭</a>&nbsp;&nbsp;
				</div>
				<div style="float:right;">
					<div style="float:left;">
					<input type="text" name="input" id="search" value="输入商品名称、商品编号、订单号"
						onfocus="this.value=''" onblur="this.value='输入商品名称、商品编号、订单号'"></input>
					</div>
					<div style="float:right;margin-right:10px;">
					<a href="#" id="glass"></a>
					</div>
				</div>	
			</div>
			<br><br><br><br><br><br>
			<br>
			<br>
			<div style="text-align: center; font-size: 25px;">
				
				当前没有交易订单。
			</div>
		</div>
	</body>
</html>
