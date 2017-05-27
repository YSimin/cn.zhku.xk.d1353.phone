<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
	<head>
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="this is my page">
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>/css/perInfo.css">
	</head>
	<body style="background: #F0F0F0;">
		<div
			style="margin-left: 40%; margin-top: 5%; width: 90%; height: 100%; background: white;">
				<form action="Account_update.action" method="post">
				<s:hidden name="id" value="%{model.id}"/>
				<s:hidden name="password" value="%{model.password}"/>
				<s:hidden name="order_id" value="%{model.order_id}"/>
				<div style=" margin-left: auto; margin-right: auto;">
							<div
								style="float: right; height: 30px; line-height: 100px; width: 50px;">
								<a href="javascript:history.go(-1)"
									style="font-family: 黑体; font-size: 15px; color: #696969;">返回</a>
							</div>
							<div style="text-align:center;" >
								<img src="<%=basePath%>/images/perInfo/photo.jpg"  style="margin-top:3%;margin-left:5%" />
							</div>
							<div style="text-align:center;">
								<h2
									style="height: 60px; line-height: 100px; font-weight: bold; color: #FF6600;">
									个人信息
								</h2>
							</div>
							<br>
							<div style="text-align:center;">
							<table
								style="margin-top: 10px; margin-left: auto; margin-right: auto; font-size: 20px;">
								<tr>
									<th style="height: 50px;text-align:center;width:60px;">
										姓名
									</th>
									<td>
										<input id="search" type="text" name="username" value="<s:property value="%{model.username}"/>">
									</td>
								</tr>
								<tr>
									<th style="height: 50px;">
										生日
									</th>
									<td>
										<input id="search" type="text" name="birthday" value="<s:date name="model.birthday" format="yyyy-MM-dd"/>">
									</td>
								</tr>
								<tr>
									<th style="height: 50px;">
										性别
									</th>
									<td>
										<input id="search" type="text" name="sex" value="<s:property value="%{model.sex}"/>">
									</td>
								</tr>
								<tr>
									<th style="height: 50px;">
										地址
									</th>
									<td>
										<input id="search" type="text" name="address" value="<s:property value="%{model.address}"/>">
									</td>
								</tr>
								<tr>
									<th style="height: 50px;">
										邮箱
									</th>
									<td>
										<input id="search" type="text" name="email" value="<s:property value="%{model.email}"/>">
									</td>
								</tr>
								<tr>
									<th style="height: 50px;">
										电话
									</th>
									<td>
										<input id="search" type="text" name="telephone" value="<s:property value="%{model.telephone}"/>">
									</td>
								</tr>
							</table>
							</div>
							<br>
							<br>
							<div style="text-align:center;">
							<input type="submit" value="修改"
								style="color: white; border: none; font-size: 20px; background-color: #EE7700; height: 50px; width: 20%;">
							</div>
						</div>
				</form>
		</div>
	</body>
</html>
