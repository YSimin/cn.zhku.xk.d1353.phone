<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
	<head>
		<title>修改个人信息</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">    
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
	</head>

	<body style="background:#F0F0F0;">
	<jsp:include page="../../top/head.jsp"/>
	<jsp:include page="../../top/perCenter.jsp"></jsp:include>
	<div style=" width: 70%;">
	<jsp:include page="../../left/left.jsp"></jsp:include>
	<jsp:include page="../../right/perCenter/perCenter.jsp"></jsp:include>
	</div>
 	</body>
</html>

