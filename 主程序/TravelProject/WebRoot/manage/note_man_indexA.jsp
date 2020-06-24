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
    
    <title>My JSP 'note_man_indexA.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script language="JavaScript" src="js/jquery.js"></script>
	<script>
	$(function(){
	$("#agree").click(function(){
		alert("a");		
		 var id = document.getElementById("agreeid").value; 
		alert(input.id); 
		var url = "NoteManegeServlet?action=C";
		url += "&id=" +id;
		/* window.top.location.href="LoginServlet?action=O"; */
		window.top.location.href=url;		
		}) 
	
	})	
	
	</script>
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
			<li><a href="#">审核留言</a>
			</li>
		</ul>
	</div>
	<div class="formbody">

		<div class="formtitle">
			<span>基本信息</span>
		</div>
  <% 
   String agreeError = (String)request.getAttribute("agreeError");
   String refuseError = (String)request.getAttribute("refuseError");
   
  		if(agreeError!=null) {
	  		if(agreeError.equals("noerror")) {
	  			out.print("审核通过！");
	  		} else {
	  			out.print("操作失败");
	  		}
	  	}
	  	if(refuseError!=null) {
	  		if(refuseError.equals("noerror")) {
	  			out.print("审核未通过！");
	  		} else {
	  			out.print("操作失败");
	  		}
	  	}
	  	
	%>
   <table border="1px" cellspacing=0 cellpadding=0>
    	<tr>
    		<th>序号</th>
    		<th>留言主题</th>
    		<th>留言内容</th>    		
    		<th class="operation">留言处理</th>
    		<th class="operation">留言处理</th>
    	</tr>
    	<%
    		
    		List<Note> notes =(List<Note>)request.getAttribute("notes");
    		for(Note note:notes) {
    		
    		
    	 %>
    	<tr>
    		<td><%=note.getId() %></td>
    		<td><%=note.getNoteTitle() %></td>
    		<td><%=note.getNoteContent() %></td>  		   		
    		<td><a href="NoteAgreeServlet?id=<%=note.getId() %>">同意</a></td>
    		<td><a href="NoteRefuseServlet?id=<%=note.getId() %>">拒绝</a></td>
    	</tr>
    	
    	<%
    		
    	} %>
    	</table>
    	</div>
  </body>
</html>
