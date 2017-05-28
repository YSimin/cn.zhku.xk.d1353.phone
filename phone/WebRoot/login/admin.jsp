<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" import="java.sql.Connection"
	import="java.sql.PreparedStatement" import="java.sql.ResultSet"
	import="cn.edu.zhku.jsj.user.model.Shop"
	import="cn.edu.zhku.jsj.Util.ConnectionManager"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员页面</title>

<style type="text/css">
table {
	border: solid 5px;
	border-color: white;
	width: 700px;
}

body {
	font-family: 微软雅黑;
	text-align: center;
}

td {
	height: 150px;
}

img {
	width: 100px;
	height: 80px;
}

.li {
	height: 35px;
	list-style: none;
	text-align: left;
}

.together {
	width: 700px;
	left: 50%;
	margin-left: -350px;
	position: absolute;
	z-index: 0px;
	background-color: #ffffdf;
	margin-top: 100px;
}

a {
	text-decoration: none;
	color: #ff5809;
}

.first {
	width: 698px;
	height: 100px;
	text-align: center;
	background-color: #ffffdf;
	color: #ff5809;
	left: 50%;
	margin-left: -350px;
	position: absolute;
}
</style>
</head>
<body>

	<jsp:include page="/home/head.jsp" flush='true' />

	<div class="first">
		<h1>小米商城店铺一览表</h1>
	</div>

	<%
		Shop shop = new Shop();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		// 连接数据库
		conn = ConnectionManager.getConnection();

		if (conn == null) {
			throw new Exception("数据库连接不成功！");
		}

		String sqlQuery = "Select * from shop";

		ps = conn.prepareStatement(sqlQuery);

		rs = ps.executeQuery();
		
	%>

	<div class="together">
		<table>
			<%while (rs.next()) { %>
			<tr>

				<td><a href=""><img src="<%=basePath%>/image/touxiang.jpg"></a></td>
				<td>
					<ul>
						<li style="color: #ff5809" class="li"><a href="">店铺名：<%=rs.getString(2)%></a></li>
						<li class="li">店铺地址：<%=rs.getString(4)%></li>
						<li class="li">店铺评分：<%=rs.getString(3)%></li>
					</ul>
				<td style="width: 120px;">
				<a href="<%=basePath%>/servlet/AdminCtrl?id=<%=rs.getInt(1)%>"
					onclick="return confirm('确定要删除这家店铺信息吗？')">删除</a></td>
			</tr>
			<%
				}
			%>
		</table>
	</div>

</body>
</html>