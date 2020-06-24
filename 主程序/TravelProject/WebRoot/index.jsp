<%@page import="org.travel.entity.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	
	
	<!-- bootstrap 样式 -->
	
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<!-- <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css"> -->
  	<script src="js/jquery-1.7.2.js"></script>
  	<!-- 	<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script> -->
  	<script src="js/popper.js"></script>
 	<!-- <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script> -->
 	<script src="css/bootstrap.min.js"></script>
  	<!-- <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script> -->

	<!-- index的样式 -->
	<link rel="stylesheet" type="text/css" href="css/style1.css">
	
	<style type="text/css">
		/*导航栏的样式 开始啦*/
		 .qisi {
			/* background-color: red;  */
			height: 75px;
			position: relative;
		} 
		.qisi .navbar{
		 	width: 100%;
		 	height: 75px;
			padding: 0px 125px;
			margin-top: 0px;
			position: absolute;
			top: 0;
		}
		.qisi .navbar-nav {
			 margin-left: 488px; 
		}
		.qisi .navbar-nav li {
			margin-left: 20px;
		}
		.qisi .navbar-brand {
			/* margin-left: 20px; */
			font-size: 30px;
			font-weight: 700;
		}
		
		/*导航栏的样式 结束啦*/
		
		/*header的样式 开始啦*/
		* {
			margin:0px;
			padding:0px;
		}
		li {
			list-style:none;
		}
		
		.header {
			height:25px;
			background-color:#f4f4f4;
			font:12px "微软雅黑";
		}
		.inner {
			width:1100px;
			height:25px;
			
			margin:0 auto;
			line-height:25px;		
		}
		.slogan {
			float:left;
			font:18px cursive,"微软雅黑" ;
			line-height:25px;
		}
		.nav {
			float:right;
			
		}
		.nav ul {
			overflow:hidden;
		}
		.nav li {
			float:left;
			margin:0 20px;
		}
		.nav li a {
			color:#333;
			text-decoration:none;
		}
		/*header的样式 结束啦*/
	</style>

  </head>
  
  <body style="background-color: #fafafa" >
  
 <%--  <%
  	String username = ((User)session.getAttribute("user")).getUname();
  	if(username != null){
  %>
	<div class="header">
		<div class="inner">
			<div class="slogan">
				<span>让旅行更幸福</span>
			</div>
			<div class="nav">
				<ul>
					<li><a href="login.jsp">欢迎：<%=username %></a>
					</li>
					<li><a href="register.jsp">免费注册</a>
					</li>
					<li><a href="#">游客留言</a>
					</li>
				</ul>
			</div>
		</div>
	</div>

	<% }else{%>
	
  		<jsp:include page="header.jsp"></jsp:include>  
  	
  	<%} %> --%>
  
   <jsp:include page="header.jsp"></jsp:include>  
  
   
	
	<!-- 导航栏开始啦 -->
	<div class="qisi">
		<nav class="navbar navbar-expand-sm  bg-success navbar-dark"> <!-- Brand -->
		<a class="navbar-brand" href="index.jsp">WeTour</a> <!-- Links -->
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="index.jsp">首页</a></li>


			<!--  Dropdown -->
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbardrop"
				data-toggle="dropdown"> 旅游路线 </a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="route-day.jsp">一日游</a> 
					<a class="dropdown-item" href="route-theme.jsp">主题游</a> 
					<a class="dropdown-item" href="RouteWeekServlet">小假期</a>
				</div></li>
			<li class="nav-item"><a class="nav-link" href="SceneryServlet">景点介绍</a></li>
			<li class="nav-item"><a class="nav-link" href="queryAllAgencyServlet?action=Q">旅行社</a></li>
			<li class="nav-item"><a class="nav-link" href="about.jsp">关于我们</a></li>
		</ul>
		</nav>
	</div>
	<!-- 导航栏 结束啦 -->
	
	
	<!-- banner star -->
	<!-- <div class="banner"></div> -->
	
	 <div id="ban" class=" banner carousel slide" data-ride="carousel">
	 <!--  指示符 -->
	  <ul class="carousel-indicators">
	    <li data-target="#demo" data-slide-to="0" class="active"></li>
	    <li data-target="#demo" data-slide-to="1"></li>
	    <li data-target="#demo" data-slide-to="2"></li>
	  </ul>
 
	<!--   轮播图片 -->
	  <div class="carousel-inner">
	    <div class="carousel-item active">
	      <img src="images/index/banner3.png">
	      <div class="carousel-caption">
	        <h3>神潭大峡谷</h3>
	        <p>神潭大峡谷、碧水蓝天、绿树红花、如诗如画。</p>
	      </div>
	    </div>
	    <div class="carousel-item">
	      <img src="images/index/banner4.png">
	      <div class="carousel-caption">
	        <h3>解州关帝庙</h3>
	        <p>解州关帝庙为武庙之祖、北靠盐池、面对中条。</p>
	      </div>
	    </div>
	    <div class="carousel-item">
	      <img src="images/index/banner2.jpg">
	      <div class="carousel-caption">
	        <h3>圣天湖</h3>
	        <p>圣天湖被誉为中原黄河湿地的明珠。</p>
	      </div>
	    </div>
	  </div>
	 
	<!--   左右切换按钮 -->
	  <a class="carousel-control-prev" href="#ban" data-slide="prev">
	    <span class="carousel-control-prev-icon"></span>
	  </a>
	  <a class="carousel-control-next" href="#ban" data-slide="next">
	    <span class="carousel-control-next-icon"></span>
	  </a>
	</div>
	
	<!-- banner end -->
	
	<!-- 我们的服务 开始啦 -->
	<div class="service">		
		<div class="service-hd">
			<h3>
				<img src="images/index/service.png">
			</h3>
			<p>wetour畅游，是运城市的一个公益性网站。完整的旅游路线，贴心的服务，专业的讲解，带你畅游运城，玩转运城...</p>
		</div>
		<div class="service-bd">
			<ul>
				<li>
					<img src="images/index/yry.png" >
					<h3>一日游</h3>
					 <p>生活在于珍惜点点滴滴，wetour一日游，让您享受生活的乐趣。为您推介最省钱，最完整的旅游方案！</p> 
					<a href="route-day.jsp">了解更多</a>
				</li>
				<li class="zhuti">
					<img src="images/index/zty.png">
					<h3>主题游</h3>
					<p>生活就是要快乐，畅游就是您的乐宝，不要在忧虑去哪玩了，畅游倾心为您打造最佳旅游方案，快来看看吧！</p>
					<a href="route-theme.jsp">了解更多</a>					
				</li>
				<li class="yingxiao">
					<img src="images/index/yzy.png">
					<h3>小假期</h3>
					<p>小假期没计划，来畅游，带您领略大美运城的风光。wetour全权负责，出行，路线，一一为您安排！</p>
					<a href="RouteWeekServlet">了解更多</a>
				</li>
				
			</ul>
		</div>
	</div>	
	<!-- 我们的服务 结束啦 -->

	
	<!-- 运城风光 结束啦 -->
	<div class="scenery">
		<div class="service-hd">
			<h3>
				<img src="images/index/scenery.png">
			</h3>			
		</div>	
		<div class="scenery-bd clearfix">
			<ul>
				<li>
					<img src="images/index/ylg.png">
					<div class="text">永乐宫的壁画满布在四座大殿内</div>
					<a href="SceneryServlet"><div class="mask"></div></a>
				</li>
				<li class="scenery-bd-mid">
					<img src="images/index/gdm.png">
					<div class="text">解州关帝庙被誉为中国传统道德文化的神圣殿堂</div>
					<a href="SceneryServlet"><div class="mask"></div></a>
				</li>
				<li>
					<img src="images/index/st.png">
					<div class="text">神潭大峡谷，碧水蓝天、绿树红花、如诗如画。</div>
					<a href="SceneryServlet"><div class="mask"></div></a>
				</li>			
			</ul>
			<!-- <a href="#" class="left"><</a>
			<a href="#" class="right">></a> -->
		</div>			
	</div>	
	<!-- 运城风光 结束啦 -->
	
	
	<!-- 美食小吃 开始啦 -->
	<div class="food" id="ycfood_ycfood">
		<div class="service-hd">
			<h3>
				<img src="images/index/food.png">
			</h3>			
		</div>
		
	<jsp:include page="test.jsp"></jsp:include>
		
	</div>
	
	<!-- 美食小吃 结束啦 -->
	<jsp:include page="footer.jsp"></jsp:include> 
  </body>
</html>
