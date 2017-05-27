<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>用户首页</title>

<!-- 这是轮播图的格式-->
 <style type="text/css">
       
       
        #container {
            position: relative;
            width: 1226px;
            height: 460px;
            border: 0px;;
            overflow: hidden;
        }
        #list {
            position: absolute;
            z-index: 1;
            width: 8582px;
            height: 460px;
        }
        #list img {
            float: left;
            width: 1226px;
            height:460px;
            
        }
        #buttons {
            position: absolute;
            left:800px;
            bottom: 20px;
            z-index: 2;
            height: 10px;
            width: 100px;
        }
        #buttons span {
            float: left;
            margin-right: 5px;
            width: 10px;
            height: 10px;
            border: 1px solid #fff;
            border-radius: 50%;
            background: #333;
            cursor: pointer;
        }
        #buttons .on {
            background: orangered;
        }
        .arrow {
            position: absolute;
            top: 180px;
            z-index: 2;
            display: none;
            width: 40px;
            height: 40px;
            font-size: 36px;
            font-weight: bold;
            line-height: 39px;
            text-align: center;
            color: #fff;
            background-color: RGBA(0, 0, 0, .3);
            cursor: pointer;
        }
        .arrow:hover {
            background-color: RGBA(0, 0, 0, .7);
        }
        #container:hover .arrow {
            display: block;
        }
        #prev {
            left: 20px;
        }
        #next {
            right: 20px;
        }
    </style>



<!-- 这是右侧菜单栏的格式-->
<style>
.box {
	color: white;
	display: block;

	
}

.title:hover .listview {
	display: block;
}
.title{height:40px;}
.listview:hover .listview {
	display: block;
}

.listview {
margin: 0;
            padding: 0;
	position: absolute;
	z-index:100;
	text-align:left;
	width:692px;
	height:439px;
	margin-left:44px;
	background-color:white;
	padding-top:21px;
	overflow: hidden;
	display: none;
	left: 14em;
	top: 0;
}

.listview li {
	float: left;
	width: 280px;
	height: 60px;
	margin-left: 25px;
	padding-left: 25px;
	list-style: none;
	color: #7B7B7B;
	background-color: white;
	float: left;
}

.listview .thumb {
	margin-right: 15px;
	vertical-align: middle;
	border: 0;
}

img[Attributes Style] {
	width: 40px;
	height: 40px;
}

.listview .text {
	line-height: 40px;
}

a {
	color: #5B5B5B;
	text-decoration: none;
}

a:hover {
	color: #FF5809;
}

button {
	width: 60px;
	height: 30px;
	color: #FF5809;
	border: 1px solid #FF8809;
	background-color: white;
	float: right;
	font-family:微软雅黑;
	text-align: center;
	vertical-align: middle;
	line-height: 22px;
}
</style>



<!-- 这是菜单栏的格式-->
<style>
table {
	color: white;
	font-size: 14px;
	font-family: 黑体;
	background-color: rgba(96,96,96,0.8);
	
	z-index: 100;
	
	width:240px;
	height:300px;
	border:0;
}

td {
	text-align: center;
	padding-left:7px;
	white-space: nowrap;
	height:41px;
	line-height:43px;
}
</style>


<!-- 这是合并的格式-->
<style>
.together{
z-index:100;
text-align:center;
margin:0 auto;
width:1227px;

}
body{
text-align:center;
}

</style>

</head>
<body>

