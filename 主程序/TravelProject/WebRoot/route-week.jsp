<%@page import="org.travel.entity.RouteWeek"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'route-week.jsp' starting page</title>
    
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
  	
	<script src="js/jquery-1.7.2.js"></script>
	
	<style>
		*{
			margin: 0;
			padding: 0;
		}
	/*导航栏的样式 开始啦*/
		 .navbar{
		 	width: 100%;
		 	height: 75px;
			padding: 0px 125px;
			margin-top: 0px;
			position: absolute;
			top: 0;
		}
		.navbar-nav {
			 margin-left: 488px; 
		}
		.navbar-nav li {
			margin-left: 20px;
		}
		.navbar-brand {
			/* margin-left: 20px; */
			font-size: 30px;
			font-weight: 700;
		}
		.qisi {
			/* background-color: green; */
			height: 75px;
			position: relative;
		} 
		/*导航栏的样式 结束啦*/
		
		#txtDom {
			width: 1100px;
			/* height: 50px; */
			/* align: center; */
			font-size: 30px;
			/* font-color: #40DA6F; */
			color:  #40DA6F;
			margin: 10px auto 20px;	
			/* background-color: rgba(0,2550,0,0.3) */				
		}
		
		#outer {
			width: 1100px;
			height: 100px; 
			margin: 0 auto;
			position: relative;
			border: 1px solid gray;
		}
		#prev , #next {
		 	width: 30px;
		 	height: 100px;
		 	background: rgba(0,0,0,0.2);
		 	position: absolute;
		 	top: 50%;
		 	margin-top: -50px;
		 	text-align: center;
			line-height: 100px;
			color: #fff;
			text-decoration: none;
			font-size: 20px;
			/* border-radius: 50%; */
	 	}
	 	#prev {
	 		left: 0;	 		
	 	}
	 	#next {
	 		right: 0;
	 	}
	 	.week {
	 		width: 1100px;
	 		margin: 15px auto 10px;
	 	}
	 	.week_img {
	 		margin-left: 35px;
	 	}
	 	.routew_two {
	 		width: 1100px;
	 		margin: 10px auto 0;
	 		overflow: hidden;
	 	}
	 	.routew_two_content {
	 		width: 540px;
	 		float: left;
	 		margin-bottom: 20px;
	 	}
	 	.carousel-inner img {
	 		width: 400px;
	 		height: 200px;
	 	}
	</style>
	
	 <script>
	  
	 	window.onload = function() {
				/*
				 * 点击按钮切换图片
				 */
				
				//获取两个按钮
				var prev = document.getElementById("prev");
				var next = document.getElementById("next");
				
				/*
				 * 要切换图片就是修img标签的属性
				 */
				 
				//获取img标签 这个方法获取的是数组								
				var img1 = document.getElementsByTagName("img")[0];
				var img2 = document.getElementsByTagName("img")[1];
				var img3 = document.getElementsByTagName("img")[2]; 
				var img4 = document.getElementsByTagName("img")[3];
				var img5 = document.getElementsByTagName("img")[4]; 				
				
				
				//创建一个数组 用来保存图片的路径
				var imgArr = ["images/routew/gdm.png","images/routew/ylg.png","images/routew/pjs.png","images/routew/pjd.png","images/routew/gql.png","images/routew/fyl.png","images/routew/qfl.png","images/routew/xt.png"];
				
				
				
				//创建一个变量 来保存当前正在显示的图片的索引
				var index1 = 0;
				var index2 = 1;
				var index3 = 2; 
				var index4 = 3;
				var index5 = 4;
				
				var index = 0;
				//分别给两个按钮创建单击事件
				prev.onclick = function() {
					/* index1++;
					index2++;
					index3++; 					
					index1 = index1 % 5;
					index2 = index2 % 5;
					index3 = index3 % 5;
					
					img1.src = imgArr[index1]; 
					img2.src = imgArr[index2]; 
					img3.src = imgArr[index3]; */
					
					index++;
					img1.src = imgArr[(index)%imgArr.length]; 
					img2.src = imgArr[(index+1)%imgArr.length]; 
					img3.src = imgArr[(index+2)%imgArr.length];  
					img4.src = imgArr[(index+3)%imgArr.length];  
					img5.src = imgArr[(index+4)%imgArr.length];  								
				}
				next.onclick = function() {					
					
					index1--; 					
					if(index1 < 0) {						
						index1=imgArr.length-1;
					}
					
					index2--; 
					if(index2 < 0) {						
						index2=imgArr.length-1;
					}
					
					index3--; 		
					if(index3 < 0) {						
						index3=imgArr.length-1;
					}			
					
					index4--;
					if(index4 < 0) {						
						index4=imgArr.length-1;
					}
					
					index5--;
					if(index5 < 0) {						
						index5=imgArr.length-1;
					}
					img1.src = imgArr[index1]; 
					img2.src = imgArr[index2]; 
					img3.src = imgArr[index3]; 
					img4.src = imgArr[index4]; 
					img5.src = imgArr[index5]; 
						
				}
				
			}
			
	 </script>

  </head>
  
  <body>
  <jsp:include page="header.jsp"></jsp:include>
  <!-- 导航栏开始啦 -->
 <div class="qisi"> 
  	 <nav class="navbar navbar-expand-sm  bg-success navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="index.jsp">WeTour</a>

  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="index.jsp">首页</a>
    </li>
    

    <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        旅游路线
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="route-day.jsp">一日游</a>
        <a class="dropdown-item" href="route-theme.jsp">主题游</a>
        <a class="dropdown-item" href="RouteWeekServlet">小假期</a>
      </div>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="SceneryServlet">景点介绍</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="queryAllAgencyServlet?action=Q">旅行社</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="about.jsp">关于我们</a>
    </li>
  </ul>
