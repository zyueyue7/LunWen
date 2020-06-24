<%@page import="org.travel.entity.RouteWeek"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'routeweek_man_index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <table border="1px">
		    <tr>
		    	<th>路线序号</th>
		    	<th>路线名称</th>
		    	<th>路线图片</th>
		    	<th>路线图片</th>
		    	<th>路线图片</th>
		    	<th>路线图片</th>
		    	<th>路线图片</th>
		    	<th>路线价格</th>		    	
		    	<th>路线描述</th>
		    </tr>
		    <%
		    List<RouteWeek> routeWeeks =(List<RouteWeek>)request.getAttribute("routeWeeks");
		    for(RouteWeek routeWeek: routeWeeks){
		    %>
		    <tr class="routeweek_man">
		    		<td><%=routeWeek.getId() %></td> 
		    		<td><%=routeWeek.getRoutew_name() %></td> 
		    		<td><img src="<%=routeWeek.getRoutew_img1() %>"></td>
		    		<td><img src="<%=routeWeek.getRoutew_img2() %>"></td>
		    		<td><img src="<%=routeWeek.getRoutew_img3() %>"></td>
		    		<td><img src="<%=routeWeek.getRoutew_img4() %>"></td>
		    		<td><img src="<%=routeWeek.getRoutew_img5() %>"></td>
	    			<td><%=routeWeek.getRoutew_price() %></td>
	    			<td><%=routeWeek.getRoutew_route() %></td>		    		
		    		<td><a href="deleteRouteWeekServlet?id=<%=routeWeek.getId() %>">删除</a></td>
		    		<td><a href="queryRouteWeekByIdServlet?id=<%=routeWeek.getId() %>">编辑</a></td>
		    </tr>
		    
		   <% 
		   }
		     %>
	</table>
	<a href="manage/routeweek_man_add.jsp">增加</a><br/>
  </body>
</html>
