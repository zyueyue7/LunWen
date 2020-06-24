<%@ page language="java" contentType="text/html; charset=UTF-8"
  import="java.util.*"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>"></base>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>WeTour管理后台</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>

<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson .header").click(function(){
		var $parent = $(this).parent();
		$(".menuson>li.active").not($parent).removeClass("active open").find('.sub-menus').hide();
		
		$parent.addClass("active");
		if(!!$(this).next('.sub-menus').size()){
			if($parent.hasClass("open")){
				$parent.removeClass("open").find('.sub-menus').hide();
			}else{
				$parent.addClass("open").find('.sub-menus').show();	
			}
			
			
		}
	});
	
	// 三级菜单点击
	$('.sub-menus li').click(function(e) {
        $(".sub-menus li.active").removeClass("active")
		$(this).addClass("active");
    });
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('.menuson').slideUp();
		if($ul.is(':visible')){
			$(this).next('.menuson').slideUp();
		}else{
			$(this).next('.menuson').slideDown();
		}
	});
	$("#out").click(function(){
		var flag=window.confirm("您真的要退出么?");
		if(flag){
			window.top.location.href="LoginServlet?action=S";
		}
	});
})	
</script>


</head>

<body style="background:#fff3e1;">
	<div class="lefttop"><span></span>管理导航</div>
    
    <dl class="leftmenu">
        
    <dd>
    <div class="title">
    <span><img src="images/leftico01.png" /></span>路线管理
    </div>
    	<ul class="menuson">       
	        <li class="active"><cite></cite><a href="main/index.jsp" target="rightFrame">首页</a><i></i></li>
	        <li><div class="header"><cite></cite><a href="queryAllRouteWeekServlet?action=Q" target="rightFrame">查看路线</a><i></i></div></li>
	        <li><div class="header"><cite></cite><a href="queryAllRouteWeekServlet?action=I" target="rightFrame">增加路线</a><i></i></div></li>
	        <li><div class="header"><cite></cite><a href="queryAllRouteWeekServlet?action=D" target="rightFrame">删除路线</a><i></i></div></li>
	        <li><div class="header"><cite></cite><a href="queryAllRouteWeekServlet?action=U" target="rightFrame">修改路线</a><i></i></div></li>
        </ul>    
    </dd>
        
    
    <dd>
    <div class="title">
    <span><img src="images/leftico02.png" /></span>景点管理
    </div>
    <ul class="menuson">
        
        <li><div class="header"><cite></cite><a href="queryAllSceneryServlet?action=Q" target="rightFrame">查看景点</a><i></i></div></li>
        <li><div class="header"><cite></cite><a href="queryAllSceneryServlet?action=I" target="rightFrame">增加景点</a><i></i></div></li>
        <li><div class="header"><cite></cite><a href="queryAllSceneryServlet?action=D" target="rightFrame">删除景点</a><i></i></div></li>
        <li><div class="header"><cite></cite><a href="queryAllSceneryServlet?action=U" target="rightFrame">修改景点</a><i></i></div></li>
        </ul>     
    </dd> 
    
    
    <dd><div class="title"><span><img src="images/leftico03.png" /></span>留言管理</div>
    <ul class="menuson">
        <li><div class="header"><cite></cite><a href="NoteManegeServlet?action=Q" target="rightFrame">查看留言</a><i></i></div></li>
        <li><div class="header"><cite></cite><a href="NoteManegeServlet?action=A" target="rightFrame">审核留言</a><i></i></div></li>
        <li><div class="header"><cite></cite><a href="NoteManegeServlet?action=R" target="rightFrame">回复留言</a><i></i></div></li>
        <li><div class="header"><cite></cite><a href="NoteManegeServlet?action=D" target="rightFrame">删除留言</a><i></i></div></li>
    </ul>    
    </dd>  
    
    <dd><div class="title"><span><img src="images/leftico03.png" /></span>用户管理</div>
    <ul class="menuson">
        <li><div class="header"><cite></cite><a href="LoginServlet?action=Q" target="rightFrame">查看用户信息</a><i></i></div></li>       
        <!-- <li><div class="header"><cite></cite><a href="manage/user_man_indexU.jsp" target="rightFrame">修改用户信息</a><i></i></div></li> -->
    </ul>    
    </dd>
    
    <dd><div class="title"><span><img src="images/leftico03.png" /></span>旅行社管理</div>
    <ul class="menuson">
    	<!-- <li><div class="header"><cite></cite><a href="manage/agency_man_query.jsp" target="rightFrame">查询旅行社</a><i></i></div></li> -->       
        <li><div class="header"><cite></cite><a href="manage/agency_man_add.jsp" target="rightFrame">增加旅行社</a><i></i></div></li>       
        <li><div class="header"><cite></cite><a href="queryAllAgencyServlet?action=D" target="rightFrame">删除旅行社</a><i></i></div></li>
    </ul>    
    </dd>
    
    <!-- <dd>
    <div class="title"><span><img src="images/leftico04.png" /></span>个人信息管理</div>
    <ul class="menuson">
        <li><div class="header"><cite></cite><a href="LoginServlet?action=P" target="rightFrame">查看个人信息</a><i></i></div></li>
        <li><div class="header"><cite></cite><a href="main/modprofile.jsp" target="rightFrame">修改个人信息</a><i></i></div></li>
    </ul>
    </dd>   --> 
    
    <dd><div class="title"><span><img src="images/leftico04.png" /></span>系统管理</div>
    <ul class="menuson">
        <!-- <li><div class="header"><cite></cite><a href="main/modpwd.jsp" target="rightFrame">修改密码</a><i></i></div></li> -->
        <li><div class="header"><cite></cite><a href="main/safe.jsp" target="rightFrame" id="out">安全退出</a><i></i></div></li>
        <li><div class="header"><cite></cite><a href="wtlinkServlet?action=A" target="rightFrame">友情链接</a><i></i></div></li>
    </ul>
    </dd> 
     
    </dl>
    
</body>
</html>