</nav>
 </div> 
<br>
  	<!-- 导航栏 结束啦 -->
  
  
  	  
  
  
  
  
 
  <div class="week">
	  <div>
	  	<h5>解州关帝庙-永乐宫-普救寺-蒲津渡-鹳雀楼-飞云楼-秋风楼-西滩</h5>
	  	<div id="outer" >
	  		<div class="week_img">
	  			<%-- <img alt="dyd.png" src="<%=routeWeek.getRoutew_img1()%>">
	  			<img alt="fyl.png" src="<%=routeWeek.getRoutew_img2()%>">
	  			<img alt="gdm.png" src="<%=routeWeek.getRoutew_img3()%>"> --%>
	  			<img alt="dyd.png" src="images/routew/gdm.png">
	  			<img alt="fyl.png" src="images/routew/ylg.png">
	  			<img alt="gdm.png" src="images/routew/pjs.png"> 
	  			<img alt="gql.png" src="images/routew/pjd.png"> 
	  			<img alt="gql.png" src="images/routew/gql.png">
	  		</div>
	  		  
	  		<a href="javascript:void(0);" id="prev"> < </a> 
	  		<a href="javascript:void(0);" id="next"> > </a>		
	  		<!-- <button id="prev"><</button>
	  		<button id="next">></button> -->
	  	</div>
	  	<div>价格：361</div>
	  	<div>详情：第一天：解州关帝庙，永乐宫。第二天：普救寺，蒲津渡，鹳雀楼。第三天：飞云楼，秋风楼，西滩。</div>
	  </div> 
  </div>
  
  
  <!-- 标题 开始啦 -->
    <div id="txtDom" >
    	We Tour小旅途，一起来渡过小假期吧! 	
    </div>
     <script type="text/javascript">
	   	var txtAnim = {
	    len: 0,
	    txtDom: "",
	    arrTxt: [],
	
	    init: function(obj) {
	     this.obj = obj;
	     this.txtDom = obj.innerHTML.replace(/\s+/g, "");
	     this.len = this.txtDom.length;
	     obj.innerHTML = "";
	     this.addDom();
	    },
	
	    addDom: function() {
	     for (var i = 0; i < this.len; i++) {
	      var spanDom = document.createElement("span");
	      spanDom.innerHTML = this.txtDom.substring(i, i + 1);
	      this.obj.appendChild(spanDom);
	      this.arrTxt.push(spanDom);
	     };
	     for (var j = 0; j < this.len; j++) {
	      this.arrTxt[j].style.position = "relative";
	     };
	     this.strat();
	    },
	
	    strat: function() {
	     for (var i = 0; i < this.len; i++) {
	      this.arrTxt[i].onmouseover = function() {
	       this.stop = 0;
	       this.speed = -1;
	       var $this = this;
	       this.timer = setInterval(function() {
	        $this.stop += $this.speed; //0 += -1
	        if ($this.stop <= -20) {
	         $this.speed = 1;
	        }
	        $this.style.top = $this.stop + "px";
	        if ($this.stop >= 0) {
	         clearInterval($this.timer)
	         $this.style.top = 0 + "px";
	        };
	       },
	       15);
	      };
	     }
	    }
	   }
	   var txtDom = document.getElementById("txtDom");
	   txtAnim.init(txtDom);
  </script> 
  <!-- 标题 结束啦 -->
  
  
  
  
  


  <div class="routew_two">
  <%
  List<RouteWeek> routeWeeks =(List<RouteWeek>)request.getAttribute("routeWeeks");
  for(RouteWeek routeWeek: routeWeeks) {
   %>
  <div class="routew_two_content">
   	<!-- 轮播图片 -->
   <div id="demo" class=" banner carousel slide" data-ride="carousel">
  	<div class="carousel-inner">
	    <div class="carousel-item active">
	      <img src="<%=routeWeek.getRoutew_img1() %>">
	      <div class="carousel-caption">	        
	      </div>
	    </div>
	    <div class="carousel-item">
	      <img src="<%=routeWeek.getRoutew_img2() %>">
	      <div class="carousel-caption">	        
	      </div>
	    </div>
	    <div class="carousel-item">
	      <img src="<%=routeWeek.getRoutew_img3() %> ">
	      <div class="carousel-caption">	        
	      </div>
	    </div>
	    <div class="carousel-item">
	      <img src="<%=routeWeek.getRoutew_img4() %>">
	      <div class="carousel-caption">	        
	      </div>
	    </div>
	    <div class="carousel-item">
	      <img src="<%=routeWeek.getRoutew_img5() %>">
	      <div class="carousel-caption">	        
	      </div>
	    </div>
	  </div> 
	 </div> 
	  <div class="routew_name">路线：<%=routeWeek.getRoutew_name() %></div>
	  <div class="routew_price">价格：<%=routeWeek.getRoutew_price() %></div>
	  <div class="routew_route">详情：<%=routeWeek.getRoutew_route() %></div>	  
  </div>
  <% } %>
  
  </div>
  <jsp:include page="footer.jsp"></jsp:include>
  </body>
</html>
