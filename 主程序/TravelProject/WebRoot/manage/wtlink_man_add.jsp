<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8"
pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'wtlink_man_add.jsp' starting page</title>
    
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
       <div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">链接管理</a>
			</li>
			<li><a href="#">增加链接</a>
			</li>
		</ul>
	</div>
	
		<div class="formbody">

		<div class="formtitle">
			<span>基本信息</span>
		</div>
   	<form  action="wtlinkOpServlet" method="post">
   		<ul class="forminfo">
			<li>
				<label>链接名称</label>
				<input name="linkname" type="text" class="dfinput"  accept-charset="utf-8"/>				
			</li>
			<li>
				<label>链接地址</label>
				<input name="linkaddress" type="text" class="dfinput" />
			</li>
			<li>
				<label>&nbsp;</label>
				<input  type="submit"  value="新增" class="but" />
			</li>
			<li>
				<input type="hidden" name="action" value="A"/>			
			</li>			
		</ul> 	
   	</form>
    
    
    
  </body>
</html>
