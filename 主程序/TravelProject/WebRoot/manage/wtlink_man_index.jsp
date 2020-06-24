<%@page import="javax.swing.text.MaskFormatter"%>
<%@page import="org.travel.entity.WtLink"%>
<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8"
pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'wtlink_man_index.jsp' starting page</title>
    
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
		.addbox {
			width: 800px;
			overflow: hidden;
		}
		.add {
			float: right;
			height: 20px;
			line-height: 20px;
		}
		.add img {
			height: 12px;	
		}
		table img {
			height: 10px;
		}
	</style>
  </head>
  
  <body>
     <div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">链接管理</a>
			</li>
			<li><a href="#">查看链接</a>
			</li>
		</ul>
	</div>
	
		<div class="formbody">

		<div class="formtitle">
			<span>基本信息</span>
		</div>
		<%
			String msg = (String)request.getAttribute("msg");
			
			if(msg!=null){
				if(msg.equals("dnoerror")){
					out.print("删除链接成功");
				} else if(msg.equals("derror")){
					out.print("删除链接失败");
				} else if(msg.equals("anoerror")) {
					out.print("增加链接成功");
				} else if(msg.equals("aerror")) {
					out.print("增加链接失败");
				} else {
					out.print("链接存在");
				}
			}

		 %>
   		<div class="addbox">
   			<div class="add">
	   			
	   			<a href="manage/wtlink_man_add.jsp"><img src="images/icon/edit_add.png" />增加</a>
   			</div>
   		</div>
    	<table border="1px" cellspacing=0 cellpadding=0>
    		<tr>
    			<th>链接名称</th>
    			<th>链接地址</th>
    			<th>删除操作</th>
    		</tr>
    		
    		 <%
    			List<WtLink> wtLinks = (List<WtLink>)request.getAttribute("wtlink");
    			for(WtLink wtlink: wtLinks){
    		%>
    		<tr>
    			<td><%=wtlink.getLinkname() %> </td>
    			<td><%=wtlink.getLinkaddress() %></td>   			
    			<td><a href="deleteWtlinkServlet?linkname=<%=wtlink.getLinkname() %>"><img src="images/icon/cancel.png" />删除</a></td>
    		</tr>
    		<% 
    			}
     		%>
    	</table>
    </div>

  </body>
</html>
