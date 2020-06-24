<%@ page language="java" contentType="text/html; charset=UTF-8"
 import="java.util.*"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>"></base>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>查看个人信息</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="main/profile.jsp">查看个人信息</a></li>
    </ul>
    </div>
     <div class="formtitle"><span>基本信息</span></div>
    <form action="UserServlet" method="post">
    <input type="hidden" name="action" value="profile"></input>
     <input name="uid" type="hidden"  value="" display="display" readonly="true"> 
    <div style="text-align:center">
    <ul>
      <li><label><b>用户名：</b><i>${u.uname}</i></label></li>
      <!--  <li><label><b>密码：</b> <i>${user.uname}</i></label></li>-->
     <li><label><b>昵称：</b><i>${u.nickname}</i></label></li>
     <li><label><b>性别：</b><i>${u.sex}</i></label></li>
     <li><label><b>年龄：</b><i>${u.age}</i></label></li>
    </ul>
    </div>
     <input type="submit" value="刷新"></input>
    </form>
</body>