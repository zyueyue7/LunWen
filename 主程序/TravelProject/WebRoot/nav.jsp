<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'nav.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
  	<style>
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
  	</style>
  </head>
  
  <body>
	<!-- 导航栏开始啦 -->
	<div class="qisi">
		<nav class="navbar navbar-expand-sm  bg-success navbar-dark"> <!-- Brand -->
		<a class="navbar-brand" href="index.jsp">WeTour</a> <!-- Links -->
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="index.jsp">首页</a>
			</li>


			<!-- Dropdown -->
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbardrop"
				data-toggle="dropdown"> 旅游路线 </a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="route-day.jsp">一日游</a> <a
						class="dropdown-item" href="route-theme.jsp">主题游</a> <a
						class="dropdown-item" href="RouteWeekServlet">小假期</a>
				</div></li>
			<li class="nav-item"><a class="nav-link" href="SceneryServlet">景点介绍</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="queryAllAgencyServlet?action=Q">旅行社</a></li>
			<li class="nav-item"><a class="nav-link" href="about.jsp">关于我们</a>
			</li>
		</ul>
		</nav>
	</div>
	<!-- 导航栏开始啦 -->
</body>
</html>
