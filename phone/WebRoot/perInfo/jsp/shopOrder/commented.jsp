<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
  <head>
  	<title>已评论订单</title>
    <base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/perInfo.css">
  </head>
  
	<body style="background:#F0F0F0;">
	<jsp:include page="../../top/head.jsp"/>
	<jsp:include page="../../top/order.jsp"/>
	<div style=" width: 70%;">
	<jsp:include page="../../left/left.jsp"/>
	<jsp:include page="../../right/saler/order/commented.jsp"/>
	</div>
</html>