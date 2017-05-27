<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>头面</title>
<!-- 这是第一个头面的格式-->
<style>
.top {
	position: relative;
	height: 40px;
	width:1887px;
	text-valign:center;
	font-size: 12px;
	background-color: #333;
}

.topul {
	width:600px;
	float:right;
	display: block;
	height:40px;
	padding-top:0px;
}

.topli {
	float: left;
	list-style: none;
	margin-left: 20px;
	font-family: 微软雅黑;
	font-size: 14px;
}

.link {
	color: #ADADAD;
}

a {
	text-decoration: none;
}

.link:hover {
	color: white;
}
</style>

<!-- 这是第二个头面的格式-->
<style>
.second{    
    position: relative;
    z-index: 120;
    height: 100px;
    text-valign:center;
    background-color:white;
    }
    .logo{
    width:55px;
    height:54px;
    left:50%;
    padding-top:24px;
    }
.secondul {
    
    display:block;
    margin:0px auto;
    position: absolute;
    left: 50%;
    top: 50%;
    transform:translate(-50%,-50%);
}

.secondli {
	float: left;
	list-style: none;
	margin-left: 25px;
	font-family: 微软雅黑;
	font-size: 16px;
	text-align: -webkit-match-parent;
}

.secondlink {
	color: #4F4F4F;
    line-height:100px;
}

.secondlink:hover {
	color: #FF5809;
}
</style>


<!-- 第二个头面下侧菜单的格式-->
<style>
.box1 {
	color: white;
	display: block;
}
.title1{
	display:block;
}
.title1:hover .listview1 {
	display: block;
}

.listview1:hover .listview1 {
	display: block;
} 

.listview1 {
	position: absolute;
	border-top: 1px solid #e0e0e0;
	z-index:100000;
	width:1080px;
	height:210px;
	background-color: white;
	top:99px;
	left:50%;
	margin-left:-540px;
	display: none;
}

.listview1 li {
	float: left;
	width: 160px;
	height: 180px;
	margin-left: 20px;
	list-style: none;
	color: #FF5809;
	background-color: white;
	float: left;
	font-size: 14px;
	padding-top:30px;
}

.listview1 .thumb1 {
	margin-right: 15px;
	vertical-align: middle;
	border: 0;
	width: 160px;
	height: 110px;
}

.listview1 .text {
	line-height: 20px;
	color: black;
	font-family: 微软雅黑;
	font-size: 14px;
	padding-top: 10px;
}
</style>
<style>
.together1{
position:relative;
margin:0 auto;
width:100%;
text-align:center;
}

</style>

</head>
<body>

