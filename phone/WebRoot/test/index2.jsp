<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <style type="text/css">
        #search
        {
            border:1px solid #dfdfdf;
            height:38px;
            width:384px;
            font-size:11pt;
            color:#a9a9a9;
            -moz-user-select:none;
            text-indent:14px;
            }
         
        .form
        {
            margin:0 auto;
            width:300px;
            position:absolute;
            top:100px;
            right:250px;
            }
       #glass a
       {
           position:absolute;
           top:0px;
           right:-126px;
           border:1px solid #dfdfdf;
           width:40px;
           height:40px;
           display:block;
           background:url(glass_two.png);
           }
       #glass a:hover
       {
           background-position:0 -40px;
           }
       #ul
       {
           position:absolute;
           top:-6px;
           right:-150px;
           width:280px;
           display:block;
           }
       ul li
       {
           list-style-type:none;
           float:left;
           width:62px;
           height:20px;
           background-color:#f3f3f3;
           margin-right:8px;
           text-align:center;
           font-size:9pt;
           font-family:"微软雅黑";
           color:#333333;
           }
       ul li:hover
       {
           background-color:#dfdfdf;
           }
    </style>
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
    
  <div  class="form">
    <form>
        <input type="text" name="input" id="search" value="搜索您需要的商品"></input>
    </form>
    <div id="nav">
        <ul id="ul">
            <a href="#"><li>小米手机4</li></a>
            <a href="#"><li>小米电视</li></a>
            <a href="#"><li>小米手机3</li></a>
        </ul>
    </div>
    <div id="glass">
        <a href="#"></a>
    </div>
</div>
  
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
