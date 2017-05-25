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
		<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/perInfo.css">
		<style type="text/css">
#cart:hover {
	text-decoration: none;
	font-size: 19px;
}
</style>
	</head>
	<body>
		<div
			style="margin-left: 40%; margin-top: 5%; width: 90%; height: 70%; background: white;">
			<div style="margin-left: 5%; margin-top: 5%; height: 10%;">
				<h2>
					<br>
					商品评价
				</h2>
				<br>
				<a href="Account_waitComment" id="light">待评价商品</a> &nbsp; |&nbsp;
				<a href="Account_commented">已评价商品</a> &nbsp;&nbsp;

				<br>
				<br>
				<br>
				<br>
				<hr width="90%">
				<br>
				<br>
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
									<th style="width: 10%;">
									</th>
									<th style="width: 10%;">
										商品名称
									</th>
									<th style="width: 10%;">
										单价
									</th>
									<th style="width: 10%;">
										数量
									</th>
									<th style="width: 10%;">
										小计
									</th>
									<th style="width: 10%;text-align:left;">
										商品评分
									</th>
								</tr>
								<s:iterator value="product" var="p">
									<tr>
										<td style="width: 10%;">
											<a href="#"><img src="<%=basePath%>/images/cart/mix.jpg"
													style="width: 60px; height: 60px;" /> </a>
										</td>
										<td>
											<a href="#" id="cart"> <s:property value="#p.name" /> <s:property
													value="#p.version" />
												<s:property value="#p.color" /> </a>
										</td>
										<td>
											<s:property value="#p.price" />
										</td>
										<td>
											1
										</td>
										<td>
											<s:property value="#p.price" />
										</td>
										<td>
											<div class="shop-rating">
											<span class="title"></span>
												<ul class="rating-level" id="stars2">
													<li>
														<a class="one-star" href="Cart_comment?id=<s:property value="#session.id"/>&product_id=<s:property value="#p.id"/>&score=1">1</a>
													</li>
													<li>
														<a class="two-stars" href="Cart_comment?id=<s:property value="#session.id"/>&product_id=<s:property value="#p.id"/>&score=2">2</a>
													</li>
													<li>
														<a class="three-stars" href="Cart_comment?id=<s:property value="#session.id"/>&product_id=<s:property value="#p.id"/>&score=3">3</a>
													</li>
													<li>
														<a class="four-stars" href="Cart_comment?id=<s:property value="#session.id"/>&product_id=<s:property value="#p.id"/>&score=4">4</a>
													</li>
													<li>
														<a class="five-stars" href="Cart_comment?id=<s:property value="#session.id"/>&product_id=<s:property value="#p.id"/>&score=5">5</a>
													</li>
												</ul>
												
											</div>
										<!-- 	<a onclick="return deletefirm();" id="cart"
												href="Account_comment?id=<s:property value="#session.id"/>&product_id=<s:property value="#p.id"/>">评分</a>
										 -->
										</td>
									</tr>
								</s:iterator>
							</table>
						</div>
					</div>
				</div>
				<%} %>
			</div>
		</div>
	</body>
</html>
