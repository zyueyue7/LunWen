<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<!-- index的样式 -->
	<!-- <link rel="stylesheet" type="text/css" href="css/style1.css"> -->
	
 	<link rel="stylesheet" type="text/css" href="css/cssfood/olstyle.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="css/cssfood/settings.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="css/cssfood/olcontent.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="css/cssfood/bootstrap.min.css">
	<script type="text/javascript" src="js/jsfood/jquery.min.js"></script>	
	<script type="text/javascript" src="js/jsfood/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="js/jsfood/jquery.cssAnimate.mini.js"></script>
	<script type="text/javascript" src="js/jsfood/jquery.touchwipe.min.js"></script>
	<script type="text/javascript" src="js/jsfood/jquery.mousewheel.min.js"></script>
	<script type="text/javascript" src="js/jsfood/jquery.themepunch.services.min.js"></script>
	<link href='css/cssfood/olcss.css' rel='stylesheet' type='text/css'>
	<style type="text/css">
		.example-wrapper {
			margin-left: 25px;
			background-color: #fafafa;
		}
	</style>
  </head>
  
  <body>
	<div class="example-wrapper" style="margin-top:10px;">
	<div id="services-example-1" class="theme1">
		<ul>
			<!--
			#############
			-	SLIDE 1	-
			#############
			-->
			<li>
			<img class="thumb" src="images/food/huamo1.png" data-bw="images/food/huamo2.png">
				<div style="margin-top:16px"></div>
					<div id="MTextAre">
						<h2>闻喜花馍</h2>
						<div><p>闻喜花馍是运城极具传统特色的糕点，有着非常悠久的历史，据记载已有一千多年的历史了，在明清时期尤为盛行。</p></div>
					</div>
					<div id="buttomLocation"><a class="buttonlight morebutton" href="#">查看更多</a>
				</div>
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more"> <img class="big-image" width="45%" height="35%" src="images/food/huamo3.png">
					<h3 align="center">闻喜花馍介绍</h3><br/>
					<div style="position:relative; right:1%;">
						<p>闻喜花馍</p><br/>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;选用优质的面粉为主要原料，在经过搓、团、捻、擀等十多道复杂的工作，最后还要经过制酵，蒸制，插面花等百多道复杂的小工序，制作出来的闻喜花馍造型多样，婚礼寿诞等大日子，运城人都会制作花馍来庆贺。</p>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;闻喜花馍的制作工艺在2008年便被列为第二批国家非物质文化遗产，并在2012举办的“中国·闻喜花馍文化节”上创造了四项世界纪录。</p>
					</div>				
				</div>
			</li>
			<!--
			#############
			-	SLIDE 2	-
			#############
			-->
			<li> <img class="thumb" src="images/food/shuli1.png" data-bw="images/food/shuli2.png">
				<div style="margin-top:16px"></div>
				<div id="MTextAre"><h2>王过酥梨</h2>
				<p>王过酥梨外型大而美观，肉质细嫩，吃起来汁多味甜，含有维生素，钙等丰富营养，有止咳化痰，润肺清火等功效。</p>
				</div>
				<a class="buttonlight morebutton" href="#">查看更多</a> 
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more">
<!-- 				<iframe class="video_clip" src="http://www.youtube.com/embed/kjX-8kQmakk?hd=1&amp;wmode=opaque&amp;autohide=1&amp;showinfo=0" height="280" width="498" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe> -->				
					<img class="big-image" width="45%" height="35%" src="images/food/shuli3.png">
 					<h3 align="center">王过酥梨介绍</h3><br/>
					<div style="position:relative; right:1%;">
						<p>王过酥梨（Free Skiing）</p><br/>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;王过酥梨是山西运城的特色水果，运城王过村地理环境十分优越，气候宜人，土壤丰富，非常适合酥梨的生长，所种植出来的王过酥梨外型大而美观，色泽金黄，肉质细嫩，吃起来汁多味甜，爽脆可口，</p>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;王过酥梨不仅可以鲜食，也可以制成罐头，榨成果汁，加工成梨膏食用，产品已经销往全国，是你赠送亲友的必备佳品。</p>
					</div>
					
				</div>
			</li>
			<!--
			#############
			-	SLIDE 3	-
			#############
			-->
			<li> <img class="thumb" src="images/food/mahua1.png" data-bw="images/food/mahua2.png">
				<div style="margin-top:16px"></div>
				<div id="MTextAre">
					<h2>稷山麻花</h2>
					<p>稷山麻花是山西运城的传统风味小吃，有着非常悠久的历史，距今已有数千年的历史了，曾一度为宫廷佳品。</p>
				</div>
				<a class="buttonlight morebutton" href="#">查看更多</a> 
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more">
<!-- 				<iframe class="video_clip" src="http://www.youtube.com/embed/kjX-8kQmakk?hd=1&amp;wmode=opaque&amp;autohide=1&amp;showinfo=0" height="280" width="498" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe> -->				
					<img class="big-image" width="45%" height="35%" src="images/food/mahua3.png">
 					<h3 align="center">稷山麻花介绍</h3><br/>
					<div style="position:relative; right:1%;">
						<p>稷山麻花</p><br/>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;选用优质的面粉，砂糖为主要原料，在配以碱粉，明矾，食用盐等配料，最后经过传统的制作工艺制作而成，最后炸出来的稷山麻花外表金黄吃起来集香，酥，脆一体。</p>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;目前稷山麻花已经销往北京、上海等地，深受消费者的喜爱，也有很多人买来赠送给亲友。</p>					
					</div>
			
				</div>
			</li>
			<!--
			#############
			-	SLIDE 4	-
			#############
			-->
			<li> <img class="thumb" src="images/food/mapian1.png" data-bw="images/food/mapian2.png">
				<div style="margin-top:16px"></div>
				<div id="MTextAre">
					<h2>芮城麻片</h2>
					<p>芮城麻片是山西运城的传统特色，有着悠久的历史，创始于明末清初年间，至今已有三百多年的历史了。</p>
				</div>
				<a class="buttonlight morebutton" href="#">查看更多</a> 
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more">
<!-- 				<iframe class="video_clip" src="http://www.youtube.com/embed/kjX-8kQmakk?hd=1&amp;wmode=opaque&amp;autohide=1&amp;showinfo=0" height="280" width="498" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe> -->				
					<img class="big-image" width="45%" height="35%" src="images/food/mapian3.png">
 					<h3 align="center">芮城麻片介绍</h3><br/>
					<div style="position:relative; right:1%;">
						<p>芮城麻片</p><br/>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;芮城麻片选用优质的芝麻，小米饴糖，熟面粉为主要原料，在配以白砂糖，植物油等配料，然后经过传统的制作工艺制作而成，最后制作出来的芮城麻片片薄如纸，甜而不腻，酥脆可口。</p>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;经证明，长期使用芮城麻片，还能舒肝健脾，消除疲劳，促进新陈代谢，而且老少皆宜。</p>
					</div>
			
				</div>
			</li>
			<!--
			#############
			-	SLIDE 5	-
			#############
			-->
			<li> <img class="thumb" src="images/food/zhubing1.png" data-bw="images/food/zhubing2.png">
				<div style="margin-top:16px"></div>
				<div id="MTextAre">
					<h2>闻喜煮饼</h2>
					<p>闻喜煮饼是山西运城的地方传统名点，有着悠久的历史，创始于清朝康熙年间，距今已有三百多年的历史。</p>
				</div>
				<a class="buttonlight morebutton" href="#">查看更多</a> 
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more">
<!-- 				<iframe class="video_clip" src="http://www.youtube.com/embed/kjX-8kQmakk?hd=1&amp;wmode=opaque&amp;autohide=1&amp;showinfo=0" height="280" width="498" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe> -->				
					<img class="big-image" width="45%" height="35%" src="images/food/zhubing3.png">
 					<h3 align="center">闻喜煮饼介绍</h3><br/>
					<div style="position:relative; right:1%;">
						<p>闻喜煮饼</p><br/>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;制作闻喜煮饼时要选用优质的面粉为主要原料，再配以白糖，红糖，香油等配料，在经过传统的制作工艺制作出来，所制作出来的闻喜煮饼松软有弹性，吃起来甜而不腻，味道纯正，而且越嚼越香。</p>	
					</div>
		
				</div>
			</li>
			<!--
			#############
			-	SLIDE 6	-
			#############
			-->
			<li> <img class="thumb" src="images/food/banzao1.png" data-bw="images/food/banzao2.png">
				<div style="margin-top:16px"></div>
				<div id="MTextAre">
					<h2>稷山板枣</h2>
					<p>稷山海拔较低，日照强，昼夜温差大，非适合板枣的生长，所种植出来的板枣色泽红润，皮薄肉厚，吃起来味道甘甜。</p>
				</div>
				<a class="buttonlight morebutton" href="#">查看更多</a> 
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more">
<!-- 				<iframe class="video_clip" src="http://www.youtube.com/embed/kjX-8kQmakk?hd=1&amp;wmode=opaque&amp;autohide=1&amp;showinfo=0" height="280" width="498" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe> -->				
					<img class="big-image" width="45%" height="35%" src="images/food/banzao3.png">
 					<h3 align="center">稷山板枣介绍</h3><br/>
					<div style="position:relative; right:1%;">
						<p>稷山板枣</p><br/>					
						<p>&nbsp;&nbsp;&nbsp;&nbsp;稷山板枣是山西运城的特色产品，有着非常悠久的历史，山西省运城稷山种植板枣有着非常悠久的历史，至今已有一千多年了，是历代皇宫的贡品。</p>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;稷山海拔较低，日照强，昼夜温差大，非常适合板枣的生长，所种植出来的板枣色泽红润，皮薄肉厚，吃起来味道甘甜。</p>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;还含有钾、钠、锰等多种微量元素，还对降血压，健脑，防癌等有一定的疗效，是一种高级的补品，非常适合赠送亲友。</p>
					</div>

				</div>
			</li>
			<!--
			#############
			-	SLIDE 7	-
			#############
			-->
			<li> <img class="thumb" src="images/food/shizi1.png" data-bw="images/food/shizi2.png">
				<div style="margin-top:16px"></div>
				<div id="MTextAre">
					<h2>北景柿子</h2>
					<p>北景柿子外观艳丽，果顶浓红色，果肉橙红色，肉质硬，味道甘甜爽口，吃起来汁多味甜，营养极其丰富。</p>
				</div>
				<a class="buttonlight morebutton" href="#">查看更多</a> 
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more">
<!-- 				<iframe class="video_clip" src="http://www.youtube.com/embed/kjX-8kQmakk?hd=1&amp;wmode=opaque&amp;autohide=1&amp;showinfo=0" height="280" width="498" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe> -->				
					<img class="big-image" width="45%" height="35%" src="images/food/shizi3.png">
 					<h3 align="center">北景柿子介绍</h3><br/>
					<div style="position:relative; right:1%;">
						<p>北景柿子</p><br/>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;现在正式吃柿子、柿子饼的好好季节，运城临猗县北景乡九是个盛产柿子的地方，2011年认定为地理标志农产品。北景柿子外观艳丽，果顶浓红色，果肉橙红色，肉质硬，味道甘甜爽口，营养极其丰富。</p>						
					</div>
					
				</div>
			</li>
			<!--
			#############
			-	SLIDE 8 -
			#############
			-->
			<li> <img class="thumb" src="images/food/yingtao1.png" data-bw="images/food/yingtao2.png">
				<div style="margin-top:16px"></div>
				<div id="MTextAre">
					<h2>绛县大樱桃</h2>
					<p>绛县大樱桃果型较大，外观滚圆，红的像玛瑙一样，酸酸甜甜的，风味独特，营养价值特别高，可以帮助肾脏排毒。</p>
				</div>
				<a class="buttonlight morebutton" href="#">查看更多</a> 
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more">
<!-- 				<iframe class="video_clip" src="http://www.youtube.com/embed/kjX-8kQmakk?hd=1&amp;wmode=opaque&amp;autohide=1&amp;showinfo=0" height="280" width="498" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe> -->				
					<img class="big-image" width="45%" height="35%" src="images/food/yingtao3.png">
 					<h3 align="center">绛县大樱桃介绍</h3><br/>
					<div style="position:relative; right:1%;">
						<p>绛县大樱桃</p><br/>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;运城市绛县的特产，依托独特的自然生态环境，当地政府积极引导农民种植大樱桃，目前已经销往全国20多个省份。绛县大樱桃果型较大，外观滚圆，红的像玛瑙一样漂亮，酸酸甜甜的，风味独特，营养价值特别高，可以帮助肾脏排毒。</p>

					</div>
		
				</div>
			</li>
			<!--
			#############
			-	SLIDE 9	-
			#############
			-->
			<li> <img class="thumb" src="images/food/pingguo1.png" data-bw="images/food/pingguo2.png">
				<div style="margin-top:16px"></div>
				<div id="MTextAre">
					<h2>万荣苹果</h2>
					<p>色泽纯正、果面光洁；发育充分，具有适于市场或储存要求的成熟度；果型端正或较端正，果个整齐；果梗完整。 </p>
				</div>
				<a class="buttonlight morebutton" href="#">查看更多</a> 
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more">
<!-- 				<iframe class="video_clip" src="http://www.youtube.com/embed/kjX-8kQmakk?hd=1&amp;wmode=opaque&amp;autohide=1&amp;showinfo=0" height="280" width="498" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe> -->				
					<img class="big-image" width="45%" height="35%" src="images/food/pingguo3.png">
 					<h3 align="center">万荣苹果介绍</h3><br/>
					<div style="position:relative; right:1%;">
						<p>万荣苹果</p><br/>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;万荣苹果色泽纯正、果面光洁；发育充分，具有适于市场或储存要求的成熟度；果型端正或较端正，果个整齐；果梗完整或统一剪除。 </p>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;果色鲜艳、果肉白色，果实表面颜色着色度90%以上。杂质无碰压伤、磨伤、果锈、水锈、药害、日灼、雹伤、虫伤等品质基础要求.各品种、各等级的苹果，都应果实完整良好、新鲜，无病虫害；具有本品种的特有风味。</p>
					</div>
			
				</div>
			</li>
			<!--
			#################
			-	SLIDE 10	-
			#################
			-->
			<li> <img class="thumb" src="images/food/shuiijiao1.png" data-bw="images/food/shuijiao2.png">
				<div style="margin-top:16px"></div>
				<div id="MTextAre">	
					<h2>永济水饺</h2>
					<p>永济饺子的奇特之处在于用料和拌馅，它们用亲自熬制的骨头汤拌馅，堪称一绝，目前在国内都无可比拟。</p>
				</div>
				<a class="buttonlight morebutton" href="#">查看更多</a> 
				<!--
				***********************************************************************************************************
					-	HERE YOU CAN DEFINE THE EXTRA PAGE WHICH SHOULD BE SHOWN IN CASE THE "BUTTON" HAS BEED PRESSED -
				***********************************************************************************************************
				-->
				<div class="page-more">
