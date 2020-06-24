<%@ page language="java" contentType="text/html; charset=UTF-8"
 import="java.util.*"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<script language="JavaScript" src="js/jquery.js"></script>
<head>
<base href="<%=basePath%>"></base>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>安全退出</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="main/safe.jsp">安全退出</a></li>
    </ul>
    </div>
    
    
     
     
     
</body>
</html>