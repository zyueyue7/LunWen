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
<title>写博客</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" charset="utf-8" src="ueditor/utf8-jsp/ueditor.config.js"></script>    <!--  配置文件 -->
<script type="text/javascript" charset="utf-8" src="ueditor/utf8-jsp/ueditor.all.min.js"></script>   <!--语言文件  -->
<script type="text/javascript" charset="utf-8" src="ueditor/utf8-jsp/lang/zh-cn/zh-cn.js"></script>  <!-- 核心文件 -->
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
    <li><a href="main/write.jsp">写博客</a></li>
    </ul>
    </div>
    
    <div class="formbody">
    
    <div class="formtitle"><span>写博客</span></div>
    <form action="UserServlet"  method="post">
    <input type="hidden" name="action" value="write" ></input>
    <ul class="forminfo">
     
    <li><label>博客标题</label><input name="title" type="text" class="dfinput" placeholder="标题内容不能为空" id="11"/><i>标题不能超过30个字符</i></li>
     
    <li><label>所属类别</label><select class="easyui-combobox" style="width: 154px" id="blogTypeId" name="blogtype" editable="false" panelHeight="auto" >
					<option value="">请选择博客类别...</option>	
				    <c:forEach var="blogtype" items="${list_blog}">
				    	<option value="${blogtype.id}">${blogtype.typename}</option>
				    </c:forEach>			
                </select></li>
     
    <li><label>文章内容</label> </li> 
        <script id="editor" type="text/plain" style="width:80%;height:200px;margin-left:100px;" name="content"></script>
    <li><label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
    
    <input name="" type="submit" class="loginbtn" value="发布博客"  id="ww"
     onclick="javascript:window.location='main/write.jsp'"/></li>
     
    </ul>
    </form>
    
    </div>

    <script type="text/javascript">
        var ue = UE.getEditor('editor');
    </script>
</body>
    

</html>
