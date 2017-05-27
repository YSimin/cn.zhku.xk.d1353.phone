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
		<script src="<%=basePath%>/js/account.js"></script>
		
	</head>
<s:hidden name="id" value="#sesson.id"/>
	<body style="background: #F0F0F0;">
		<div
			style="margin-left: 40%; margin-top: 5%; width: 90%; height: 90%; background: white;">
				<form action="Account_passwordUpdate.action" method="post">
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
									修改密码
								</h2>
							</div>
							<br>
							<div style="text-align:center;">
							<table
								style="margin-top: 10%; margin-left: auto; margin-right: auto; font-size: 20px;">
								<tr>
									<th style="height: 50px;text-align:left;">
										请输入原密码
									</th>
									<td>
										<input type="password" id="search" name="password"/>
									</td>
								</tr>
							</table>
							</div>
							<br>
							<br>
							<div style="text-align:center;margin-top:5%;">
							<input type="submit" value="确定" onclick="return checkpassword();"
								style="color: white; border: none; font-size: 20px; background-color: #EE7700; height: 50px; width: 20%;">
							</div>
						</div>
				</form>
		</div>
	</body>
</html>
