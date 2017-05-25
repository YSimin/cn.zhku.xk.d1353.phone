<%@ page language="java" import="java.util.*,cn.mani123.domain.Product" pageEncoding="UTF-8"%>
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
			商品评价
		</h2>
		<br>
		<a href="Account_comment">待评价商品</a> &nbsp; |&nbsp;
		<a href="Account_commented" id="light">已评价商品</a> &nbsp;&nbsp;
		<br><br><br><br>
		<hr width="90%">
		<br><br>
		<%
				List<String> score= (List<String>)com.opensymphony.xwork2.ActionContext.getContext().getValueStack().findValue("scoreList"); 
				System.out.print("score========"+score.isEmpty());
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
								<th style="width:10%;">
									商品评分
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
									<%=num.get(i) %>
								</td>
								<td>
									<%=listNum.get(i) %>元
								</td>
								<td>
									<%=score.get(i)%>分
								</td>
							</tr>
							<% i++;%>
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

