<%@page import="org.travel.entity.Scenery"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'scenery_man.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
		.scenery_man img {
			width: 220px;
			height: 140px;
		}
	</style>
  </head>
  
  <body>
    
  		<%
  		 			
  		String error = (String)request.getAttribute("error");
  		if(error!=null) {
	  		if(error.equals("addError")) {
	  			out.print("增加失败！");
	  		} else if(error.equals("noaddError")){
	  			out.print("增加成功！");
	  		}//根本没有执行增加
  		}
  		 %>
	    <table border="1px">
		    <tr>
		    	<th>序号</th>
		    	<th>景点图片</th>
		    	<th>景点名称</th>
		    	<th>景点等级</th>
		    	<th>景点地址</th>
		    	<th>开放时间</th>
		    	<th>景点描述</th>
		    	<th>删除景点</th>
		    	<th>编辑景点</th>
		    </tr>
		    <%
		    	//获取request域中的数据		    			    		
		    	List<Scenery> sceneries = (List<Scenery>)request.getAttribute("sceneries");
	
				for(Scenery scenery: sceneries)	{    			    	
		    %>
		    	<tr class="scenery_man">
		    		<td><%=scenery.getId() %></td> 
		    		<td><img src="<%=scenery.getScenery_img() %>"></td>
		    		<td><%=scenery.getScenery_name() %></td>
		    		<td><%=scenery.getScenery_rank() %></td>
		    		<td><%=scenery.getScenery_address() %></td>
		    		<td><%=scenery.getScenery_time() %></td>
		    		<td><%=scenery.getScenery_desc() %></td>
		    		<td><a href="deleteSceneryServlet?id=<%=scenery.getId() %>">删除</a></td>
		    		<td><a href="querySceneryByIdServlet?id=<%=scenery.getId() %>">编辑</a></td>
		    	</tr>
		    
		    <% 
		    	}
		     %>
	    </table>
	    <a href="manage/scenery_man_add.jsp">增加</a><br/>
	    
  </body>
</html>
