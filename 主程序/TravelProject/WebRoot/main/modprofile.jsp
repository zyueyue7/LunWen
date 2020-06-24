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
<title>修改个人信息</title>
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
    <li><a href="main/modprofile.jsp">修改个人信息</a></li>
    </ul>
    </div>
     <div class="formtitle"><span>修改信息</span></div>
     
    <div>
    <form action="UserServlet" method="post">
    <input type="hidden" name="action" value="modprofile"></input>
    <input name="pwd" type="hidden" value=""/>
    <table align="center">
        <tr>  
         <input name="uid" type="hidden"  value="" display="display" readonly="true"/> 
        </tr>
        <tr>     
        <td>用户名：</td>
        <td><input name="uname" type="text" value=""/></td>
        </tr>
         <tr>
        <td>昵称：</td>
        <td><input name="nickname" type="text" value=""/></td>
        </tr>
         <tr>
        <td>性别：</td>
        <td><input name="sex" type="text" value=""/></td>
        </tr>
         <tr>
        <td>年龄：</td>
        <td><input name="age" type="text" value="${user.age}"/></td>
        </tr>
        
    </table>
    <input type="submit" value="确认修改" style="margin-left:180px;margin-top:16px;background-color:#D3D3D3;height:20px;"></input>
    </form> 
    </div>
     
</body>