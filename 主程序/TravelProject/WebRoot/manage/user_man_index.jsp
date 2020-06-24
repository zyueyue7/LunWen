<%@page import="org.travel.entity.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user_man_index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<!-- 	<link href="css/style.css" rel="stylesheet" type="text/css" /> -->

<link href="css/style.css" rel="stylesheet" type="text/css" />

<!-- <style>
* {
	margin: 0;
	padding: 0;
}
.place {
	height: 40px;
	background: url(/TravelProject/WebRoot/manage/righttop.png) repeat-x;
}

.place span {
	line-height: 40px;
	font-weight: bold;
	float: left;
	margin-left: 12px;
	color: #dc4e00;
}

.placeul li {
	float: left;
	line-height: 40px;
	padding-left: 7px;
	padding-right: 12px;
	background: url(../images/rlist.gif) no-repeat right;
}

.placeul li:last-child {
	background: none;
}
li {
	list-style: none;
	
}
</style> -->
<style>
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
	.red {
		color: red;
	}
	.green {
		color: green;
	}
</style>
  </head>
  
  <body>
	<div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">用户管理</a>
			</li>
			<li><a href="#">查看用户</a>
			</li>
		</ul>
	</div>
	
	<div class="formbody">
		<div class="formtitle">
			<span>基本信息</span>
		</div>
	    <table border="1px solid red" cellspacing=0 cellpadding=10px width="500px">
		    <tr height="50px" >
		    
		    	<th>账号</th>
		    	<th>电话</th>
		    	<th>邮箱</th>
		    	<th>身份</th>
		    </tr>
		    <%
		    	//获取request域中的数据		
		    	List<User> users =  (List<User>)request.getAttribute("users");		    	    			    			    	
				for(User user: users)	{    			    	
		    %>
		    	<tr class="user_man" height="30px">
		    		<td><%=user.getUname() %></td> 		    	
		    		<td><%=user.getPhone() %></td>
		    		<td><%=user.getEmail() %></td>
		    		<td>
		    		<%
		    			String usergrade = user.getUserclass();
		    			if(usergrade.equals("1")){
		    		%>
		    			<span class="red">管理员</span>	
		    		<%}else{%>
		    			<span class="green">用户</span>
		    		<% 	}
		    		
		    		 %>
		    		<%-- <%=user.getUserclass() %> --%>
		    		
		    		
		    		</td>
		    	</tr>	    
		    <% 
		    	}
		     %>
	    </table>
	  </div>  
  </body>
</html>
