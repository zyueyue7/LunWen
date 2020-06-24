<%@page import="org.travel.entity.agency"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'agency.jsp' starting page</title>
    
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
  	
  	<style type="text/css">
  		/*导航栏的样式 开始啦*/
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
  		/* 巨幕的样式开始啦 */
  		.veil {
  			width: 1100px;
  			margin: 0 auto;
  			height: 400px; 	
		
  		}
  		.veil img {
  			height: 400px;
  			width: 750px;
  			float: left;
  		}
  		.music {
  			float: right;
  			background-image: url(images/agency/music.jpg);
  		}
  		/* 巨幕的样式结束啦 */
  		/* 引导的样式开始啦 */
  		.guide {
  			width: 1100px;
/*   			background-color: #F7F7F7; */
  			margin: 10px auto 0;
  			overflow: hidden; 			
  		}
  		.guide_right  { 			
  			float: left;
  			margin-left: 60px;
  			font-size: 30px;
  			line-height: 100px;
  			font-family : cursive;
  		} 		
  		.guide_left{ 		
  			float: left;
  		}  		
  		.guide_left img {
  			height: 100px;
  		}
  		/* 引导的样式结束了 */
  		/* 内容的样式开始啦 */
  		.content{
  			width: 1100px;
  			margin: 0 auto;
  		}
  		.card {
  			width: 350px;
  			/* height: 200px; */ 
  			margin-left: 16px;
  			float: left;  /* 为什么是向右票	 */
  			margin-bottom: 10px;		
  		}
  		span {
  			font-size: 14px;
  		} 		

  		.card-body img {
  			width: 200px;
  			height: 85px;
  		}
  		.clear {
  			clear: both;
  		}
  		/* 内容的样式结束啦 */
  	</style>

  </head>
  
  <body >
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
  	
  	<!-- 巨幕 开始啦 -->
	<div class="veil">
		<img alt="" src="images/agency/jumu.png">


		<div class="music">
		<center >
			<table  bgcolor=#ECF9FF width=345 height=400
				style="color:#fff">
				<tr>
					<td><center>
							<audio  autoplay="autoplay"  src="music/bgsound.mp3" controls="controls" loop="loop"
								>亲 您的浏览器不支持html5的audio标签</audio>
						</center>
					</td>
				</tr>
			</table>
		</center>
		</div>
	</div>
	<!-- 巨幕 结束啦 -->
	
	<!-- 引导 开始啦 -->
	<div class="guide">
		
		<div class="guide_left">
			<img src="images/agency/tu.gif"/>
		</div>
		<div class="guide_right">
			让我们一起去旅行吧！！！
		</div>
	</div>
	<!-- 引导 结束啦 -->
	<div class="content">
		<%
			List<agency> agencies = (List<agency>) request.getAttribute("agencies");
			for (agency agency : agencies) {
		%>
		<div class="card">
			<div class="card-header"><%=agency.getAgencyname()%></div>
			<div class="card-body">
				<img src="<%=agency.getAgencyimg()%>" />
			</div>
			<div class="card-footer">
				<span>地址：<%=agency.getAgencyaddress()%></span><br> <span>电话：<%=agency.getAgencyphone()%></span>
			</div>
		</div>
		<%
			}
		%>
		<div class="clear"></div>
	</div>
	<!-- 内容 结束啦 -->
	
		<jsp:include page="footer.jsp"></jsp:include> 
</body>


</html>
