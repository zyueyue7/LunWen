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
    
    <title>My JSP 'scenery_man_indexU.jsp' starting page</title>
    
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
		.scenery_man img {
			width: 100px;
			height:50px;
		}	
		table{
			text-align: center;
			width: 1130px;
		}
		table th {
			height: 50px;
		}
		table td{
			height: 30px;
		}
		.operation {
			width: 50px;
		}
	</style>
	
  </head>
  
  <body>
      <div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">景点管理</a>
			</li>
			<li><a href="#">更新景点</a>
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
	  		if(error.equals("adderror")) {
	  			out.print("修改景点失败！");
	  		} else if(error.equals("noerror")){
	  			out.print("修改景点成功！");
	  		}//根本没有执行增加
  		}
  		 %>
	    <table border="1px solid red " cellspacing=0 cellpadding=0>
		    <tr>
		    	<th>序号</th>
		    	<th>景点图片</th>
		    	<th>景点名称</th>
		    	<th>景点等级</th>
		    	<th>景点地址</th>
		    	<th>开放时间</th>
		    	<th>景点描述</th>
		    	<th class="operation">操作</th>
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
		    		<td><a href="querySceneryByIdServlet?id=<%=scenery.getId() %>">更新</a></td>
		    	</tr>
		    
		    <% 
		    	}
		     %>
	    </table>
	    </div>
  </body>
</html>
