<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
   	<div
			style="margin-left: 40%; margin-top: 5%; width: 90%; height: 70%; background: white;">
			<div style="margin-left: 5%; margin-top: 5%; height: 10%;">
		<h1>
		<br>
			收货地址
		</h1>
		</div>
		<div style="margin-left: 20px;">
			<a href="#" onclick="javascript:window.open('addressForm.jsp','','height=300,width=800,top=400,left=600,toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no')"><input type="text" value="   添 加 地 址" disabled="disabled" class="text_address"></a>
		</div>
	</div>
  </body>
</html>
