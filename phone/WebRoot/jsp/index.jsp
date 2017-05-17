<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>index</title>
    

  </head>
  
  <body>
  <form name="form1" method="post" action="./servlet/GoodsCtrl">
   <table>
   <input type="text" name="id">
   <input type="submit" value="提交">
  
   <iframe name="aaa" width=100%></iframe>
   </table>
  
 
  </body>
</html>
