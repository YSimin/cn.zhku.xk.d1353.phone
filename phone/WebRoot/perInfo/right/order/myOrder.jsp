<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
			<style type="text/css">
#cart:hover {
	text-decoration: none;
	font-size: 19px;
}
</style>
	</head>
	<body>
		<div style="margin-left: 40%; margin-top: 5%; width: 90%; height: 70%; background: white;">
			<div style="margin-left: 5%; margin-top: 5%; height: 10%;">
				<h2>
					<br>
					我的订单
				</h2>
				<br>
				<div style="">
					<a href="Account_myOrder?id=1" id="light">全部有效订单</a> &nbsp; |&nbsp;
					<a href="Account_waitPay?id=1">待发货</a> &nbsp;|&nbsp;
					<a href="Account_waitConfirm?id=1">待收货</a>&nbsp;&nbsp;
					<a href="Account_closed?id=1">已成交</a>&nbsp;&nbsp;
				</div>
				<br>
				<br>
				<br>
			</div>
			<br>
				<br>
				<br><br>
				<br>

			<%
				List product = (List) com.opensymphony.xwork2.ActionContext
						.getContext().getValueStack().findValue("product");
				if (product.size()==0) {
			%>
			<br>
			<div style="text-align: center; font-size: 25px;">
				当前没有交易订单。
			</div>
			<%
				} else {
			%>
	
			<div style="width: 100%;">
				
				<div style="background: #fff; margin: 0 auto;">
					<!-- 购物车详情 -->
					<div style="">				
						<!-- table商品列表 -->
						<table style="text-align: center; font-size: 20px;">
							<tr>
								<th style="width:10%;">
								</th>
								<th style="width:10%;">
									商品名称
								</th>
								<th style="width:10%;">
									单价
								</th>
								<th style="width:10%;">
									数量
								</th>
								<th style="width:10%;">
									小计
								</th>
							</tr>
							<s:iterator value="product" var="p">
							<tr>
								<td style="width:10%;">
									<a href="#"><img src="<%=basePath%>/images/cart/mix.jpg"
										style="width: 60px; height: 60px;" /> </a>
								</td>
								<td>
									<a href="#" id="cart"> <s:property value="#p.name" /> <s:property
										value="#p.version" /><s:property
										value="#p.color" /> </a>
								</td>
								<td>
									<s:property value="#p.price"/>
								</td>
								<td>
									1
								</td>
								<td>
									<s:property value="#p.price"/>
								</td>
							</tr>
							</s:iterator>
						</table>
					</div>
				</div>
			</div>
			<%} %>
		</div>
	</body>
</html>
