<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>top</title>
<link rel="stylesheet" type="text/css" href="../css/demo.css">
</head>

<body>

	<div align="center" name="top">
		<div class="top-p1" align="center">
			<div class="top-a">
				<img src="../photo/小米6.png">
			</div>

			<div class="top-b">

				<p align="left" class="top-b0">
					<%
						String name = (String) request.getAttribute("name");
					%>
					<%=name%></p>
				<%
					String detail = (String) request.getAttribute("detail");
					if (detail != null) {
				%>
				<p align="left" class="top-b1"><%=detail%></p>
				<%
					}
				%>
				<hr width=100% size=1 color="#DCDCDC"></hr>
				<br>
				<p align="left">版本</p>
				<p align="left" class="top-b1">
					<%
						String version = (String) request.getAttribute("version");
					%>
					<%=version%></p>
				<p align="left">颜色</p>
				<p align="left" class="top-b1">
					<%
						String color = (String) request.getAttribute("color");
					%>
					<%=color%></p>

				<%
					String memory = (String) request.getAttribute("memory");
					if (memory != null) {
				%>

				<p align="left">内存：
				<p align="left" class="top-b1"><%=memory%>
				</p>

				<%
					}
				%>
				<div class="top-b2">
				<a href="../jsp/addcart.jsp"><input type="button" class="myButton" value="加入购物车" ></a>
				</div>
				<div >


			</div>
		</div>
</div>

		<div class="top-p2" align="center">
		
			<div class="top-aa">
				<table>
					<td>商品详情</td>
				</table>
			</div>
			<div class="top-bb">
				<hr width=100% size=1 color="#b9b9b9">
			</div>
			<div class="top-cc">

				
				<p align="left">颜色：
					<%=color%></p>
					
					<%
					String internet = (String) request.getAttribute("internet");
					if (internet != null) {
				%>
				
				<p align="left">网络：
					<%=internet%></p>
					
				<%
					}
				%>
				
				<%
					String HDD = (String) request.getAttribute("HDD");
					if (HDD != null) {
				%>
				
				<p align="left">硬盘：
					<%=HDD%></p>
					
				<%
					}
				%>
				
				<%
					String card = (String) request.getAttribute("card");
					if (card != null) {
				%>
				
				<p align="left">显卡：
					<%=card%></p>
					
				<%
					}
				%>
				
				<%
					String cpu = (String) request.getAttribute("cpu");
					if (cpu != null) {
				%>
				
				<p align="left">处理器：
					<%=cpu%></p>
					
				<%
					}
				%>

				<%
					String camera = (String) request.getAttribute("camera");
					if (camera != null) {
				%>
				<p align="left">相机：
					<%=camera%></p>
				<%
					}
				%>

				<%
					String size = (String) request.getAttribute("size");
					if (size != null) {
				%>
				<p align="left">大小：
					<%=size%></p>
				<%
					}
				%>

				<%
					String weight = (String) request.getAttribute("weight");
					if (weight != null) {
				%>
				<p align="left">重量：
					<%=weight%></p>
				<%
					}
				%>


			</div>
	
	</div>
</body>
</html>
