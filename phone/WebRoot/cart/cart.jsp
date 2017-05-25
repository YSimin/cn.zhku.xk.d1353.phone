<%@page import="cn.mani123.domain.Product"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

		<link rel="stylesheet" type="text/css"
			href="<%=basePath%>/css/perInfo.css">
		<script src="<%=basePath%>/js/jquery.min.js"></script>
		<script src="<%=basePath%>/js/payfor.js"></script>

		<script type="text/javascript">
		
</script>


		<style type="text/css">
#cart:hover {
	text-decoration: none;
	font-size: 19px;
}
</style>
	</head>
	<%
				List<Product> product = (List<Product>) com.opensymphony.xwork2.ActionContext
						.getContext().getValueStack().findValue("product");
				List<Integer> num= (List<Integer>)com.opensymphony.xwork2.ActionContext.getContext().getValueStack().findValue("num"); 
				double total = 0;
				List<Double> listNum = new ArrayList<Double>();
				for(int i=0;i<product.size();i++){
					double temp = (Double.parseDouble(product.get(i).getPrice().substring(0,product.get(i).getPrice().length()-1)));//去除最后一个字符"元"字
					double littleCount = temp*num.get(i);
					total += littleCount;
					listNum.add(littleCount);
				}								
				int i=0;			
	%>
	<s:hidden name="id" value="#session.id" />

	<body style="background-color: #F0F0F0;">
		<jsp:include page="/perInfo/top/head.jsp"/>
		<div>
			<div style="text-align: center;margin-top:50px;">
				<h1>
					我的购物车
				</h1>
			</div>
			<!-- 头 -->
			<br>
			<br>
			<hr color="#EE7700";>
			<div style="">
				<div style="width: 1200px; background: #fff; margin: 0 auto;">
					<!-- 购物车详情 -->
					<div style="margin-top: 50px;">
						<!-- table商品列表 -->
						<table style="width: 1200px; text-align: center; font-size: 20px;">
							<tr>
								<th style="width: 150px; height: 80px;">
									<input type="checkbox" id="all" class="checkboxOne"
										onclick="check(),count()">
								</th>
								<th style="width: 150px; text-align: left;">
									全选
								</th>
								<th>
								</th>
								<th style="width: 1580px;">
									商品名称
								</th>
								<th style="width: 350px;">
									单价
								</th>
								<th style="width: 580px;">
									数量
								</th>
								<th style="width: 350px;">
									小计
								</th>
								<th style="width: 350px;">
									操作
								</th>
							</tr>
							<s:iterator value="product" var="p">
								<tr>
									<td style="width: 150px; height: 80px;">
										<input type="checkbox" name="phone" class="checkboxOne"
											onclick="check2(),count()"
											value="<s:property value="#p.id"/> ">
									</td>
									<td>
									</td>
									<td style="width: 480px;">
										<a href="#"><img src="<%=basePath%>/images/cart/mix.jpg"
												style="width: 60px; height: 60px;" /> </a>
									</td>
									<td>
										<a href="#" id="cart"> <s:property value="#p.name" /> <s:property
												value="#p.version" /> <s:property value="#p.memory" /> <s:property
												value="#p.color" /> </a>
									</td>
									<td>
										<s:property value="#p.price"></s:property>
									</td>
									<td>
										<%=num.get(i)%>
									</td>
									<td>
										<%=listNum.get(i)%>
									</td>
									<td>
										<s:property value="#id" />
										<a onclick="return deletefirm();"
											href="Cart_delete?id=<s:property value="#session.id"/>&product_id=<s:property value="#p.id"/>">×</a>
									</td>
								</tr>
								<%i++; %>
							</s:iterator>
						</table>
					</div>

					<div
						style="margin-top: 50px; background-color: #fff; font-family: 黑体; width: 1200px; height: 60px;">
						<!-- 结算栏 -->
						<div style="float: left; margin-top: 15px;">
							<!-- 左边 -->
							<div style="float: left;">
								<a href="#">&nbsp;&nbsp;&nbsp;&nbsp;继续购物</a>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 共
								<s:property value="#session.count" />
								件商品，已选择
							</div>
							<div style="float: right;">
								<div style="float: left;">
									<input type="text" id="count" value="0" disabled
										style="background-color: white; text-align: center; width: 20px; border: none; font-family: 黑体; color: #696969;">
								</div>
								<div style="float: right;">
									件
								</div>
							</div>
						</div>
						<div style="float: right; color: #EE7700;">
							<!-- 右边 -->
							<div style="float: left; margin-top: 8px;">
								<div style="float: left; margin-top: 10px;">
									合计（不含运费）：
								</div>
								<div
									style="font-family: 黑体; font-weight: bold; align: center; font-size: 30px; float: right;">
									<%=total%>元
									&nbsp;&nbsp;&nbsp;
								</div>
							</div>
							<a onclick="return clearfirm();"><input type="button" value="去结算"
									name="button" id="button"
									style="color: white; border: none; font-size: 20px; background-color: #EE7700; height: 50px; width: 200px; float: right;">
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>

	</body>
</html>










