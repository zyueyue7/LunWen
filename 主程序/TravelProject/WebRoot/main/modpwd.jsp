<%@ page language="java" contentType="text/html; charset=UTF-8"
    import="java.util.*"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>"></base>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>修改密码信息</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<!-- 引入jQuery文件 -->
<script type="text/javascript" src="js/jquery.js"></script>
<!-- 声明jQuery代码域 -->
<script type="text/javascript">
   $(function(){
	   //校验密码修改
	   $("#fm").click(function(){
		   var newpwd=$("#newpwd").val();
		   var cpwd=$("#cnpwd").val();
		   //校验新密码
		   if(newpwd==""){
			   alert("新密码不能为空！");
			   return false;
		   }else if(cpwd==""){
			   alert("确认密码不能为空!");
			   return false;
		   }else if(newpwd!=cpwd){
			   alert("两次密码不一致！");
			   return false;
		   }else{
			   return true;
		   }
	   }) ;
   });
</script>
</head>
<body>
    <div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="main/modpwd.jsp">修改密码</a></li>
    </ul>
    </div>

    <div class="formbody">
    <div class="formtitle"><span>修改密码信息</span></div> 
     <form action="UserServlet" method="post" >
    <input type="hidden" name="action" value="modpwd" ></input>
    <input type="hidden" name="uid" value=""></input>
    <ul class="forminfo"> 
    <li><label>新密码：</label><input name="password" type="password" class="dfinput" id="newpwd" /></li>
    <li><label>确认密码：</label><input name=" " type="password" class="dfinput"  id="cnpwd" /></li>
    <li><label>&nbsp;</label><input name="" type="submit" class="loginbtn" value="确定修改" id="fm"/></li>
    </ul>
     </form>
    </div>
   
</body>

</html>