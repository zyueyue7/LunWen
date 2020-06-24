<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'route-day.jsp' starting page</title>
    
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
  	
  	<script>
		$(document).ready(function(){
  			$(".first").click(function(){
    			$(".first_show").toggle(500);
    			$(".first_hidden").toggle(500);
  			});
		});
		$(document).ready(function(){
  			$(".second").click(function(){
    			$(".second_show").toggle(500);
    			$(".second_hidden").toggle(500);
  			});
		});
		$(document).ready(function(){
  			$(".third").click(function(){
    			$(".third_show").toggle(500);
    			$(".third_hidden").toggle(500);
  			});
		});
		$(document).ready(function(){
  			$(".forth").click(function(){
    			$(".forth_show").toggle(500);
    			$(".forth_hidden").toggle(500);
  			});
		});
		$(document).ready(function(){
  			$(".fifth").click(function(){
    			$(".fifth_show").toggle(500);
    			$(".fifth_hidden").toggle(500);
  			});
		});
	</script>
  	
  	
	<style>
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
	
		/*内容的样式 开始啦*/
 		.card {
 			width: 1100px;
 			margin: 0 auto;
 		}
 		.container {
 			margin: 20px 0 0;
 		}		
 		.card_title {
 			width: 1100px;
 			/* height: 200px; */
 			margin: 25px auto 5px;
 		}
 		strong {
 			font-size: 22px;
 			font-weight: 400;
 		}
 		span {
 			color: blue;
 		}
 		.card_show {
 			displap: block;
 		}
 		.card_hidden {
 			display: none;
 			width: 1100px;
 			height: 256px;
 		}
 		/*内容的样式 结束啦*/
 	</style>
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

  	<!-- 导航栏 结束啦 -->
  
  	<!-- 内容 开始啦 -->
    <div>
  		<div class="card_title">
  			<strong>关帝庙——盐湖 一日游</strong> 
  			<span class="first" >了解行程</span>
  			<!-- <button>了解行程</button> -->
  		</div>		
  		<div class="card card_show first_show">
  			<div class = "container">
  				<img src = "images/route/gdm.png" class="img-thumbnail" >  
    			<img src = "images/route/yh.png" class="img-thumbnail" >    				
  			</div>
    		<div class="card-body">
      			<h5 class="card-title">行程概述</h5>
      			<p class="card-text">来到运城，怎能不前来拜谒武圣关公的故里，全中国最大最古老的解州关帝庙呢？之后前往有“中国死海”之称的运城盐湖，感受高盐含量的湖水带来不可思议的浮力，即使不会游泳，也可在这里玩个尽兴。运城的美食遍布在大街小巷，您一定要尝尝运城的涮牛肚和羊肉泡馍，不比西安的逊色！</p>     			
    		</div>
    	</div>
    	<div class="card card_hidden first_hidden">  			
    		<div class="card-body">
      			<h5 class="card-title">上午</h5>
      			<p class="card-text">游览中国传统道德文化的神圣殿堂、武庙之祖—解州关帝庙，与山东文庙，一文一武遥相呼应。中午可在景区附近饭店品尝解州羊肉泡等当地特色美食。</p>     			
    			<h5 class="card-title">下午</h5>
    			<p class="card-text">游览全世界唯一可与以色列死海相媲美的运城盐湖，山西省最大的湖泊，湖中的黑泥蕴含七种常量和十六种微量元素。湖水中可以人体泛舟，湖中黑泥可以美肌活肤，被誉为中国死海。体验“四绝”矿泉水疗、盐水漂浮、黑泥养生、特色盐疗。感受神奇，收获健康。</p>
    		</div>
    	</div>
    	
    	
  		<div class="card_title">
  			<strong>永乐宫 ——大禹渡——圣天湖 一日游</strong> 
  			<span class="second" >了解行程</span>
  		</div>   	
  		<div class="card card_show second_show">
    		<div class = "container">
  				<img src = "images/route/ylg.png" class="img-thumbnail" >  
    			<img src = "images/route/dyd.png" class="img-thumbnail" >  
   				<img src = "images/route/sth.png" class="img-thumbnail" >  
  			</div>
    		<div class="card-body">
      			<h5 class="card-title">行程概述</h5>
      			<p class="card-text">在高中的历史课本上，早已目睹过中国壁画艺术的巅峰之作--永乐宫朝元图的神采，您一定会被这座元代最美道观无与伦比的气势和线条之美震撼。广仁王庙虽历经岁月沧桑，“中国四大唐代建筑”的标签令它成为中国最珍贵的木构建筑之一，传统的信仰延续千年，这两处古建就是最好的见证。</p>     			
    		</div>
    	</div>
    	<div class="card card_hidden second_hidden">  			
    		<div class="card-body">
      			<h5 class="card-title">上午</h5>
      			<p class="card-text">游览全真教三大祖庭之一的永乐宫，保存有极其丰富的道教艺术遗物，尤以其精美壮丽的元代壁画令人惊叹。</p>     			
    			<h5 class="card-title">下午</h5>
    			<p class="card-text">游览素有“黄河明珠”之称的大型水利工程——大禹渡，乘坐气垫船，完后游览黄河湿地——圣天湖。</p>
    		</div>
    	</div>
    	
    	
  		<div class="card_title">
  			<strong>历山 一日游</strong> 
  			<span class="third">了解行程</span>
  		</div>
  		<div class="card card_show third_show">
    		<div class = "container">
  				<img src = "images/route/ls.png" class="img-thumbnail" >   
  			</div>
    		<div class="card-body">
      			<h5 class="card-title">行程概述</h5>
      			<p class="card-text">历山是我国传说中舜王耕治的地方。相传舜王当年耕治此山时，曾编制了黄河历山图片流域的物候历——《七十二候》，故后人称此山为历山。这处国家级自然保护区位于山西省翼城、垣曲、阳城、沁水四县交界处，面积24800公顷。珍稀植被和野生动物星罗棋布，是运城地区最美的自然氧吧之一。</p>     			
    		</div>
    	</div>
    	<div class="card card_hidden third_hidden">  			
    		<div class="card-body">
      			<h5 class="card-title">上午</h5>
      			<p class="card-text">游览华北最高的亚高山草甸—历山，历山被誉为“天然大公园”，是一个大气、土壤、水源、环境质量品位极高的、无污染的自然风景区，1982年被国务院确定为国家级自然保护区。在这里可以体验到西藏和青海等地才有的高原风情。</p>     			
    			<h5 class="card-title">下午</h5>
    			<p class="card-text">游览舜王坪，感受舜帝的神勇与仁爱。</p>
    		</div>
    	</div>
    	
    	
  		<div class="card_title">
  			<strong>普救寺——蒲津渡——鹳雀楼 一日游</strong> 
  			<span class="forth">了解行程</span>
  		</div>
  		<div class="card card_show forth_show">
    		<div class = "container">
  				<img src = "images/route/pjs.png" class="img-thumbnail" >  
    			<img src = "images/route/pjd.png" class="img-thumbnail" >  
   				<img src = "images/route/gql.png" class="img-thumbnail" >  
  			</div>
    		<div class="card-body">
      			<h5 class="card-title">行程概述</h5>
      			<p class="card-text">永济，古称蒲坂，传为舜都。这里历史悠久，人文荟萃，是中华民族的发祥地之一，唐朝中都所在地，是著名爱情故事《西厢记》的发生地、四大名楼“鹳雀楼”所在地。自古名士辈出，舜帝、柳宗元、王维、聂夷中、杨贵妃、司空图、马远、杨博等，声名远扬。</p>
    		</div>
    	</div>
    	<div class="card card_hidden forth_hidden">  			
    		<div class="card-body">
      			<h5 class="card-title">上午</h5>
      			<p class="card-text">游览古典名著《西厢记》故事发生地普救寺，因张生和崔莺莺的爱情故事而被誉为“爱情圣地”。其“莺莺塔”被称为中国四大回音建筑之一，世界八大奇塔。</p>     			
    			<h5 class="card-title">下午</h5>
    			<p class="card-text">游览中华瑰宝唐开元—黄河大铁牛，四尊铁牛是至今我国发现的历史最早、体积最大、工艺最精的渡口维桥铁牛，是古蒲津桥的“镇桥之宝”。之后登中国四大名楼之—鹳雀楼，是我国最大的仿唐建筑，因唐代诗人王之涣的《登鹳雀楼》而名扬海内外，被称为中国四大历史名楼之一。</p>
    		</div>
    	</div>
    	
  		<div class="card_title">
  			<strong>飞云楼——后土祠——李家大院  一日游</strong> 
  			<span class="fifth">了解行程</span>
  		</div>
  		<div class="card card_show fifth_show">
    		<div class = "container">
  				<img src = "images/route/fyl.png" class="img-thumbnail" >  
    			<img src = "images/route/htc.png" class="img-thumbnail" >  
   				<img src = "images/route/ljdy.png" class="img-thumbnail" >  
  			</div>
    		<div class="card-body">
      			<h5 class="card-title">行程概述</h5>
      			<p class="card-text">万荣无疑是中国最具幽默感的地域，万荣笑话在中国民间文化中独树一帜。鉴赏保存至今的中国楼阁大作---飞云楼，精美的十字歇山顶把每层楼阁出挑的无比非凡。李家大院又有别于其他晋商大院的风格气势，令您耳目一新。</p>
    		</div>
    	</div>
    	<div class="card card_hidden fifth_hidden">  			
    		<div class="card-body">
      			<h5 class="card-title">上午</h5>
      			<p class="card-text">游览堪称我国楼阁建筑之杰作的万荣飞云楼，它为纯木质结构，楼中无一枚铁钉，是东岳庙内建筑群中的精华所在。民谚有“万荣有个解店楼，半截插在天里头”。每当阳光普照，碧空如洗之日，十余里外也能遥见其倩影。若是天公作美，再飘来几朵云彩，缠绕楼顶，真有高耸人云、凌空欲飞之感。之后游览古代帝王祭祀后土—华夏始祖女娲氏的处所后土庙。</p>     			
    			<h5 class="card-title">下午</h5>
    			<p class="card-text">游览晋南独一无二的巨商豪宅李家大院，它是山西众多富有地方特色民居中的一朵奇葩，与乔家大院、王家大院并称为“晋商三蒂莲”，素有“乔家看名，王家看院，李家看善”之说。</p>
    		</div>
    	</div>
    <!-- 内容 结束啦 -->
    <jsp:include page="footer.jsp"></jsp:include> 
  	</div>
  </body>
</html>
