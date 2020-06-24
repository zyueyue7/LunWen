<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'about.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
		<!-- bootstrap 样式 -->
	
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<!-- <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css"> -->
  	<script src="js/jquery-1.7.2.js"></script>
  	<!-- 	<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script> -->
  	<script src="js/popper.js"></script>
 	<!-- <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script> -->
 	<script src="css/bootstrap.min.js"></script>
  	<!-- <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script> -->
	<style>
		.cont{
			width: 1100px;
  			height: 700px;
  			margin: 0 auto;
  			background-color: rgba(0,255,0,0.3);
  			
		}
		.cont h1 {
			text-align: center;
		}
		.cont p {
			text-indent: 2em;
			font-size: 18px;
		}
	</style>

  </head>
  
  <body>
  	<jsp:include page="header.jsp"></jsp:include>
  	<jsp:include page="nav.jsp"></jsp:include>
  	<div class="cont">
  		<h1>WeTour旅游服务网站</h1>
  		<p>互联网的发展给人们带来便捷的同时也带来了很多麻烦，比如互联网上的信息不实，不准确等，这就使想外出旅游的人们不知道该如何选择旅游景点，这样不仅降低了旅游业的发展，更是降低了人们对这个城市的好感，为解决这个问题开发一个旅游网站，给众多游客一个可靠网站的同时带动运城旅游业的发展。 </p>
<p>一日三餐的追求早已被人们抛出九霄云外，精神上的升华才是当务之急，因此旅游成了丰富人们精神生活当之无愧的不二选择。外出旅游前适当了解景点，做一份详细的旅游计划是最恰当不过了，但目前存在的旅游网站都是大型网站，内容繁多，搜索复杂，且一些大型旅游网站以盈利为目的，使用起来费时费力，该系统则是一个专门针对运城景点的小型旅游网站，界面设计简单，功能划分清晰，易操作，可以快速的获得运城旅游景点的信息，节约很多时间。 </p>
<p>通过上述分析，结合目前生活的现实需求设计了运城旅游服务网站。HTML5搭建网站的前端骨架，JSP技术实现与用户的交互，Java编程语言担任实现功能的角色，MySQL数据库组织和存储旅游网站相关的表，实现了游客登录与注册，游客留言，游客查看旅游路线、查看旅游景点、查看旅行社和了解当地特产，管理员登录，管理员能够更新前端旅游路线，旅游景点、旅行社等功能，通过这样一个网站给游客提供方便的同时带动运城旅游业的发展。 </p>
  		
  	</div> 
    <jsp:include page="footer.jsp"></jsp:include> 
  </body>
</html>
