<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'note.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<!-- bootstrap 样式 -->
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<!-- <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css"> -->
  	<script src="js/jquery-1.7.2.js"></script>
  	<!-- 	<script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script> -->
  	<script src="js/popper.js"></script>
 	<!-- <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script> -->
 	<script src="css/bootstrap.min.js"></script>
  	<!-- <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script> -->
	
	<style type="text/css">
		textarea{
			resize: none;
		} 
		 .comment {
			width: 1100px;
			margin: 0 auto;
			margin-top: 5px;
			overflow: hidden;
		}
		.content{
			vertical-align: top;
		}
		/* body {
			background-color: #FAFAFA;
		} */
		.comment_left,.comment_right {
			dispaly: inline-block;
			float: left;
		}
		.comment_left img {
			width: 500px;
			height: 350px;
		}
	</style>
  </head>
  
  <body>
  	<jsp:include page="header.jsp"></jsp:include> 
  	<jsp:include page="nav.jsp"></jsp:include>
	<div class="comment">
		<div class="comment_left">
			<img src="images/conment/timg1.jpg"/>
		</div>

		<div class="comment_right">
			<form action="NoteServlet" method="post">
				<table>
					<tr style="height:60px;">
						<td>标题：</td>
						<td>
							<input type="text" name="notetitle"/>
						</td>
					</tr>
					<tr>
						<td class="content">内容：</td>
						<td>
							<textarea name="notecontent" id="" cols="50" rows="10" resize="none"></textarea>
						</td>
					</tr>
					<tr style="height:60px;">
						<td></td>
						<td><input type="submit" value="提交留言"  /></td>
					</tr>

				</table>
			</form>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include> 
</body>
</html>
