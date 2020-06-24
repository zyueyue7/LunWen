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
<style>
table,table tr td,table tr th { border:2px solid #0094ff;text-align:center;height:40px;padding:2px; }
table{margin-left:40px;}
</style>
</head>
<body>

	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="main/profile.jsp">查看个人信息</a></li>
    </ul>
    </div>
     <div class="formtitle"><span>个人信息</span></div>
    <form action="UserServlet" method="post" name="profile">
    <input type="hidden" name="action" value="profile"></input>
     <input name="uid" type="hidden"  value=""> 
    <div style="text-align:center">
    <table>
         <tr><th>用户名</th><td>${u.uname}</td></tr>
         <tr><th>昵称</th><td>${u.nickname}</td></tr>
         <tr><th>性别</th><td>${u.sex}</td></tr>
         <tr><th>年龄</th><td>${u.age}</td></tr>
   </table>
    </div> 
    </form>
</body>
<script language=javascript>
     //setTimeout("document.profile.submit()",1000) 
</script>
</html>