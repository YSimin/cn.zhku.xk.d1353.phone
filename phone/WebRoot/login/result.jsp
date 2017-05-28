<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>出错啦！</title>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
</head>
<body>


	<%
		String msg = (String) request.getAttribute("MSG");
	%>
	<script type="text/javascript">
		
	<%if (msg == "error") {%>
		alert("对不起，用户名或者密码不正确");
		window.location.href = "<%=basePath%>/login/login.jsp";
	<%} else if (msg == "errors") {%>
		alert("抱歉，该用户名已经被注册！");
		window.location.href = "<%=basePath%>/login/login.jsp";
	<%} else {
			}%>
		
	</script>
</body>
</html>