<div class="together1" style="position:relative">
	<div class="top">
		<ul class="topul">
		<%  int user = (Integer) session.getAttribute("user"); 
			int count = (Integer)session.getAttribute("count");
		%>
		
		<c:choose>
		<c:when test="${user==1}">
		    <li class="topli"><a class="link" href="<%=basePath%>/together.jsp">首页</a></li>
		    <li class="topli"><span class="link">管理员你好，欢迎光临！</span></li>
			<li class="topli"><a class="link" href="<%=basePath%>/admin.jsp">店铺信息</a></li>
			</c:when>
			<c:when test="${user==2}">
			<li class="topli"><span class="link">客户你好，欢迎光临！</span></li>
			<li class="topli"><a class="link" href="<%=basePath%>/together.jsp">首页</a></li>		
			<li class="topli"><a class="link" href="Account_perCenter.action">个人中心</a></li>
			<li class="topli"><a class="link" href="Account_myOrder.action">订单信息</a></li>
			<li class="topli"><a class="link" href="Cart_get.action">购物车(<%=count%>)</a></li>	
				</c:when>
				<c:when test="${user==3}">
			<li class="topli"><a class="link">卖家你好，欢迎光临！</a></li>
		    <li class="topli"><a class="link" href="<%=basePath%>/together.jsp">首页</a></li>
			<li class="topli"><a class="link" href="">自家店铺</a></li>
			<li class="topli"><a class="link" href="Account_perCenter.action">个人中心</a></li>
			<li class="topli"><a class="link" href="Account_myOrder.action">店铺订单</a></li>
			
				</c:when>
		<c:otherwise>
		    <li class="topli"><a class="link" href="<%=basePath%>/login.jsp">你好，请登录</a></li>
			<li class="topli"><a class="link" href="<%=basePath%>/login.jsp">免费注册</a></li>
			</c:otherwise>
			</c:choose>
		</ul>
	</div>

	<!-- 第二个头面-->
	<!-- 下侧菜单栏-->
	<div class="second">
	  
		<ul class="secondul">
		 <li class="secondli"><img class="logo" src="<%=basePath%>/image/logo.png"></li>
			<li class="secondli">
				<div class="box1" >
					<div class="title1">
						<a class="secondlink" href="">小米手机</a>
						<ul class="listview1">
							<li><a href="/servlet/GoodsCtrl?id=7"><img class="thumb1" src="<%=basePath%>/image/01-1.png"></a>
								<a class="text" href="/servlet/GoodsCtrl?id=7">小米6</a>
							<p>2499元起</p></li>
							<li><a href="/servlet/GoodsCtrl?id=11"><img class="thumb1" src="<%=basePath%>/image/01-2.jpg"></a>
								<a class="text" href="/servlet/GoodsCtrl?id=11">小米Note 2</a>
							<p>2799元起</p></li>
							<li><a href="/servlet/GoodsCtrl?id=10"><img class="thumb1" src="<%=basePath%>/image/01-3.jpg"></a>
								<a class="text" href="/servlet/GoodsCtrl?id=10">小米MIX</a>
							<p>3499元起</p></li>
							<li><a href="/servlet/GoodsCtrl?id=5"><img class="thumb1" src="<%=basePath%>/image/01-4.jpg"></a>
								<a class="text" href="/servlet/GoodsCtrl?id=5">小米5s</a>
							<p>1999元起</p></li>
							<li><a href="/servlet/GoodsCtrl?id=6"><img class="thumb1" src="<%=basePath%>/image/01-5.jpg"></a>
								<a class="text" href="/servlet/GoodsCtrl?id=6">小米5s plus</a>
							<p>2299元起</p></li>
							<li><a href="/servlet/GoodsCtrl?id=4"><img class="thumb1" src="<%=basePath%>/image/01-6.png"></a>
								<a class="text" href="/servlet/GoodsCtrl?id=4">小米5</a>
							<p>1499元起</p></li>
						</ul>

					</div>
				</div>
			</li>

			<li class="secondli">
				<div class="box1">
					<div class="title1">
						<a class="secondlink" href="">红米</a>
						<ul class="listview1">
							<li><a href="/servlet/GoodsCtrl?id=56"><img class="thumb1" src="<%=basePath%>/image/02-1.jpg"></a>
								<a class="text" href="/servlet/GoodsCtrl?id=56">红米note 4X</a>
							<p>999元起</p></li>
							<li><a href="/servlet/GoodsCtrl?id=55"><img class="thumb1" src="<%=basePath%>/image/02-2.jpg"></a>
								<a class="text" href="/servlet/GoodsCtrl?id=55">红米note 4</a>
							<p>999元起</p></li>
							<li><a href="/servlet/GoodsCtrl?id=54"><img class="thumb1" src="<%=basePath%>/image/02-3.jpg"></a>
								<a class="text" href="/servlet/GoodsCtrl?id=54">红米4X</a>
							<p>699元起</p></li>
							<li><a href="/servlet/GoodsCtrl?id=53"><img class="thumb1" src="<%=basePath%>/image/02-4.png"></a>
								<a class="text" href="/servlet/GoodsCtrl?id=53">红米4A</a>
							<p>599元起</p></li>
							<li><a href="/servlet/GoodsCtrl?id=52"><img class="thumb1" src="<%=basePath%>/image/02-5.jpg"></a>
								<a class="text" href="/servlet/GoodsCtrl?id=52">红米4 </a>
							<p>799元起</p></li>
						</ul>
					</div>
				</div>
			</li>

			<li class="secondli">
				<div class="box1">
					<div class="title1">
						<a class="secondlink" href="">平板·笔记本</a>
						<ul class="listview1">
							<li><a href="/servlet/GoodsCtrl?id=25"><img class="thumb1" src="<%=basePath%>/image/03-1.png"></a>
								<a class="text" href="/servlet/GoodsCtrl?id=25">小米平板3 64G</a>
							<p>1499元起</p></li>
							<li><a href="/servlet/GoodsCtrl?id=42"><img class="thumb1" src="<%=basePath%>/image/03-2.jpg"></a>
								<a class="text" href="/servlet/GoodsCtrl?id=42">小米笔记本Air 12.5</a>
							<p>3599元起</p></li>
							<li><a href="/servlet/GoodsCtrl?id=43"><img class="thumb1" src="<%=basePath%>/image/03-3.jpg"></a>
								<a class="text" href="/servlet/GoodsCtrl?id=43">小米笔记本Air 13.3</a>
							<p>4999元起</p></li>
							<li><a href="/servlet/GoodsCtrl?id=44"><img class="thumb1" src="<%=basePath%>/image/2-10.jpg"></a>
								<a class="text" href="/servlet/GoodsCtrl?id=44">小米笔记本内胆包</a>
							<p>5999元起</p></li>
						</ul>
					</div>
				</div>
			</li>


			<li class="secondli">
				<div class="box1">
					<div class="title1">
						<a class="secondlink" href="">电视</a>
						<ul class="listview1">
							<li><a href="/servlet/GoodsCtrl?id=34"><img class="thumb1" src="<%=basePath%>/image/04-1.png"></a>
								<a class="text" href="/servlet/GoodsCtrl?id=34">小米电视4A 43英寸</a>
							<p>2099元</p></li>
							<li><a href="/servlet/GoodsCtrl?id=35"><img class="thumb1" src="<%=basePath%>/image/04-2.png"></a>
								<a class="text" href="/servlet/GoodsCtrl?id=35">小米电视4A 49英寸</a>
							<p>2599元起</p></li>
							<li><a href="/servlet/GoodsCtrl?id=36"><img class="thumb1" src="<%=basePath%>/image/04-3.png"></a>
								<a class="text" href="/servlet/GoodsCtrl?id=36">小米电视4A 55英寸</a>
							<p>3199元起</p></li>
							<li><a href="/servlet/GoodsCtrl?id=37"><img class="thumb1" src="<%=basePath%>/image/04-4.png"></a>
								<a class="text" href="/servlet/GoodsCtrl?id=37">小米电视4A 65英寸</a>
							<p>5699元起</p></li>
							<li><a href="/servlet/GoodsCtrl?id=31"><img class="thumb1" src="<%=basePath%>/image/04-5.png"></a>
								<a class="text" href="/servlet/GoodsCtrl?id=31">小米电视3s 60英寸 </a>
							<p>4799元</p></li>
						</ul>
					</div>
				</div>
			</li>


			<li class="secondli">
				<div class="box1">
					<div class="title1">
						<a class="secondlink" href="">盒子·影音</a>
						<ul class="listview1">
							<li><a href="/servlet/GoodsCtrl?id=24"><img class="thumb1" src="<%=basePath%>/image/05-1.png"></a>
								<a class="text" href="/servlet/GoodsCtrl?id=24">小米家庭音响</a>
							<p>299元</p></li>
							<li><a href="/servlet/GoodsCtrl?id=57"><img class="thumb1" src="<%=basePath%>/image/05-2.png"></a>
								<a class="text" href="/servlet/GoodsCtrl?id=57">小米盒子3c</a>
							<p>199元</p></li>
							<li><a href="/servlet/GoodsCtrl?id=0"><img class="thumb1" src="<%=basePath%>/image/05-3.jpg"></a>
								<a class="text" href="/servlet/GoodsCtrl?id=0">小米盒子3 增强版</a>
							<p>399元</p></li>
							<li><a href="/servlet/GoodsCtrl?id=45"><img class="thumb1" src="<%=basePath%>/image/05-4.png"></a>
								<a class="text" href="/servlet/GoodsCtrl?id=45">小米网络音响</a>
							<p>1999元</p></li>
							<li><a href="/servlet/GoodsCtrl?id=24"><img class="thumb1" src="<%=basePath%>/image/05-5.jpg"></a>
								<a class="text" href="/servlet/GoodsCtrl?id=24">小米家庭音响 标准版 </a>
							<p>699</p></li>
						</ul>
					</div>
				</div>
			</li>
			<li class="secondli">
				<div class="box1">
					<div class="title1">
						<a class="secondlink" href="">路由器</a>
						<ul class="listview1">
							<li><a href="/servlet/GoodsCtrl?id=48"><img class="thumb1" src="<%=basePath%>/image/06-1.png"></a>
								<a class="text" href="/servlet/GoodsCtrl?id=48">小米路由器HD</a>
							<p>1299元</p></li>
							
						</ul>
					</div>
				</div>
			</li>
			<li class="secondli">
				<div class="box1">
					<div class="title1">
						<a class="secondlink" href="">智能硬件</a>
						<ul class="listview1">
							<li><a href="/servlet/GoodsCtrl?id=15"><img class="thumb1" src="<%=basePath%>/image/07-1.jpg"></a>
								<a class="text" href="/servlet/GoodsCtrl?id=15">小米体脂秤</a>
							<p>199元</p></li>
							<li><a href="/servlet/GoodsCtrl?id=50"><img class="thumb1" src="<%=basePath%>/image/2-2.jpg"></a>
								<a class="text" href="/servlet/GoodsCtrl?id=50">悦米机械键盘</a>
							<p>149元</p></li>
							
							<li><a href="/servlet/GoodsCtrl?id=12"><img class="thumb1" src="<%=basePath%>/image/07-4.png"></a>
								<a class="text" href="/servlet/GoodsCtrl?id=12">小米VR眼镜 PLAY2</a>
							<p>99元</p></li>
							<li><a href="/servlet/GoodsCtrl?id=51"><img class="thumb1" src="<%=basePath%>/image/07-5.jpg"></a>
								<a class="text" href="/servlet/GoodsCtrl?id=51">米家IH电饭锅 </a>
							<p>399元起</p></li>
						</ul>
					</div>
				</div>
			</li>
		</ul>
	</div>
</div>
	


</body>

<script type="text/javascript">
	var div=document.getElementById("title1");
	var ul=document.getElementById("listview1");
	div.onmouseover=function(){
		ul.style.display="block";
	}
	/* div.onmouseout=function(){
		ul.style.display="none";
	} */
</script>
</html>