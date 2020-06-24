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
    
    <title>My JSP 'sceneryInfo.jsp' starting page</title>
    
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
		.but{
			width: 100px;
			height: 30px;
			border: 1px solid gray;
		}
	</style>
  </head>
  
  <body>
    	<%
   			/* Student student = (Student)request.getAttribute("student"); */
   			Scenery scenery = (Scenery)request.getAttribute("scenery");
   			
   		 %>
   		 <!-- 通过表单展示此景点的信息 -->
   		<%--  <form action="updateSceneryServlet" method="post">
   		 	景点序号：<input type="text" name="id" value="<%=scenery.getId() %>" readonly="readonly"/><br/>
   		 	景点图片：<input type="text" name="scenery_img" value="<%=scenery.getScenery_img() %>" /><br/>
   		            景点名称：<input type="text" name="scenery_name" value="<%=scenery.getScenery_name() %>" /><br/>
   		            景点等级：<input type="text" name="scenery_rank" value="<%=scenery.getScenery_rank() %>" /><br/>
   		            景点地址：<input type="text" name="scenery_address" value="<%=scenery.getScenery_address() %>" /><br/>
   		            开放时间：  <input type="text" name="scenery_time" value="<%=scenery.getScenery_time() %>" /><br/>    
   		            景点描述：<input type="text" name="scenery_desc" value="<%=scenery.getScenery_desc() %>" /><br/>
   		 	<input type="submit" value="修改" />
   		 	<a href="queryAllSceneryServlet?action=U">返回</a>  		 	
   		 </form> --%>
   		 
   		 
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
    
   <form action="updateSceneryServlet" method="post">
		<ul class="forminfo">
			<li>
				<label>景点序号</label>
				<input name="id" type="text" class="dfinput" value="<%=scenery.getId() %>" readonly="readonly" />				
			</li>
			<li>
				<label>景点图片</label>
				<input name="scenery_img" type="text" class="dfinput" value="<%=scenery.getScenery_img() %>" />
			</li>
			<li>
				<label>景点名称</label>
				<input name="scenery_name" type="text" class="dfinput" value="<%=scenery.getScenery_name() %>" />
			</li>
			<li>
				<label>景点等级</label>
				<input name="scenery_rank" type="text" class="dfinput" value="<%=scenery.getScenery_rank() %>" />
			</li>
			<li>
				<label>景点地址</label>
				<input name="scenery_address" type="text" class="dfinput" value="<%=scenery.getScenery_address() %>" />
			</li>
			<li>
				<label>开放时间</label>
				<input name="scenery_time" type="text" class="dfinput" value="<%=scenery.getScenery_time() %>" />
			</li>
			<li>
				<label>景点描述</label>
				<input name="scenery_desc" type="text" class="dfinput" value="<%=scenery.getScenery_desc() %>" />
			</li>
			<li>
				<label>&nbsp;</label>
				<input  type="submit"  value="更新" class="but" />
			</li>
		</ul>
	</form>
	</div>
  </body>
</html>
