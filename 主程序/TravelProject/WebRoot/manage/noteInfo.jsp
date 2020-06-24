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
    
    <title>My JSP 'noteInfo.jsp' starting page</title>
    
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
    Note note =(Note)request.getAttribute("note");
    
     %>
    <%--  <form action="NoteReplyServlet" method="post">
     	留言序号：<input type="text" name="id" value="<%=note.getId() %>" readonly="readonly"/><br/>
     	留言主题：<input type="text" name="notetitle" value="<%=note.getNoteTitle() %>" readonly="readonly"/><br/>
     	留言内容：<input type="text" name="notecontent" value="<%=note.getNoteContent() %>" readonly="readonly"/><br/>
     	留言回复：<input type="text" name="notereply" value="请回复" /><br/>
     	<input type="submit" value="提交回复" /><br/>	
     </form> --%>
     
     
     
     <form action="NoteReplyServlet" method="post">
		<ul class="forminfo">
			<li>
				<label>留言序号</label>
				<input name="id" type="text" class="dfinput" value="<%=note.getId() %>" readonly="readonly" />				
			</li>
			<li>
				<label>留言主题</label>
				<input name="notetitle" type="text" class="dfinput" value="<%=note.getNoteTitle() %>" readonly="readonly" />
			</li>
			<li>
				<label>留言内容</label>
				<input name="notecontent" type="text" class="dfinput" value="<%=note.getNoteContent() %>" readonly="readonly" />
			</li>
			<li>
				<label>留言回复</label>
				<input name="notereply" type="text" class="dfinput" />
			</li>
			<li>
				<label>&nbsp;</label>
				<input  type="submit"  value="提交" class="but" />
			</li>
		</ul>
	</form>
     
     </div>
  </body>
</html>