<div class="together" style="position:relative">
<!-- 菜单栏-->
	<table id="mainTable" style="position:absolute">
		<tr>
			<td>
				<div class="box">
					<div class="title">
						手机 电话卡 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;〉
						<ul class="listview">
							<li><a href="/servlet/GoodsCtrl?id=7"><img class="thumb" src="<%=basePath%>/image/m6.png"></a>
							  <a class="text" href="/servlet/GoodsCtrl?id=7">小米6</a>
							<button
									onMouseOver="this.style.backgroundColor='#FF5809';this.style.color='white'"
									onMouseOut="this.style.backgroundColor='white';this.style.color='#FF5809'"
									onclick="window.location.href='/servlet/GoodsCtrl?id=7'">选购</button></li>
									
									
							<li><a href="/servlet/GoodsCtrl?id=4"><img class="thumb" src="<%=basePath%>/image/xm5-80.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=7">小米手机5</a>
							<button
									onMouseOver="this.style.backgroundColor='#FF5809';this.style.color='white'"
									onMouseOut="this.style.backgroundColor='white';this.style.color='#FF5809'"
									onclick="window.location.href='/servlet/GoodsCtrl?id=4'">选购</button></li>
							
							<li><a href="/servlet/GoodsCtrl?id=26"><img class="thumb" src="<%=basePath%>/image/5c_80.png"></a><a
								class="text" href="/servlet/GoodsCtrl?id=26">小米手机5c</a>
							<button
									onMouseOver="this.style.backgroundColor='#FF5809';this.style.color='white'"
									onMouseOut="this.style.backgroundColor='white';this.style.color='#FF5809'"
									onclick="window.location.href='/servlet/GoodsCtrl?id=26'">选购</button></li>
									
									
							<li><a href="/servlet/GoodsCtrl?id=56"><img class="thumb"
									src="<%=basePath%>/image/hmn4x80.png"></a><a class="text" href="/servlet/GoodsCtrl?id=56">红米Note
									4X</a>
							<button
									onMouseOver="this.style.backgroundColor='#FF5809';this.style.color='white'"
									onMouseOut="this.style.backgroundColor='white';this.style.color='#FF5809'"
									onclick="window.location.href='/servlet/GoodsCtrl?id=56'">选购</button></li>
									
	
							<li><a href="/servlet/GoodsCtrl?id=11"><img class="thumb"
									src="<%=basePath%>/image/xmNOTE2-80.jpg"></a><a class="text" href="/servlet/GoodsCtrl?id=11">小米Note
									2</a>
							<button
									onMouseOver="this.style.backgroundColor='#FF5809';this.style.color='white'"
									onMouseOut="this.style.backgroundColor='white';this.style.color='#FF5809'"
									onclick="window.location.href='/servlet/GoodsCtrl?id=11'">选购</button></li>
									
									
							<li><a href="/servlet/GoodsCtrl?id=55"><img class="thumb"
									src="<%=basePath%>/image/hmnote4-80.jpg"></a><a class="text" href="/servlet/GoodsCtrl?id=55">红米Note
									4</a>
							<button
									onMouseOver="this.style.backgroundColor='#FF5809';this.style.color='white'"
									onMouseOut="this.style.backgroundColor='white';this.style.color='#FF5809'"
									onclick="window.location.href='/servlet/GoodsCtrl?id=55'">选购</button></li>
									
									
							<li><a href="/servlet/GoodsCtrl?id=10"><img class="thumb" src="<%=basePath%>/image/MIX-80.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=10">小米MIX</a>
							<button
									onMouseOver="this.style.backgroundColor='#FF5809';this.style.color='white'"
									onMouseOut="this.style.backgroundColor='white';this.style.color='#FF5809'"
									onclick="window.location.href='/servlet/GoodsCtrl?id=10'">选购</button></li>
							
							<li><a href="/servlet/GoodsCtrl?id=54"><img class="thumb"
									src="<%=basePath%>/image/hm4x_80.png"></a><a class="text" href="/servlet/GoodsCtrl?id=54">红米4X</a>
							<button
									onMouseOver="this.style.backgroundColor='#FF5809';this.style.color='white'"
									onMouseOut="this.style.backgroundColor='white';this.style.color='#FF5809'"
									onclick="window.location.href='/servlet/GoodsCtrl?id=54'">选购</button></li>
							
							
							<li><a href="/servlet/GoodsCtrl?id=4"><img class="thumb"
									src="<%=basePath%>/image/xm5S-80.jpg"></a><a class="text" href="/servlet/GoodsCtrl?id=4">小米5s</a>
							<button
									onMouseOver="this.style.backgroundColor='#FF5809';this.style.color='white'"
									onMouseOut="this.style.backgroundColor='white';this.style.color='#FF5809'"
									onclick="window.location.href='/servlet/GoodsCtrl?id=4'">选购</button></li>
							<li><a href="/servlet/GoodsCtrl?id=52"><img class="thumb" src="<%=basePath%>/image/hm4-80.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=52">红米4</a>
							<button
									onMouseOver="this.style.backgroundColor='#FF5809';this.style.color='white'"
									onMouseOut="this.style.backgroundColor='white';this.style.color='#FF5809'"
									onclick="window.location.href='/servlet/GoodsCtrl?id=52'">选购</button></li>
									
									
							<li><a href="/servlet/GoodsCtrl?id=6"><img class="thumb"
									src="<%=basePath%>/image/xm5S-plus-80.jpg"></a><a class="text" href="/servlet/GoodsCtrl?id=6">小米5s
									Plus</a>
							<button
									onMouseOver="this.style.backgroundColor='#FF5809';this.style.color='white'"
									onMouseOut="this.style.backgroundColor='white';this.style.color='#FF5809'"
									onclick="window.location.href='/servlet/GoodsCtrl?id=6'">选购</button></li>
							<li><a href="/servlet/GoodsCtrl?id=53"><img class="thumb"
									src="<%=basePath%>/image/hm4A-80.jpg"></a><a class="text" href="/servlet/GoodsCtrl?id=53">红米4A</a>
							<button
									onMouseOver="this.style.backgroundColor='#FF5809';this.style.color='white'"
									onMouseOut="this.style.backgroundColor='white';this.style.color='#FF5809'"
									onclick="window.location.href='/servlet/GoodsCtrl?id=53'">选购</button></li>
						</ul>
					</div>
				</div>
			</td>
		<tr>
		<tr>
			<td>
				<div class="box">
					<div class="title">
						笔记本 平板&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;〉
						<ul class="listview">
							<li><a href="/servlet/GoodsCtrl?id=42"><img class="thumb" src="<%=basePath%>/image/2-1.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=42">笔记本12.5英寸</a>
							<button
									onMouseOver="this.style.backgroundColor='#FF5809';this.style.color='white'"
									onMouseOut="this.style.backgroundColor='white';this.style.color='#FF5809'"
									onclick="window.location.href='/servlet/GoodsCtrl?id=42'">选购</button></li>
							
							<li><a href="/servlet/GoodsCtrl?id=50"><img class="thumb" src="<%=basePath%>/image/2-2.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=50">悦米机械键盘</a></li>
							<li><a href="/servlet/GoodsCtrl?id=43"><img class="thumb" src="<%=basePath%>/image/2-3.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=43">笔记本13.3英寸</a>
							<button
									onMouseOver="this.style.backgroundColor='#FF5809';this.style.color='white'"
									onMouseOut="this.style.backgroundColor='white';this.style.color='#FF5809'"
									onclick="window.location.href='/servlet/GoodsCtrl?id=43'">选购</button></li>
							
							
							
							<li><a href="/servlet/GoodsCtrl?id=16"><img class="thumb" src="<%=basePath%>/image/2-4.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=16">小米便携鼠标</a></li>
							
							
							<li><a href="/servlet/GoodsCtrl?id=25"><img class="thumb" src="<%=basePath%>/image/2-5.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=25">小米平板3</a>
							<button
									onMouseOver="this.style.backgroundColor='#FF5809';this.style.color='white'"
									onMouseOut="this.style.backgroundColor='white';this.style.color='#FF5809'"
									onclick="window.location.href='/servlet/GoodsCtrl?id=25'">选购</button></li>
							
							
							
							<li><a href="/servlet/GoodsCtrl?id=2"><img class="thumb" src="<%=basePath%>/image/2-7.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=2">USB-C电源适配器</a></li>
							<li><a href="/servlet/GoodsCtrl?id=49"><img class="thumb" src="<%=basePath%>/image/2-8.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=49">鼠标垫</a></li>
							<li><a href="/servlet/GoodsCtrl?id=3"><img class="thumb" src="<%=basePath%>/image/2-9.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=3">USB-C转接器</a></li>
							<li><a href="/servlet/GoodsCtrl?id=44"><img class="thumb" src="<%=basePath%>/image/2-10.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=44">小米笔记本内胆包</a></li>
						</ul>
					</div>
				</div>

			</td>
		<tr>
		<tr>
			<td>
				<div class="box">
					<div class="title">
						电视 盒子 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;〉
						<ul class="listview">
							<li><a href="/servlet/GoodsCtrl?id=34"><img class="thumb" src="<%=basePath%>/image/3-1.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=34">小米电视4A 43英寸</a></li>
							<li><a href="/servlet/GoodsCtrl?id=31"><img class="thumb" src="<%=basePath%>/image/3-2.png"></a><a
								class="text" href="/servlet/GoodsCtrl?id=31">小米电视3s 60英寸</a></li>
							<li><a href="/servlet/GoodsCtrl?id=0"><img class="thumb" src="<%=basePath%>/image/3-3.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=0">小米盒子3 增强版</a></li>
							<li><a href="/servlet/GoodsCtrl?id=35"><img class="thumb" src="<%=basePath%>/image/3-4.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=35">小米电视4A 49英寸</a></li>
							<li><a href="/servlet/GoodsCtrl?id=32"><img class="thumb" src="<%=basePath%>/image/3-5.png"></a><a
								class="text" href="/servlet/GoodsCtrl?id=32">小米电视3s 65英寸</a></li>
							<li><a href="/servlet/GoodsCtrl?id=14"><img class="thumb" src="<%=basePath%>/image/3-6.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=14">小米低音炮</a></li>
							<li><a href="/servlet/GoodsCtrl?id=36"><img class="thumb" src="<%=basePath%>/image/3-7.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=36">小米电视4A 55英寸</a></li>
							<li><a href="/servlet/GoodsCtrl?id=33"><img class="thumb" src="<%=basePath%>/image/3-8.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=33">小米电视3s 65英寸 曲屏</a></li>
							<li><a href="/servlet/GoodsCtrl?id=24"><img class="thumb" src="<%=basePath%>/image/3-9.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=24">家庭音响</a></li>
							<li><a href="/servlet/GoodsCtrl?id=37"><img class="thumb" src="<%=basePath%>/image/3-10.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=37">小米电视4A 65英寸</a></li>
							<li><a href="/servlet/GoodsCtrl?id=30"><img class="thumb" src="<%=basePath%>/image/3-11.png"></a><a
								class="text" href="/servlet/GoodsCtrl?id=30">小米电视3 70英寸</a></li>
							<li><a href="/servlet/GoodsCtrl?id=57"><img class="thumb" src="<%=basePath%>/image/3-16.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=57">小米盒子3c</a></li>
						</ul>
					</div>
				</div>
			</td>
		<tr>
		<tr>
			<td>
				<div class="box">
					<div class="title">
						路由器 智能硬件 &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;〉
						<ul class="listview">
							
							<li><a href="/servlet/GoodsCtrl?id=15"><img class="thumb" src="<%=basePath%>/image/4-4.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=15">体重秤/体脂秤</a></li>
							<li><a href="/servlet/GoodsCtrl?id=12"><img class="thumb" src="<%=basePath%>/image/4-5.png"></a><a
								class="text" href="/servlet/GoodsCtrl?id=12">小米VR眼镜</a></li>
							
							<li><a href="/servlet/GoodsCtrl?id=48"><img class="thumb" src="<%=basePath%>/image/4-9.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=48">小米路由器</a></li>
							<li><a href="/servlet/GoodsCtrl?id=51"><img class="thumb" src="<%=basePath%>/image/4-10.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=51">米家智能电饭煲</a></li>
							
							

						</ul>
					</div>
				</div>

			</td>
		<tr>
		<tr>
			<td>
				<div class="box">
					<div class="title">
						移动电源 电池 插线板 &nbsp;&nbsp;&nbsp;&nbsp;〉
						<ul class="listview">
							<li><a href="/servlet/GoodsCtrl?id=40"><img class="thumb" src="<%=basePath%>/image/5-1.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=40">小米移动电源</a></li>
							
							<li><a href="/servlet/GoodsCtrl?id=19"><img class="thumb" src="<%=basePath%>/image/5-4.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=19">品牌移动电源</a></li>
							
							<li><a href="/servlet/GoodsCtrl?id=18"><img class="thumb" src="<%=basePath%>/image/5-6.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=18">充电器</a></li>
						
						</ul>
					</div>
				</div>
			</td>
		<tr>
		<tr>
			<td>
				<div class="box">
					<div class="title">
						耳机 音箱 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;〉
						<ul class="listview">
							<li><a href="/servlet/GoodsCtrl?id=23"><img class="thumb" src="<%=basePath%>/image/6-1.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=23">小米头戴式耳机</a></li>
							
							<li><a href="/servlet/GoodsCtrl?id=22"><img class="thumb" src="<%=basePath%>/image/6-7.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=22">小米圈铁耳机 Pro</a></li>
							<li><a href="/servlet/GoodsCtrl?id=20"><img class="thumb" src="<%=basePath%>/image/6-8.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=20">品牌耳机</a></li>
							
							<li><a href="/servlet/GoodsCtrl?id=21"><img class="thumb" src="<%=basePath%>/image/6-10.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=21">小米圈铁耳机</a></li>
							<li><a href="/servlet/GoodsCtrl?id=45"><img class="thumb" src="<%=basePath%>/image/6-11.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=45">小米网络音响</a></li>
							
						</ul>
					</div>
				</div>

			</td>
		<tr>
		<tr>
			<td>
				<div class="box">
					<div class="title">
						保护套 贴 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;〉
						<ul class="listview">
							
							<li><a href="/servlet/GoodsCtrl?id=17"><img class="thumb" src="<%=basePath%>/image/7-2.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=17">保护套/保护壳</a></li>
						</ul>
					</div>
				</div>
			</td>
		</tr>


		<tr>
			<td>
				<div class="box">
					<div class="title">
						线材 支 架 存储卡 &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;〉
						<ul class="listview">
							
							<li><a href="/servlet/GoodsCtrl?id=46"><img class="thumb" src="<%=basePath%>/image/8-2.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=46">自拍杆</a></li>
							<li><a href="/servlet/GoodsCtrl?id=27"><img class="thumb" src="<%=basePath%>/image/8-3.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=27">手机支架</a></li>
						</ul>
					</div>
				</div>
			</td>
		</tr>


		<tr>
			<td>
				<div class="box">
					<div class="title">
						箱包 服饰 鞋 眼镜 &nbsp; &nbsp; &nbsp; &nbsp;〉
						<ul class="listview">
							
							<li><a href="/servlet/GoodsCtrl?id=9"><img class="thumb" src="<%=basePath%>/image/9-2.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=9">90分旅行箱</a></li>
							
							<li><a href="/servlet/GoodsCtrl?id=1"><img class="thumb" src="<%=basePath%>/image/9-5.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=1">TS尼龙偏光太阳镜</a></li>
						</ul>
					</div>
				</div>
			</td>
		</tr>


		<tr>
			<td>
				<div class="box">
					<div class="title">
						米兔 生活 周边 &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;〉
						<ul class="listview">
							<li><a href="/servlet/GoodsCtrl?id=28"><img class="thumb" src="<%=basePath%>/image/10-4.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=28">毛巾/浴巾</a></li>
							<li><a href="/servlet/GoodsCtrl?id=8"><img class="thumb" src="<%=basePath%>/image/10-5.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=8">8H乳胶床品</a></li>
								
								
							<li><a href="/servlet/GoodsCtrl?id=13"><img class="thumb" src="<%=basePath%>/image/4-13.jpg"></a><a
								class="text" href="/servlet/GoodsCtrl?id=13">九号平衡车</a></li>
						</ul>
					</div>
				</div>
			</td>
		</tr>
	</table>



 <script type="text/javascript">
        /* 知识点：        */
        /*       this用法 */
        /*       DOM事件 */
        /*       定时器 */
        window.onload = function () {
            var container = document.getElementById('container');
            var list = document.getElementById('list');
            var buttons = document.getElementById('buttons').getElementsByTagName('span');
            var prev = document.getElementById('prev');
            var next = document.getElementById('next');
            var index = 1;
            var timer;
            function animate(offset) {
                //获取的是style.left，是相对左边获取距离，所以第一张图后style.left都为负值，
                //且style.left获取的是字符串，需要用parseInt()取整转化为数字。
                var newLeft = parseInt(list.style.left) + offset;
                list.style.left = newLeft + 'px';
                //无限滚动判断
                if (newLeft > -1226) {
                    list.style.left = -6130 + 'px';
                }
                if (newLeft < -6130) {
                    list.style.left = -1226 + 'px';
                }
            }
            function play() {
                //重复执行的定时器
                timer = setInterval(function () {
                    next.onclick();
                }, 2000)
            }
            function stop() {
                clearInterval(timer);
            }
            function buttonsShow() {
                //将之前的小圆点的样式清除
                for (var i = 0; i < buttons.length; i++) {
                    if (buttons[i].className == "on") {
                        buttons[i].className = "";
                    }
                }
                //数组从0开始，故index需要-1
                buttons[index - 1].className = "on";
            }
            prev.onclick = function () {
                index -= 1;
                if (index < 1) {
                    index = 5
                }
                buttonsShow();
                animate(1226);
            };
            next.onclick = function () {
                //由于上边定时器的作用，index会一直递增下去，我们只有5个小圆点，所以需要做出判断
                index += 1;
                if (index > 5) {
                    index = 1
                }
                animate(-1226);
                buttonsShow();
            };
            for (var i = 0; i < buttons.length; i++) {
                (function (i) {
                    buttons[i].onclick = function () {
                        /*  这里获得鼠标移动到小圆点的位置，用this把index绑定到对象buttons[i]上，去谷歌this的用法  */
                        /*  由于这里的index是自定义属性，需要用到getAttribute()这个DOM2级方法，去获取自定义index的属性*/
                        var clickIndex = parseInt(this.getAttribute('index'));
                        var offset = 1226 * (index - clickIndex); //这个index是当前图片停留时的index
                        animate(offset);
                        index = clickIndex; //存放鼠标点击后的位置，用于小圆点的正常显示
                        buttonsShow();
                    }
                })(i)
            }
            container.onmouseover = stop;
            container.onmouseout = play;
            play();
        }
    </script>

