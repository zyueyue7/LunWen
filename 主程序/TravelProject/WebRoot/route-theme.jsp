<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'route_theme.jsp' starting page</title>
    
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
  		* {
  			margin: 0;
  			padding: 0;
  		}
  		/*导航栏的样式 开始啦*/
		 .navbar{
		 	width: 100%;
		 	height: 75px;
			padding: 0px 125px;
			margin-top: 0px;
			position: absolute;
			top: 0;
		}
		.navbar-nav {
			 margin-left: 488px; 
		}
		.navbar-nav li {
			margin-left: 20px;
		}
		.navbar-brand {
			/* margin-left: 20px; */
			font-size: 30px;
			font-weight: 700;
		}
		.qisi {
			/* background-color: green; */
			height: 75px;
			position: relative;
		} 
		/*导航栏的样式 结束啦*/
		
  		.jumbotron {
  			width: 1100px;
  			margin: 0 auto;
  			text-indent: 2em;
  		}
  		.jumbotron p {
  			margin-top: 25px;
  		}
  		.landscape {
  			width: 1100px;
  			height: 700px;
  			margin: 0 auto;
  			
  		}
  		.landscape-left {
  			width: 500px;
  			height: 700px;
  			/* background-color: pnik; */
  			background-color: rgba(0,255,0,0.3);
  			float: left;
  			position: relative;
  		}
  		.landscape-right {
  			width: 600px;
  			height: 700px;
  			/* background-color: green; */
  			background-color: rgba(0,255,0,0.3);
  			float: right;
  			position: relative;
  		}
  		.left-first {
  			position: absolute;
  			top: 139px;
  			left: 50px;
  			font-size: 14px;
  		}
  		.left-first img {
  			margin-bottom: 10px;
  			-webkit-transition:1s ease;
			-moz-transition:1s ease;
  		}
  		.left-first:hover img{
			-webkit-transform:rotatey(360deg);
			-moz-transform:rotatey(360deg);
		}
  		.right-first {
  			position: absolute;
  			top: 0px;
  			right: 80px;
  			font-size: 14px;
  		}
  		.right-first img {
  			margin-bottom: 10px;
  			-webkit-transition:1s ease;
			-moz-transition:1s ease;
  		}
  		.right-first:hover img{
			-webkit-transform:rotatey(360deg);
			-moz-transform:rotatey(360deg);
		}
  		.right-second {
  			position: absolute;
  			top: 360px;
  			right: 95px;
  			font-size: 14px;
  		}
  		.right-second img {
  			margin-bottom: 10px;
  			-webkit-transition:1s ease;
			-moz-transition:1s ease;
  		}
  		.right-second:hover img{
			-webkit-transform:rotatey(360deg);
			-moz-transform:rotatey(360deg);
		}
  		strong {
  			font-size: 48px;
  			font-weight: 400;
  			color: gray;
  		}
  		
  		.temple {
  			width: 1100px;
  			margin: 20px auto 0;
  			overflow: hidden;
  			background-color: rgba(0,255,0,0.3);
  		}
  		.temple-title {
  			width: 50px;
  			height: 240px;
  			float: left;
  			margin-right: 54px; 
  		}
  		.temple-first{
  			float: left;
  			width: 290px;
  			/* margin-left: 54px; */
  		}
  		.temple-second{
	  		float: left;
	  		margin: 0 60px;
	  		width: 290px;
  		}
  		.temple-third{
  			float: left; 
  			width: 290px; 		
  		}
  		.card-body { 		
  			background-color: rgba(0,255,0,0.3);
  		}
  		
  		.play {
  			width: 1100px;
  			height: 300px;
  			margin: 20px auto 0;
  			background-color: rgba(0,255,0,0.3);
  		}
  		.play-first {
  			float: left;
  			width: 220px; 
  		}
  		.play-second {
  			float: left;
  			margin:0 39px;
  			width: 220px;
  		}
  		.play-third {
  			float: left;
  			marrgin-right: 38px;
  			width: 220px;
  		}
  		.play-forth {
  			float: right;
  			width: 220px;
  		}
  		.play h5 {
  			margin-top: 15px;
  		}
  		p {
  			margin-bottom: 8px;
  			font-size: 14px;
  		}
  	</style>
  </head>
  
  <body>
   <jsp:include page="header.jsp"></jsp:include> 
	  <!-- 导航栏开始啦 -->
  	<div class="qisi"> 
  	 <nav class="navbar navbar-expand-sm  bg-success navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="index.jsp">WeTour</a>

  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="index.jsp">首页</a>
    </li>
    

    <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        旅游路线
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="route-day.jsp">一日游</a>
        <a class="dropdown-item" href="route-theme.jsp">主题游</a>
        <a class="dropdown-item" href="RouteWeekServlet">小假期</a>
      </div>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="SceneryServlet">景点介绍</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="queryAllAgencyServlet?action=Q">旅行社</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="about.jsp">关于我们</a>
    </li>
  </ul>
