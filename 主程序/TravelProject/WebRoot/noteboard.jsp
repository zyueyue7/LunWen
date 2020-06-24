<%@page import="org.travel.entity.Note"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'noteboard.jsp' starting page</title>
    
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
  	<style>
  		.hide {
  			overflow: hidden;
  		}
  		.note {	
  			width: 1100px;
  			margin: 0 auto;
  			/* overflow: hidden; */
  		}
  		.note_content {
  			 width: 538px; 
  			/* width: 263px; */
  			height: 300px;  			
  			/* background-color: rgba(255, 251, 246,0.3);  */			
  			float: left;
  			/* border: 1px solid #FFDCA9; */ 
  			margin-top: 10px;
  			margin-left: 10px;
  			background-image: url(images/conment/note.png);
  			padding-left: 50px; /* 我的子盒子没有写宽度，所以子盒子宽度会缩减，所以538不用减50 */
  			/* background-size: 538px, 300px; */
  		}
  		.note_top, .note_mid, .note_bottom {
  			width: 500px;
  		}
  		.empty {
  			height: 96px;
  		}
  		.writenote {
  			width: 1000px;
  			margin: 0 auto;
  			overflow: hidden;
  		}
  		.writenote a{
  			text-decoration: none;
  			float: right;
  			color: #59AC40;
  			font-size: 18px; 			
  		}
  	</style>
  	
  </head>
  
  <body>
    <jsp:include page="header.jsp"></jsp:include>  
    <jsp:include page="nav.jsp"></jsp:include>
    <div class="writenote">
    	<a href="note.jsp">我要留言</a>
    </div>
    <div class="hide">
    <%
    	List<Note> notes = (List<Note>)request.getAttribute("notes");
    	for(Note note:notes){
    %>
    
    <div class="note">
    	<div class="note_content">
    		<div class="empty"></div>
	    	<div class="note_top"><h5>主题：<%=note.getNoteTitle() %> </h5></div>
	    	<div class="note-mid"><p>内容：<%=note.getNoteContent() %> </p></div>
	    	<div class="note_bottom">
	    		回复：
	    		
	    		<%
	    		String reply = note.getNoteReply();
	    		if(reply.equals("noreply") ){
	    			reply = " ";
	    		%>
	    			<span><%=reply%> </span>
	    		<%} else {%>	    		
	    			<span><%=reply%> </span>
	    		<%}%> 
	    	
	    	</div>
    	</div>
    </div>
    
    <% 
    	}
    	
     %>
     </div>
     
     <jsp:include page="footer.jsp"></jsp:include> 
    
  </body>
</html>
