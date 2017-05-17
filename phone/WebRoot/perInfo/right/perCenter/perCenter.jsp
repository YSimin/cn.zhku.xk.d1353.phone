<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
		<div style="margin-left: 500px; margin-top:20px; width: 1000px; background: white;">
			<div
				style="margin-top: 60px; margin-left: 60px; margin-bottom: 30px; width: 800px; height: 200px;">
				<div
					style="margin-top: 50px; height: 180px; width: 300px; float: left;">
					<div style="border-radius: 50%; overflow: hidden; float: left;">
						<img src="<%=basePath%>/images/perInfo/photo.jpg" />
					</div>
					<div style="width: 120px; float: right;">
						<br>
						<s:property value="%{model.username}"/>
						<br>
						<br>
						晚上好
						<br>
						<br>
						<a href="Account_getUserInfo?id=1">修改个人信息</a>
						<br>
						<br>
					</div>
				</div>
				<div
					style="margin-top: 50px; width: 200px; height: 180px; float: right;">
					<br>
					账户安全:较高
					<br>
					<br>
					绑定手机:<s:property value="%{model.telephone}"/>
					<br>
					<br>
					绑定邮箱:<s:property value="%{model.email}"/>
					<br>
					<br>
				</div>
			</div>
			<hr>
			<div
				style="margin-top: 60px; margin-left: 60px; width: 800px; height: 400px;">
				<div style="width: 400px; height: 200px; float: left;">
					<div style="width: 100px; height: 200px; float: left;">
						<img src="<%=basePath%>/images/perInfo/portal-icon-1.png" / width="150px"
							height="150px">
					</div>
					<div style="width: 200px; height: 200px; float: right;">
						<br>
						<br>
						<br>
						待支付的订单：0
						<br>
						<br>
						<a href="Account_waitPay">查看待支付订单 ></a>
						<br>
					</div>
				</div>

				<div style="width: 400px; height: 200px; float: right;">
					<div style="width: 100px; height: 200px; float: left;">
						<img src="<%=basePath%>/images/perInfo/portal-icon-2.png" / width="150px"
							height="150px">
					</div>
					<div style="width: 200px; height: 200px; float: right;">
						<br>
						<br>
						<br>
						待收货的订单：0
						<br>
						<br>
						<a href="Account_waitConfirm">查看待收货订单 ></a>
						<br>
					</div>
				</div>

				<div style="width: 400px; height: 200px; float: left;">
					<div style="width: 100px; height: 200px; float: left;">
						<img src="<%=basePath%>/images/perInfo/portal-icon-3.png" / width="150px"
							height="150px">
					</div>
					<div style="width: 200px; height: 200px; float: right;">
						<br>
						<br>
						<br>
						待评价的商品数：0
						<br>
						<br>
						<a href="Account_waitComment">查看待评价商品 ></a>
						<br>
					</div>
				</div>

				<div style="width: 400px; height: 200px; float: right;">
					<div style="width: 100px; height: 200px; float: left;">
						<img src="<%=basePath%>/images/perInfo/portal-icon-4.png" / width="150px"
							height="150px">
					</div>
					<div style="width: 200px; height: 200px; float: right;">
						<br>
						<br>
						<br>
						喜欢的商品：0
						<br>
						<br>
						<a href="#">查看喜欢的商品 ></a>
						<br>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>

