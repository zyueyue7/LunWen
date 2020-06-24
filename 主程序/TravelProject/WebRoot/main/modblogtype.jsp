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
<title>查看博客类型</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.js"></script>
<style> 
table,table tr td,table tr th { border:2px solid #0094ff;text-align:center;height:40px;padding:2px; }
table{margin-left:40px;}
</style>
 
</head>
<body>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="main/modblogtype.jsp">修改博客类型</a></li>
    </ul>
    </div>
    <div class="formbody">
    <div class="formtitle"><span>修改博客类型</span></div> 
    </div>
    <table border="1">
      <tr>
      <th>编号 </th> 
      <th>博客类型</th>
      <th>博客序号</th>
      </tr>
      <c:forEach items="${list}" var="blogtype" begin="0" end="10" step="1" varStatus="stustatus">
      <tr>
      <td>${blogtype.id}</td>
      <td>${blogtype.typename}</td>
      <td>${blogtype.orderno }</td>
      <td><a href="UserServlet?action=seeblogtypeone&id=${blogtype.id}">修改</a></td>
      </tr>
      </c:forEach>
     </table>
</body>
</html>