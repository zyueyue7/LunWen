<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>"></base>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
    <li><a href="main/comment.jsp">评论信息</a></li>
    </ul>
    </div>
     <div class="formtitle"><span>评论信息</span></div>
     <div>
    <form action="UserServlet" method="post" name="comment">
    <input type="hidden" name="action" value="comment"></input>
    <table cellpadding="10">
        <tr>
             <th>评论编号</th>
             <th>博客编号</th>
             <th>评论内容</th> 
             <th>状态</th>  
        </tr>
        <c:forEach items="${listcomment}" var="listcomment"  step="1" varStatus="stustatus">
        <tr>
            <c:if test="${listcomment.status!=0}">
			 <td>${listcomment.id}</td>
             <td> ${listcomment.blogid} </td>
             <td> ${listcomment.content} </td>
             <td> ${listcomment.status}</td>
             </c:if>
        </tr>
       </c:forEach>
    
       </table>
       </form>
    </div>
</body>
</html>