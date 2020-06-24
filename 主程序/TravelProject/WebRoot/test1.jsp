<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test1.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
  <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/mynav.css">
  </head>
  
  <body>
  <jsp:include page="header.jsp"></jsp:include>
  <div class="qisi">
    <nav class="navbar navbar-expand-sm  bg-success navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="#">WeTour</a>

  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="#">首页</a>
    </li>
    

    <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        旅游路线
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="#">一日游</a>
        <a class="dropdown-item" href="#">主题游</a>
        <a class="dropdown-item" href="#">小假期</a>
      </div>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">景点介绍</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">特产推介</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">关于我们</a>
    </li>
  </ul>
</nav>
</div>
  


  </body>
</html>
