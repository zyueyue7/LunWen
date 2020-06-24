<%@page import="org.travel.entity.WtLink"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'footer.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- <script src="js/jquery-1.7.2.js"></script> -->
	<link rel="stylesheet" type="text/css" href="css/footer.css">
 <!-- 	<script type="text/javascript">
		function a(){
				$.ajax({  
            		url:"wtlinkIndexServlet",//servlet文件的名称
            		type:"GET",
            		/* success:function(e){
            			/* alert("servlet调用成功！"); 
            			console.log(e);
            		}, */
            	});
				
			}	
	</script>  -->
	
	
<!-- 	<script type="text/javascript">
	$(function(){
	alert("1fun");
		$.ajax({
			url:"wtlinkIndexServlet",
			data:{"wtlink":wtlink},
			dataType:"json",
			type:"post",
			success:function(data){
				alert("fun");
				for(var i=0;i<data.length;i++){
					$("table tr:first").after(
						"<tr id='list'><td>"+data[i].linkname+"</td></tr>"		
					)
				}
			}
				
		});
	}) 
</script>-->
<script>
		window.onload = function(){
			window.location = "wtlinkIndexServlet";
	
		}

</script>



	
  </head>
  
  <body onload="a()">
   <div class="footer" >
		<div class="subnav">
			<a href="#">WeTour</a> |
			<a href="#">首页</a> |
		<%-- 	 <%
				List<WtLink> wtLinks = (List<WtLink>)request.getAttribute("wtlink");
				for(WtLink wtLink: wtLinks){
							
			 %>
			 
			 <a href=" <%=wtLink.getLinkaddress() %> "><%=wtLink.getLinkname() %> |</a>
	<% 	}%>  --%>  
			<a href="#">携程旅游网</a> |
			<a href="#">去哪儿旅游网</a> |
			<a href="#">途牛旅游网</a> |
			<a href="#">驴妈妈旅游网</a> |
			<a href="#">同城旅游网</a>  
 
		</div>
		<p>©Copyright 2015 运城畅游有限公司版权所有 | 晋ICP备15038170号-3</p>
	</div> 
  </body>
</html>
