<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="js/easyui/themes/default/easyui.css">   
	<link rel="stylesheet" type="text/css" href="js/easyui/themes/icon.css">   
	<script type="text/javascript" src="js/jquery-1.7.2.js"></script>   
	<script type="text/javascript" src="js/easyui/jquery.easyui.min.js"></script> 
	
	<script>
		function submit_r(){
			//获取用户输入的值			
			var uname = document.getElementById("uname").value;
			var upwd = document.getElementById("upwd").value;
			var phone = document.getElementById("phone").value;
			var email = document.getElementById("email").value;
			/* var shenfen = document.getElementByID("shenfen").value; */
			
			//拼接url
			var url = "LoginServlet?action=R";
			url += "&uname=" +uname+ "&upwd=" +upwd + "&phone=" +phone+"&email=" +email;
			
			window.location = url;		
		}
	
	</script>
	
	<link rel="stylesheet" type="text/css" href="css/register/NewFile.css">
  </head>
  
  <body >
    <!-- <div style="margin:100px auto;width:350px">
   	  <div id="p" class="easyui-panel" title="注册"     
        style="width:350px;height:260px;padding:10px;background:#fafafa;"   
        data-options="iconCls:'icon-login'">   
    	 <form action="LoginServlet" method="post"> 
	    	<table width="225" align="center">
		    	<tr>
		    		<td colspan="2" style="text-align:center;font-size:18px;font-weight:bold">WeTour注册系统</td>		    	
		    	</tr>	    	
		    	<tr style="height:35px">
			    	<td>账号：</td>
			    	<td><input type="text" name="uname" id="uname"></td>
		    	</tr>
		    	<tr style="height:35px">
		    		<td>密码：</td>
			    	<td><input type="password" name="upwd" id="upwd"></td>
		    	</tr>
		    	<tr style="height:35px">
		    		<td>电话：</td>
			    	<td><input type="text" name="phone" id="phone"></td>
		    	</tr>
		    	<tr style="height:35px">
		    		<td>邮箱：</td>
			    	<td><input type="text" name="email" id="email"></td>
		    	</tr>
		    	<tr style="height:30px">
		    		<td colspan="2" align="right">
		    			<a id="btn" href="#" onclick="submit_r();" class="easyui-linkbutton" data-options="iconCls:'icon-ok'">注册</a>  		    			    			
		    		</td>	    			
		    	</tr>
		    	
	    	</table>
    	 </form>  
	</div>  
</div> -->
    <div id="login">
		<h1>Register</h1>
		<form action="LoginServlet?action=R" method="post">
			<input type="text" name="uname" id="uname" placeholder="用户名" onblur = "validate()">
			<input type="password" name="upwd" id="upwd" placeholder="请输入密码" onblur = "validate()">
			<input type="text" name="phone" id="phone" placeholder="请输入电话" onblur = "fun2()">
			<input type="text" name="email" id="email" placeholder="请输入邮箱" onblur = "fun1()">
			<input type="submit" value="注册" id="btn" onclick="return validate()">
		</form>	
		<span id="info"></span>
		<% if(request.getAttribute("regErr")!=null){%>
			<span style="color:red"><%=request.getAttribute("regErr") %></span>
		<% } %>
	</div>
  </body>
 <script>
 function validate(){
	  	var uname = document.getElementById("uname").value;
	  	var pwd = document.getElementById("upwd").value;	  	
	  	if(uname==""&&uname.length==0 || pwd==""&&pwd.length==0){
	  		info.innerHTML = "输入不能为空";
	  		info.style.color = "#cc3333";
	  		//alert("输入不能为空");
	  		console.log(uname);
	  		return false;
	  	}else{	
	  		info.innerHTML = "验证通过";  		
	  		return true;	  		
	  	}
 }
	  
	function fun2(){
		var phone = document.getElementById("phone").value;//获取内容
		if(phone.length != 11) {
			info.innerHTML = "电话格式错误";
			info.style.color = "#cc3333";
			return false;
		}else{
			info.innerHTML = "验证通过";
			return true;
		}
	}
	function IsEmail(str) {
		var reg=/^[\s\S]{6,10}$/;
		return reg.test(str);
	}
	function fun1(){	   	
		if(!IsEmail(document.getElementById("email").value)){
			/* alert("邮箱名称填写错误或不规范"); */
			info.innerHTML = "邮箱名称填写错误或不规范";
			info.style.color = "#cc3333";
			document.getElementById("email").focus();
			return false;
		} else {
			info.innerHTML = "验证通过";
			return true;
		}
	}
 </script>
</html>
