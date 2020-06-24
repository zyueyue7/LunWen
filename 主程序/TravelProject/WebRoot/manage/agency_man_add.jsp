<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'agency_man_add.jsp' starting page</title>
    
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
			<li><a href="#">旅行社管理</a>
			</li>
			<li><a href="#">增加旅行社</a>
			</li>
		</ul>
	</div>

	<div class="formbody">

		<div class="formtitle">
			<span>基本信息</span>
		</div>
		
	<%
  		String error = (String)request.getAttribute("error");
  	  	if(error!=null){
  	  		if (error.equals("noerror")) {
  				out.print("增加旅行社成功！"); 
  			} else if (error.equals("exist")) {
  				out.print("旅行社存在！");
  			} else {
  				out.print("增加旅行社失败！");
  			}
  		}
  	%>
		
	<form action="addAgencyServlet" method="post" enctype="multipart/form-data">
		<ul class="forminfo">
			<li>
				<label>旅行社名称</label>
				<input name="agencyname" type="text" class="dfinput" />				
			</li>
			<li>
				<label>旅行社图片</label>
				<input name="agencyimg" type="file" class="dfinput" />
			</li>
			<li>
				<label>旅行社地址</label>
				<input name="agencyaddress" type="text" class="dfinput" />
			</li>
			<li>
				<label>旅行社电话</label>
				<input name="agencyphone" type="text" class="dfinput" />
			</li>
			<li>
				<label>&nbsp;</label>
				<input  type="submit"  value="提交" class="but" />
			</li>
		</ul>
	</form>

	</div>

	<!-- <form action="addAgencyServlet" method="post">
    	旅行社名称：<input type="text" name="agencyname" />
    	旅行社图片：<input type="text" name="agencyimg" />
    	旅行社地址：<input type="text" name="agencyaddress" />
    	旅行社电话：<input type="text" name="agencyphone" />
    	<input type="submit"  />
    </form> -->
    
  </body>
</html>
