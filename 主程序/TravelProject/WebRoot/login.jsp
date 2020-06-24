<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
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
	
	<style type="text/css">
		.icon-login{
			background:url('js/images/login.png') no-repeat center center;
			background-size:16px 16px;
		}
		#shenfen {
			width: 146px;
		}
		.msg {
			width: 760px;
			margin: 70px auto 0;
		}
		.left,.right{
			display: inline-block;
			
			float: left;
		}
		.left {
			width: 400px;
			height: 430px;
			border-right: 1px solid gray; 
		}
		.right {
			width: 350px;
			margin-left: 10px;
		}
		.login_concent {
			width: 761px;
			margin: 10px auto;
			height: 430px;
			border: 1px solid gray;
		}
		.left img {
			width: 400px;
			height: 320px;
		}
		.left li {
			display: inline-block;
			flaot: left;
			font-size: 14px;
		}
		.right_tb {
			margin-top: 35px;
		}
		.mid {
			margin-left: 50px;
			width: 250px;
			display: block;
		}
		.mid a{
			text-decoration: none;
			font-size: 14px;
			color: #333;
		}
		.mid a:hover {
			color: blue;
		}
		#btn {
			display: block;
			width: 200px;
			margin-left: 50px;
		}
		.reg {
			width: 140px;
			margin-left: 80px;
			text-align: right;
		}
	</style> 
	
	
	<script>
		/* function submit_a(){
			//获取用户输入的值
			var shenfen = document.getElementById("shenfen").value;
			var uname = document.getElementById("uname").value;
			var upwd = document.getElementById("upwd").value;
			
			//拼接url
			var url = "LoginServlet?action=L";
			url += "&uname=" +uname+ "&upwd=" +upwd + "&shenfen=" +shenfen;

			 window.location = url; 		
		} */
		
		
		
		
	</script>
  </head>
  
  <body style="background-color: #FAFAFA">
	<div class="msg">
		<%
			String error = (String) request.getAttribute("msg");
			if (error != null) {
				if (error.equals("adderror")) {
					out.print("请检查用户名或密码！");
				}
			}
		%>
	</div>

	<!-- 登录界面 -->
	<div  class="login_concent">
		<div class="left">
			<img src="images/login/st6.jpg" />
			<h3 align="center">运城旅游服务平台</h3>
			<ul style="text-align:center">
				<li>一日游|</li>
				<li>主题游|</li>
				<li>小假期|</li>
				<li>运城美景|</li>
				<li>运城美食</li>
			</ul>
		</div>
		<div class="right">
		<form action="LoginServlet" method="post">
			<!-- <div id="p" class="easyui-panel right" title=""
			style="width:350px;height:230px;padding:10px;background:#fafafa;"
			data-options="iconCls:'icon-login'"> -->
			<!-- <form action="LoginServlet?action=L" method="post"> -->
				<table width="225" align="center" class="right_tb">
					<tr>
						<td colspan="2" style="text-align:center;"><img
							src="images/login/wetour.png" />
						</td>
	
					</tr>
					<tr style="height:52px;line-height:52px;" class="mid">
						<td>身份：</td>
						<td><select id="shenfen" name="shenfen">
								<option value="1" >管理员</option>
								<option value="2" selected="selected">游客</option>
						</select>
						</td>
					</tr>
					<tr style="height:52px;line-height:52px;" class="mid">
						<td>账号：</td>
						<td><input type="text" name="uname" id="uname"></td>
					</tr>
					<tr style="height:52px;line-height:52px;" class="mid">
						<td>密码：</td>
						<td><input type="password" name="upwd" id="upwd"></td>
					</tr>
					<tr style="height:52px;line-height:52px;">
						<td colspan="2" align="left">
						<!-- <a id="btn" href="#" class="easyui-linkbutton a_post" data-options="iconCls:'icon-ok'">登录</a> -->
							 <input id="btn" type="submit" value="登录"> </td>
					</tr>
					<tr style="height:52px;line-height:52px;" class="mid">
						<td><a href="update.jsp">忘记密码</a>
						</td>
						<td class="reg"><a href="register.jsp">点击注册</a>
						</td>
					</tr>
				</table>
				<input type="hidden" name="action" value="L"/>
			</form>
		</div>
	</div>
</body>
	

<script type="text/javascript">

	$(".a_post").on("click",function(event){
				event.preventDefault();
				var user = {
					shenfen:$("#shenfen").val(),				
					uname:$("#uname").val(),				
					upwd:$("#upwd").val()
				};
				$.ajax({
					type:"post",
					url:"LoginServlet?action=L",
					data:user
				});
				
			
			});
</script>
</html>
