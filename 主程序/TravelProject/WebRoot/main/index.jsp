<%@ page language="java" contentType="text/html; charset=UTF-8"
    
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>"></base>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<style>
.welinfo {
	width: 480px;
	font-size: 30px;
	margin:30px auto;
}
.welinfo b{
width: 480px;
	font-size: 30px;
	margin:30px auto;
	display: inline-block;
}

</style>

</head>


<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="main/index.jsp">首页</a></li>
    </ul>
    </div>
    
    <div class="welinfo">
    <b>您好，欢迎登录WeTour管理系统</b>
    </div>
  
</body>

</html>