</nav>
 </div> 
  	<!-- 导航栏 结束啦 -->
  	
 	 <!--  巨幕 开始啦 -->
  <!--   <div class="jumbotron" >
	  <h1>We Tour</h1>
	  <p>​不同的心情就应该享受不同的风景，不同时间就应该浏览不同的胜地，对的时间里做对的事情</p>
	</div> -->
	<!--  巨幕 结束啦  -->
	
	<!--  山水怡情 开始啦 -->
	<div class="landscape">
		<div class="landscape-left">
			<div><strong>怡情山水</strong></div>
			<div class="left-first">
				<h5>神潭大峡谷</h5>
				<img src="images/route/st5theme.jpg" class="rounded-circle"/>
				<p>路线：永济市--市府西街--西厢路--中山西街--临风线--神探大峡谷。</p>
				<p>价格：80</p>
			</div>
		</div>
		<div class="landscape-right">	
			<div class="right-first">
				<h5>五老峰</h5>
				<img src="images/route/wlf3theme.jpg" class="rounded-circle"/>
				<p>路线：永济市--市府西街--西厢路--中山西街--临风线--终点。</p>
				<p>价格：成人：85；学生：40 </p>
			</div>
			<div class="right-second">
				<h5>雪花山</h5>
				<img src="images/route/xhstheme.jpg" class="rounded-circle"/>
				<p>路线：永济东(临晋)出口--永济舜都大道--永济中山东街--关铝大道--雪花山风景区</p>
				<p>价格：60</p>
			</div>
		</div>
	</div>
	<!--  山水怡情 结束啦 -->
	
	<!--  寻根祭祖 开始啦 -->
	<div class="temple">
		<div class="temple-title">
			<strong>寻根祭祖</strong>
		</div>
		<div class="temple-first">
			<div class="card">			
			    <img class="card-img-top" src="images/route/sdltheme.png" alt="">
			    <div class="card-body">
				    <h5 class="card-title">舜帝陵</h5>
				    <p class="card-text">路线：市区乘坐16、33 路公交车</p>
				    <p>价格：40</p>
			    </div>
			</div>
		</div>
		<div class="temple-second">
			<div class="card">			
			    <img class="card-img-top" src="images/route/htctheme.png" alt="">
			    <div class="card-body">
				    <h5 class="card-title">后土祠</h5>
				    <p class="card-text">路线：万荣汽车西站乘车即可</p>
				    <p>价格：20</p>
			    </div>
			</div>
		</div>
		<div class="temple-third">
			<div class="card">			
			    <img class="card-img-top" src="images/route/pjstheme.png" alt="">
			    <div class="card-body">
				    <h5 class="card-title">普救寺</h5>
				    <p class="card-text">路线：永济火车站乘座2路、3路公交车</p>
				    <p>价格：旺季：60 淡季：50</p>
			    </div>
			</div>
		</div>
	</div>
	<!--  寻根祭祖 结束啦 -->
	
	<!-- 挥洒热情 开始啦 -->
	<div class="play">
		<div class="temple-title">
			<strong>挥洒热情</strong>
		</div>
		<div class="play-first">
			
			<img alt="" src="images/route/fctheme.png" >		
			<h5>凤城乐园</h5>
			<p>路线：3、33路公交车都可到达</p>
			<p>价格：121</p>
		</div>
		<div class="play-second">
			<img alt="" src="images/route/fhtheme.png">
			<h5>凤凰欢乐谷</h5>
			<p>路线：运城市—人民南路—解放南路—银湖东街—006乡道—终点。</p>
			<p>价格：98</p>
		</div>
		<div class="play-third">
			<img alt="" src="images/route/mttheme.png">
			<h5>美天游乐园</h5>
			<p>路线：88路公交车站终点东花园下</p>
			<p>价格：55</p>
		</div>
		<div class="play-forth">
			<img alt="" src="images/route/fbtheme.png">
			<h5>热带风暴水上乐园</h5>
			<p>路线：市府街--解放南路--红旗东街--终点</p>
			<p>价格：58</p>
		</div>		
	</div>
	<!-- 挥洒热情 结束啦 -->	
	<jsp:include page="footer.jsp"></jsp:include> 
  </body>
</html>
