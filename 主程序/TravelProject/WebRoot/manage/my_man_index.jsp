<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'my_man_index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <%-- <table border="1px" >
		    <tr>
		    	<th>账号</th>
		    	<th>密码</th>
		    	<th>电话</th>
		    	<th>邮箱</th>
		    	<th>身份</th>
		    </tr>
		    <%
		    	//获取request域中的数据		
		    	List<User> users =  (List<User>)request.getAttribute("users");		    	    			    			    	
				for(User user: users)	{    			    	
		    %>
		    	<tr class="user_man">
		    		<td><%=user.getUname() %></td> 		    	
		    		<td><%=user.getPhone() %></td>
		    		<td><%=user.getEmail() %></td>
		    		<td><%=user.getUserclass() %></td>
		    	</tr>	    
		    <% 
		    	}
		     %>
	    </table> --%>
  </body>
</html>
