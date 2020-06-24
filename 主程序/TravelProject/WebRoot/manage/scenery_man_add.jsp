<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'scenery_man_add.jsp' starting page</title>
    
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
   <!--  <form action="addSceneryServlet" method="post" onsubmit="return check()">
    	景点序号：<input type="text" name="id"  /><br/>
    	景点图片：<input type="text" name="scenery_img" /><br/>
    	景点名称：<input type="text" name="scenery_name"  /><br/>
    	景点等级：<input type="text" name="scenery_rank"  /><br/>
   		景点地址：<input type="text" name="scenery_address"  /><br/>
   		开放时间：<input type="text" name="scenery_time"  /><br/>    
    	景点描述：<input type="text" name="scenery_desc"  /><br/>
    	<input type="submit" value="新增" /><br/>
    </form> -->
    
     <div class="place">
		<span>位置：</span>
		<ul class="placeul">
			<li><a href="#">景点管理</a>
			</li>
			<li><a href="#">增加景点</a>
			</li>
		</ul>
	</div>
	
		<div class="formbody">

		<div class="formtitle">
			<span>基本信息</span>
		</div>
    
   <form action="addSceneryServlet" method="post" enctype="multipart/form-data">
		<ul class="forminfo">
			<li>
				<label>景点序号</label>
				<input name="id" type="text" class="dfinput"  />				
			</li>
			<li>
				<label>景点图片</label>
				<input name="scenery_img" type="file" class="dfinput" />
			</li>
			<li>
				<label>景点名称</label>
				<input name="scenery_name" type="text" class="dfinput" />
			</li>
			<li>
				<label>景点等级</label>
				<input name="scenery_rank" type="text" class="dfinput"  />
			</li>
			<li>
				<label>景点地址</label>
				<input name="scenery_address" type="text" class="dfinput"  />
			</li>
			<li>
				<label>开放时间</label>
				<input name="scenery_time" type="text" class="dfinput"  />
			</li>
			<li>
				<label>景点描述</label>
				<input name="scenery_desc" type="text" class="dfinput"  />
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
