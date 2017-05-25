<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
        <title>星星打分</title>
        
        <style type="text/css">
        .shop-rating {
    height: 25px;
    overflow: hidden;
    zoom: 1;
    padding: 2px 0px;
    position: relative;
    z-index: 999;
}

.shop-rating span {
    height: 23px;
    display: block;
    line-height: 23px;
    float: left;
}

.shop-rating span.title {
    width: 125px;
    text-align: right;
    margin-right: 5px;
}

.shop-rating ul {
    float: left;
        margin:0;padding:0
}

.shop-rating .result {
    margin-left: 20px;
    padding-top: 2px;
}

.shop-rating .result span {
        color: #ff6d02;
}
.shop-rating .result em {
    color: #f60;
    font-family: arial;
    font-weight: bold;
}
.shop-rating .result strong {
        color: #666666;
        font-weight: normal;
}
.rating-level,
.rating-level a {
    background: url(http://a.tbcdn.cn/app/rc/img/star_v2.png) no-repeat scroll 1000px 1000px;
}
.rating-level {
    background-position: 0px 0px;
    width: 120px;
    height: 23px;
    position: relative;
    z-index: 1000;
}
.rating-level li {
    display: inline;
}

.rating-level a {
    line-height: 23px;
    height: 23px;
    position: absolute;
    top: 0px;
    left: 0px;
    text-indent: -999em;
    *zoom: 1;
    outline: none;
}


.rating-level a.one-star {
    width: 20%;
    z-index: 6;
}

.rating-level a.two-stars {
width: 40%;
z-index: 5;
}

.rating-level a.three-stars {
    width: 60%;
    z-index: 4;
}

.rating-level a.four-stars {
    width: 80%;
    z-index: 3;
}

.rating-level a.five-stars {
    width: 100%;
    z-index: 2;
}

.rating-level .current-rating,.rating-level a:hover{background-position:0 -28px;}
.rating-level a.one-star:hover,.rating-level a.two-stars:hover,.rating-level a.one-star.current-rating,.rating-level a.two-stars.current-rating{background-position:0 -116px;}
.rating-level .three-stars .current-rating,.rating-level .four-stars .current-rating,.rating-level .five-stars .current-rating{background-position:0 -28px;}
        </style>

    </head>
    <body>
        <div class="shop-rating">
        <span class="title"></span>
        <ul class="rating-level" id="stars2">
                <li><a class="one-star"  href="">1</a></li>
                <li><a class="two-stars"  href="#">2</a></li>
                <li><a class="three-stars"  href="#">3</a></li>
                <li><a class="four-stars"  href="#">4</a></li>
                <li><a class="five-stars" href="#">5</a></li>
        </ul>
        <span class="result" id="stars2-tips"></span>
        <input type="hidden" id="stars2-input" name="b" value="" size="2" />
		</div>
    </body>
</html>