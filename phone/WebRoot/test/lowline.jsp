<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
 <HEAD>
  <TITLE> New Document </TITLE>


 <BODY>
  <a href="#" onMouseOver="show(0)">
<div style="color:blue">☆就业方向：</div>
</a>
<div id="child1" style="display:none;">
		<p>web开发、java程序开发</p>
</div>
<a href="#" onMouseOver="show(1)">
<div style="color:blue">☆专业技能： </div>
</a>
<div id="child2" style="display:none;">
		<p>＊熟练掌握html,xml,css,javascript等技术.</p>
		<p>＊熟练掌握jsp,servlet,jdbc等相关技术,java语言基础扎实。</p>
		<p>＊熟悉mysql,sql server,oracle等数据库开发。</p>
		<p>＊熟悉tomcat应用服务器的使用。</p>
		<p>＊对struts,spring,hibernate等开源框架有所了解.</p>
		<p>＊了解c语言,vb程序设计,汇编语言</p>
		<p>＊熟练使用开发工具eclipse</p>
</div>
 
<a href="#" onMouseOver="show(2)">
<div style="color:blue;" >☆实践经验： </div>
</a>
<div id="child3" style="display:none;">
		<p>＊2005年11月毕业设计：开发药品管理系统,包括管理药品的进库、修改、出库、出库
				历史、库存查看等功能,使用struts+hibernate+mysql开发,在应用前端用struts,用  
				户通过web浏览器进行访问,使用hibernate把对象模型映射到数据库.</p>
		<p>＊2005年6月独立开发本人的个人主页，具有文章分类显示功能，后台动态管理功能，
				在后台动态发布文章、修改文章、删除文章功能，使用jsp+servlet+javabean+mysql
				模型开发，jsp只要是用于前台显示，servlet只要用于转发，是整个系统的中心，
				javabean主要用于与后台数据库打交道</p>
		<p>＊2005年10月参加学校的网店设计策划大赛(主要是静态页面设计和图片动画设计)</p>
</div>
 <script language="javascript">
 function show(id)
 {
	var div= ["child1","child2","child3"]
	for(i=0;i<3;i++)
	{
		document.getElementById(div[i]).style.display=(i==id?"block":"none")
	 }
 }
 
 </script>
 </BODY>
</HTML>
