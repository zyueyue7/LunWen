<%@page import="org.travel.entity.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'header.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style  type="text/css">
		* {
			margin:0px;
			padding:0px;
		}
		li {
			list-style:none;
		}
		
		.header {
			height:25px;
			background-color:#f4f4f4;
			font:12px "微软雅黑";
		}
		.inner {
			width:1100px;
			height:25px;
			
			margin:0 auto;
			line-height:25px;		
		}
		.slogan {
			float:left;
			font:18px cursive,"微软雅黑" ;
			line-height:25px;
		}
		.nav {
			float:right;
			
		}
		.nav ul {
			overflow:hidden;
		}
		.nav li {
			float:left;
			margin:0 20px;
		}
		.nav li a {
			color:#333;
			text-decoration:none;
		}
	</style>
	<script>
	//这个函数是为了获取到用户名，然后将其注销，并且改变其状态。
		 function out_a(){
			//获取用户输入的值
			
			var uname = document.getElementById("uname").value;
			
			
			//拼接url
			var url = "LoginServlet?action=O";
			url += "&uname=" +uname;

			 window.location = url; 		
		} 
		
		
		
		
	</script>
  </head>
  	
  <body>
 
 	
  
  <%
  	 
  	
  	
  		
  		 /* String username = ((User)application.getAttribute("user")).getUname(); */
  		 String username = ((User)session.getAttribute("user")).getUname(); 
  		if(username != null){
  	
  	
  %>
    <div class="header">
	 	<div class="inner">
		 	<div class="slogan"><span>让旅行更幸福</span></div>
	    	<div class="nav">
	    		<ul>
	    			<li >欢迎：<input type="hidden" id="uname" value="<%=username %>"><%=username %></li>    			
	    			<li><a onclick="out_a();" href="javascript:void(0)" >注销</a></li>
	    			<li><a href="NoteBoardServlet">游客留言</a></li> </ul>   		
	    	</div>
	 	</div>	
    </div>
    
    <% }else{%>
  	<div class="header">
	 	<div class="inner">
		 	<div class="slogan"><span>让旅游成为一种幸福</span></div>
	    	<div class="nav">
	    		<ul>
	    			<li><a href="login.jsp" >您好，请登录</a></li>    			
	    			<li><a href="register.jsp">免费注册</a></li>
	    			<li><a href="#">游客留言</a></li> </ul>   		
	    	</div>
	 	</div>	
    </div>
  	
  	<%} %>
  	
  	  	 
  </body>
  
</html>
