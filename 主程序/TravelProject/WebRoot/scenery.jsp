<%@page import="javax.swing.plaf.ScrollPaneUI"%>
<%@page import="org.travel.entity.Scenery"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'scenery.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- scenery 样式 -->
	<link rel="stylesheet" type="text/css" href="css/scenery.css">
	
	<!-- bootstrap 样式 -->
	
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<!-- <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css"> -->
  	<script src="js/jquery-1.7.2.js"></script>
  	<!-- 	<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script> -->
  	<script src="js/popper.js"></script>
 	<!-- <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script> -->
 	<script src="css/bootstrap.min.js"></script>
  	<!-- <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script> -->
	
	<!-- <style>
		* {
			margin: 0;
			padding: 0;
		}
		.content{
			width: 1100px;
			margin: 0 auto;
		}
		.spot {
			width: 220px;
			overflow:hidden;			
			margin:7px 1px 7px 42px;
			float:left;
			border:1px solid gray; 	
			border-radius:5px;	
		}
		.spot img {
			width: 220xp;
			height: 140px;
		}
		.spot_title {
			margin: 10px 5px 10px;			
		}
		.spot_describe {			
			width:220px;
			margin-left: 5px;
			font-size: 14px;
		}
		p {
			font-size: 14px;
		}
		
	</style> -->
	
	<style>
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
		.left img {
			width: 220px;
			height: 140px;
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
  	
  <%
  	//获取request域中的数据		    	
	//List<Student> students =(List<Student>)request.getAttribute("students");
	
	List<Scenery> sceneries = (List<Scenery>)request.getAttribute("sceneries");
	int i = 1;
	for(Scenery scenery: sceneries) { 
	 
	%>	
    <div class="spot">
    	<div class="left">
    		<img src="<%=scenery.getScenery_img() %>">
    	</div>
    	<div class="right">
    		<div class="spot_title">
	    		<h5>
	    			<%=scenery.getScenery_name() %>
	    			<span class="badge badge-light "><%=scenery.getScenery_rank() %></span>
	    		</h5>
	    	</div>
	    	<div>
	    		<p>地址：<%=scenery.getScenery_address() %></p>
	    		<p>时间：<%=scenery.getScenery_time() %></p>
	    	</div>
	    	<div class="spot_describe"> 
	    		<a href="#demo_<%=i %>" class="btn btn-primary" data-toggle="collapse">景点介绍</a> 
	    		<!-- <input type="button" value="景点介绍">你等会 -->
	    		<p id="demo_<%=i %>" class="collapse">
	    			<%=scenery.getScenery_desc() %>
	    		</p>
	    		<%i++; %>
	    	</div>
    	</div> 	
    </div> 
  
  <% 
	}
   %>
   <jsp:include page="footer.jsp"></jsp:include> 
  </body>
</html>
