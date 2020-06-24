<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'routeweek_man_add.jsp' starting page</title>
    
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
			<li><a href="#">路线管理</a>
			</li>
			<li><a href="#">增加路线</a>
			</li>
		</ul>
	</div>
	
		<div class="formbody">

		<div class="formtitle">
			<span>基本信息</span>
		</div>
    <!-- <form action="addRouteWeekServlet" method="post">
   	            路线序号：<input type="text" name="id" /><br/>
    	路线名称：<input type="text" name="routew_name" /><br/>
		路线名称：<input type="text" name="routew_img1" /><br/>
		路线图片：<input type="text" name="routew_img2" /><br/>
		路线图片：<input type="text" name="routew_img3" /><br/>
		路线图片：<input type="text" name="routew_img4" /><br/>
		路线图片：<input type="text" name="routew_img5" /><br/>
		路线价格：<input type="text" name="routew_price" /><br/>
		路线描述：<input type="text" name="routew_route" /><br/>
		<input type="submit" value="新增" />
    
    </form> -->
    
     <form action="addRouteWeekServlet" method="post" enctype="multipart/form-data">
		<ul class="forminfo">
			<li>
				<label>路线序号</label>
				<input name="id" type="text" class="dfinput"  />				
			</li>
			<li>
				<label>路线名称</label>
				<input name="routew_name" type="text" class="dfinput" />
			</li>
			<li>
				<label>路线图片</label>
				<input name="routew_img1" type="file" class="dfinput" />
			</li>
			<li>
				<label>路线图片</label>
				<input name="routew_img2" type="file" class="dfinput"  />
			</li>
			<li>
				<label>路线图片</label>
				<input name="routew_img3" type="file" class="dfinput"  />
			</li>
			<li>
				<label>路线图片</label>
				<input name="routew_img4" type="file" class="dfinput"  />
			</li>
			<li>
				<label>路线图片</label>
				<input name="routew_img5" type="file" class="dfinput"  />
			</li>
			<li>
				<label>路线价格</label>
				<input name="routew_price" type="text" class="dfinput" />
			</li>
			<li>
				<label>路线描述</label>
				<input name="routew_route" type="text" class="dfinput" />
			</li>
			<li>
				<label>&nbsp;</label>
				<input  type="submit"  value="新增" class="but" />
			</li>
		</ul>
	</form>
    
    
    
    
    </div>
  </body>
</html>
