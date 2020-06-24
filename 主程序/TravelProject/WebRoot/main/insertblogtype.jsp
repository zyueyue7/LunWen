<%@ page language="java" contentType="text/html; charset=UTF-8"
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
<title>添加博客类型</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<style>
::-webkit-input-placeholder { /* WebKit, Blink, Edge */
    color:    #909;
}
:-moz-placeholder { /* Mozilla Firefox 4 to 18 */
   color:    #909;
   opacity:  1;
}
::-moz-placeholder { /* Mozilla Firefox 19+ */
   color:    #909;
   opacity:  1;
}
:-ms-input-placeholder { /* Internet Explorer 10-11 */
   color:    #909;
}
</style>
</head>
<body>
    <div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="main/insertblogtype.jsp">添加博客类型</a></li>
    </ul>
    </div>
    
    <form action="UserServlet" method="post">
    <div class="formbody">
    <div class="formtitle"><span>添加博客类型</span></div> 
    <input type="hidden" name="action" value="insertblogtype" ></input>
    <ul class="forminfo"> 
    <li><label>博客类型：</label><input name="blogtype" type="text" class="dfinput" placeholder="博客类型不能为空" /><i>标题不能超过30个字符</i></li>
    <li><label>博客序列：</label><input name="orderno" type="text" class="dfinput" placeholder="博客序列不能为空"/></li>
    <li><label>&nbsp;</label><input name="" type="submit" class="loginbtn" value="确定添加"/></li>
    </ul>
    </div>
    </form>
    

</body>
</html>