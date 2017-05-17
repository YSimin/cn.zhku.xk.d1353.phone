<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>My JSP 'addcart.jsp' starting page</title>
    
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <form name="form1" method="post" action="./servlet/XXCtrl">
     <%
   String account_id=(String)session.getAttribute("loginUserId");
    if(id==null){
     %>
   <script>window.alert("您还没登陆！请登陆，再操作！");</script>
   <%
   response.setHeader("Refresh", "1;Login.jsp");
   }
     else{
    String product_id = (String) request.getAttribute("id");
  
      }
    
     
   %>
  
  
</form>
  </body>
</html>
