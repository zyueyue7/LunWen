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
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	<style>
		.routeweek_man img {
			width: 100px;
			height: 50px;
		}		
		table{
			text-align: center;
			width: 1150px;
		}
		table th {
			height: 50px;
		}
		table td{
			height: 30px;
		}
		.operation{
			width: 50px;
		}
	</style>
  </head>
  
  <body>
  <div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">路线管理</a>
			</li>
			<li><a href="#">删除路线</a>
			</li>
		</ul>
	</div>
	
		<div class="formbody">

		<div class="formtitle">
			<span>基本信息</span>
		</div>
   <% 
   String error = (String)request.getAttribute("error");
  		if(error!=null) {
	  		if(error.equals("noerror")) {
	  			out.print("删除路线成功！");
	  		} else {
	  			out.print("删除路线失败");
	  		}
	  	}
	%>
    <table border="1px" cellspacing=0 cellpadding=0>
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
		    	<th class="operation">操作</th>
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
		    </tr>
		    
		   <% 
		   }
		     %>
	</table>
	</div>
  </body>
</html>
