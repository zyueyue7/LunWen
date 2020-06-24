<%@page import="org.travel.entity.Note"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'note_man_indexR.jsp' starting page</title>
    
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
	
		img {
			width: 100px;
			height: 50px;
		}
		
		table{
			text-align: center;
			width: 800px;
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
			<li><a href="#">留言管理</a>
			</li>
			<li><a href="#">回复留言</a>
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
	  			out.print("回复留言成功！");
	  		} else {
	  			out.print("回复留言成功！");
	  		}
	  	}
	%>
    <table border="1px" cellspacing=0 cellpadding=0>
    	<tr>
    		<th>序号</th>
    		<th>留言主题</th>
    		<th>留言内容</th>
    		<th class="operation">操作</th>
    	</tr>
    	<%
    		List<Note> notes =(List<Note>)request.getAttribute("notes");
    		for(Note note:notes) {
    		
    		
    	 %>
    	<tr>
    		<td><%=note.getId() %></td>
    		<td><%=note.getNoteTitle() %></td>
    		<td><%=note.getNoteContent() %></td>
    		<td><a href="NoteQueryByIdSevlet?id=<%=note.getId() %>">回复</a></td>
    	</tr>
    	<%} %>
    	</table>
    	</div>
  </body>
</html>
