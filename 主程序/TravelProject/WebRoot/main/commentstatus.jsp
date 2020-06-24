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
<script type="text/javascript">
$(function(){
	$("#btn").click(function(){
		alert("====");
	});
});
</script>
</head>
<body>
<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="main/commentstatus.jsp">评论审核</a></li>
    </ul>
    </div>
     <div class="formtitle"><span>评论审核</span></div>
     <div>
    <form action="UserServlet" method="post" name="commentstatus">
    <input type="hidden" name="action" value="commentstatus"></input>
    <table cellpadding="10">
        <tr>
             <th>评论编号</th>
             <th>博客编号</th>
             <th>评论内容</th> 
             <th>状态</th> 
             <th>审核通过</th> 
        </tr>
        <c:forEach items="${commentstatus}" var="commentstatus"  step="1" varStatus="stustatus">
        <tr>
             <c:if test="${commentstatus.status==0}">
			 <td>${commentstatus.id}</td>
             <td>${commentstatus.blogid} </td>
             <td>${commentstatus.content} </td>
             <td>${commentstatus.status}</td>
             <td><a href="UserServlet?action=commentsuceess&id=${commentstatus.id}">审核通过</td>
             </c:if>
        </tr>
       </c:forEach>
    
       </table>
       </form>
    </div>
</body>
</html>