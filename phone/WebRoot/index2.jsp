<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/perInfo.css">
  
  </head>
  
  <body style="margin-top:200px;margin-left:800px;">
    <s:form action="Account_login?id=3" method="post" namespace="/">
    	<input type="submit" value="买家登录" class="button">
    </s:form>
    <s:form action="Account_login?id=4" method="post" namespace="/">
    	<input type="submit" value="卖家登录" class="button">
    </s:form>
    <s:form action="Account_login?id=1" method="post" namespace="/">
    	<input type="submit" value="管理员登录" class="button">
    </s:form>
    <s:form action="Account_perCenter?id=1" method="post" namespace="/">
    	<input type="submit" value="跳转到主页" class="button">
    </s:form>
    <s:form action="Cart_get" method="post" namespace="/">
    	<input type="submit" value="跳转到购物车" class="button">
    </s:form>
    <s:form action="Cart_add?id=3&product_id=17" method="post" namespace="/">
    	<input type="submit" value="添加到购物车" class="button">
    </s:form>
    <!-- 		<% int user=(Integer) session.getAttribute("user");
			if(user==1){			 
		%>
		    <li class="topli"><a class="link" href="<%=basePath%>/together.jsp">首页</a></li>
		    <li class="topli"><a class="link" href="">管理员你好，欢迎光临！</a></li>
			<li class="topli"><a class="link" href="<%=basePath%>/admin.jsp">店铺信息</a></li>
			<%}if(user==2){ %>
			<li class="topli"><a class="link" href="<%=basePath%>/together.jsp">首页</a></li>
			<li class="topli"><a class="link" href="">客户你好，欢迎光临！</a></li>
			<li class="topli"><a class="link" href="">消息通知</a></li>
			<li class="topli"><a class="link" href="">购物车</a></li>	
				<%}if(user==3){ %>
		    <li class="topli"><a class="link" href="<%=basePath%>/together.jsp">首页</a></li>
			<li class="topli"><a class="link" href="">卖家你好，欢迎光临！</a></li>
			<li class="topli"><a class="link" href="">自家店铺</a></li>
			
			<%}else{%>
		    <li class="topli"><a class="link" href="<%=basePath%>/login.jsp">你好，请登录</a></li>
			<li class="topli"><a class="link" href="<%=basePath%>/login.jsp">免费注册</a></li>
			<%} %>
 -->
        <a href="Cart_add?id=1&product_id=1"><input type="submit" value="跳转到购物车" class="button"></a>
     <input type="button" name="button" id="button" value="提交" onclick="a()"/>
   
	<script type="text/javascript">
	function a()
	{
	alert("测试！");
	}
	</script>   
  </body>
</html>
