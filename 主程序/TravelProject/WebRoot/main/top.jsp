<%@ page language="java" contentType="text/html; charset=UTF-8"
   import="java.util.*"
    pageEncoding="UTF-8"%>
    <%@page import="org.travel.entity.User"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>"></base>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>
<script type="text/javascript">
$(function(){	
	//顶部导航切换
	$(".nav li a").click(function(){
		$(".nav li a.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
	//退出功能
	 $("#out").click(function(){
		var flag=window.confirm("您真的要退出么?");
		var uname = document.getElementById("username").value;
		/* alert(uname); */
		if(flag){
			var url = "LoginServlet?action=O";
			url += "&uname=" +uname;
			/* window.top.location.href="LoginServlet?action=O"; */
			window.top.location.href=url;
		}
	}) 
})	

 /* function out_b(){
			//获取用户输入的值
			
			var uname = document.getElementById("uname").value;
			
			
			//拼接url
			var url = "LoginServlet?action=O";
			url += "&uname=" +uname;

			 window.location = url; 		
		}  */
</script>


</head>

<body style="background:url(images/topbg.gif) repeat-x;">

    <div class="topleft" style="height:88px;">
    <a href="main/main.jsp" target="_parent"><img src="images/houtai/logo.png" title="系统首页" /></a>
    </div>
           
    <div class="topright">    
    <ul>
    <li><a href="javascript:void(0)"  id="out" target="_top" >注销</a></li>
    </ul>
     
    <div class="user">
    <span>欢迎：<input type="hidden" id="username" value="<%=((User)session.getAttribute("user")).getUname() %>" /><%=((User)session.getAttribute("user")).getUname() %></span>
    </div>    
    
    </div>

</body>
</html>
