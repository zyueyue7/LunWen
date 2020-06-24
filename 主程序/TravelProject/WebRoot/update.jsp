<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'update.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="css/register/NewFile.css">
  </head>
  
  <body>
    <div id="login">
		<h1>update</h1>
		<form action="LoginServlet?action=U" method="post">
			<input id="uname" type="text" name="username" placeholder="用户名" />
			<input id="pwd" type="password" name="password" placeholder="新密码"/>
			<input id="pwd1" type="password" name="password1" placeholder="确认密码"/>
			<input type="submit" value="修改密码" id="btn" onclick="return validate()">
		</form>	
		<span id="info"></span>
	</div>	
  </body>
  <script type="text/javascript">
		function validate(){
			var username = document.getElementById("uname").value;
			var password = document.getElementById("pwd").value;
			var password1 = document.getElementById("pwd1").value;
			var info = document.getElementById("info");
			if(username==""&&username.length==0||password==""&&password.length==0||password1==""&&password1==0){
				//alert("不能为空");
				info.innerHTML = "输入不能为空";
  				info.style.color = "#cc3333";
  				console.log(uname);
				return false;
			}else{
				info.innerHTML = "验证通过";
  				info.style.color = "#3399cc";
  				//alert(111);
				return true;
			}		
		}	
	</script>
</html>