<div id="container">
    <div id="list" style="left: -1226px;">
        <img src="<%=basePath%>/image/5.jpg" alt="1"/>
        <img src="<%=basePath%>/image/1.jpg" alt="1"/>
        <img src="<%=basePath%>/image/2.jpg" alt="2"/>
        <img src="<%=basePath%>/image/3.jpg" alt="3"/>
        <img src="<%=basePath%>/image/4.jpg" alt="4"/>
        <img src="<%=basePath%>/image/5.jpg" alt="5"/>
        <img src="<%=basePath%>/image/1.jpg" alt="5"/>
        
    </div>
    <div id="buttons">
        <span index="1" class="on"></span>
        <span index="2"></span>
        <span index="3"></span>
        <span index="4"></span>
        <span index="5"></span>
    </div>
    <a href="javascript:;" id="prev" class="arrow">&lt;</a>
    <a href="javascript:;" id="next" class="arrow">&gt;</a>
</div>


</div>
<!-- 轮播图下方菜单 -->
<div style="width:1240px;height:170px;left: 50%;
	margin-left: -621px;margin-top:20px;
	position: absolute;">
<a href=""><img style="width:300px;height:170px;" src="<%=basePath%>/image/0001.jpg"/></a>
<a href=""><img style="width:300px;height:170px;" src="<%=basePath%>/image/0002.jpg"/></a>
<a href=""><img style="width:300px;height:170px;" src="<%=basePath%>/image/0003.jpg"/></a>
<a href=""><img style="width:300px;height:170px;" src="<%=basePath%>/image/0004.jpg"/></a>








</div>
</body>
<script language="JavaScript" src="changecolor.js"></script>
</html>