<!-- 				<iframe class="video_clip" src="http://www.youtube.com/embed/kjX-8kQmakk?hd=1&amp;wmode=opaque&amp;autohide=1&amp;showinfo=0" height="280" width="498" frameborder="0" webkitAllowFullScreen allowFullScreen></iframe> -->				
					<img class="big-image" width="45%" height="35%" src="images/food/shuijiao3.png">
 					<h3 align="center">永济水饺</h3><br/>
					<div style="position:relative; right:1%;">
						<p>永济水饺</p><br/>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;晋南人普遍都是比较喜欢吃饺子的，特别在逢年过节的时候，饺子那是必吃的。运城的永济县，因为回民比较多，所以就宰杀自己养的牛，制作牛肉饺子。</p>
						<p>&nbsp;&nbsp;&nbsp;&nbsp;饺子皮薄，久煮不烂，吃起来鲜、香、嫩、滑，技能当主食，又可以做下酒菜，回味无穷。有“吃饺子喝酒，越吃越有的说法”。</p>
					</div>
	
				</div>
			</li>
			
			
		</ul>
		<!--
		#####################################
		-	TOOLBAR (LEFT/RIGHT) BUTTONS	-
		#####################################
		-->
		<div class="toolbar">
			<div class="left"></div>
			<div class="right"></div>
		</div>
	</div>
</div>





<script type="text/javascript">
$(function() {
	$.noConflict();
	jQuery('#services-example-1').services(
		{
			width:1000,
			height:290,			
			slideAmount:5,
			slideSpacing:30,
			touchenabled:"on",
			mouseWheel:"on",
			hoverAlpha:"off",
			slideshow:3000,
			hovereffect:"on",
			callBack:function() { }
		});
	jQuery('#services-example-2').services(
		{
			width:720,
			height:345,
			slideAmount:6,
			slideSpacing:20,
			touchenabled:"on",
			mouseWheel:"on",
			hoverAlpha:"off",
			slideshow:3000,
			hovereffect:"on",
			callBack:function() { }
		});
});
</script>
	
	
 
  
  
  </body>
</html>
