<%@ page language="java" contentType="text/html; charset=UTF-8"
 import="java.util.*"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>"></base>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>查看博客信息</title>
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
    <li><a href="main/blogprofile.jsp">博客信息管理</a></li>
    </ul>
    </div>
  
    <div class="formbody">
    <div class="formtitle"><span>博客信息管理</span></div> 
    </div>
    <div>
    <form action="UserServlet" method="post" name="blogprofile">
     <input type="hidden" name="action" value="blogprofile"></input>
    <table cellpadding="10">
        <tr>
             <th>编号</th>
             <th>标题</th>
             <th>发布日期</th>
             <th>博客类型ID</th>
             <th></th>
        </tr>
        
        <c:forEach items="${list}" var="blog" begin="0" end="10" step="1" varStatus="stustatus">
        <tr>
			 <td>${blog.id}</td>
             <td> ${blog.title} </td>
             <td> ${blog.releaseDate} </td>
             <td>${blog.typeid}</td>
             <td><a href="UserServlet?action=blogdelete&id=${blog.id}">删除</td>
        </tr>
       </c:forEach>
    
       </table>
       </form>
    </div>
    
</body>
</html>