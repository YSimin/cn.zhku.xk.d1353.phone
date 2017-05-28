<%@ page language="java" import="java.util.*,cn.mani123.domain.Product" 
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>搜索列表</title>
		<style type="text/css">
</style>
		<base href="<%=basePath%>">

		<title>My JSP 'MyJsp.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="Content-Type" content="img/*; charset=UTF-8">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" type="text/css" href="css/shop.css">
	</head>

	<body>
		<jsp:include page="../home/head.jsp"/>
		<div style="margin-left:22%;">
		<a href="<%=basePath%>/home/together.jsp">首页</a>&nbsp;&nbsp;&nbsp;<a href="Cart_search.action">推荐</a>&nbsp;&nbsp;&nbsp;<a href="#" style="color: #FF6600">按价格排序</a>
		</div>
		<br><br>
		<div class="shop" align="center">
			<div class="top-center" align="center">
				<ul class="box">
				 	<s:iterator value="product" var="p">
						<li>
							<a href="#">
								<table class="cforeach" style="width:250px;text-align:center;"
									onmouseover="this.style.borderColor='#FF4500'"
									onmouseout="this.style.borderColor='#e0e0e0'">
									<tr>
										<th height="400">
											<img src="<%=basePath%>/photo/<s:property value="#p.img"/>" style="width: 200">
										</th>
									</tr>
									<tr>
										<td height="30">
											<s:property value="#p.price" />
										</td>
									</tr>
									<tr>
										<td height="30">
											<s:property value="#p.name" />
										</td>
									</tr>
								</table>
							</a>
						</li>
					</s:iterator>					
				</ul>
			</div>
		</div>
	</body>
</html>
