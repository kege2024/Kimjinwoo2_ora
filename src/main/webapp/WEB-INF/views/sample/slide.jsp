<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!-- 위 뷰포트 메타태그 값은 모바일 기기에서 화면을 최적화 시키는 기능이 있음(필수) -->
<title>반응형웹의구조</title>
  <style>
      .center { margin:0 auto;}
      .row {
      /* overflow: hidden */
      width:100%;
      max-width:960px;
      min-width:748px;
      margin:0 auto;
      }
      .col-1, .col-2, .col-3, .col-4, .col-5, .col-6, .col-7, .col-8, .col-9, .col-10, .col-11 {
      float: left;
      margin-right: 3.8%;
      min-height: 1px;
      }
      .row .col-1 { width: 4.85%; }
      .row .col-2 { width: 13.45%; }
      .row .col-3 { width: 22.05%; }
      .row .col-4 { width: 30.75%; }
      .row .col-5 { width: 39.45%; }
      .row .col-6 { width: 48%; }
      .row .col-7 { width: 56.75%; }
      .row .col-8 { width: 65.4%; }
      .row .col-9 { width: 74.05%; }
      .row .col-10 { width: 82.7%; }
      .row .col-11 { width: 91.35%; }
      .row .col-12 { width: 100%; float:left;}
      .last { margin-right: 0;}
      [class^=col]>:first-child { margin-top:0; }
      img, object, embed, iframe {
       max-width: 100%;
      }
      img, iframe { height: auto; }
      .fr { float: right; }
      
      /* tablet Size: 960px 이하 */
      @media all and (max-width:960px) {
      body {
       font-size: 16px;
       line-height: 24px;
      }
      .row, body, .container {
      width:100%;
      min-width: 0;
      margin-left: 0;
      margin-right: 0;
      padding-left: 0;
      padding-right: 0;
      }
     .row .col-1, .row .col-2, .row .col-3, .row .col-4, .row .col-5, .row .col-6,
		.row .col-7, .row .col-8, .row .col-9, .row .col-10, .row .col-11,
		.row .col-12 
		{float: none;
      width: auto;
      margin-left: 0;
      margin-right: 0;
      padding-left: 20px;
      padding-right: 20px;
      }
      
      }
      .clearfix:after {
      content:"";
      display:block;
      clear: both;
      }
      .blind {
      visiblity: hidden;
      position: absolute;
      top: -10000px;
      height: 1px;
      width: 1px;
      }
      .row {
      margin-right: auto !important;
      margin-left: auto !important;
      }
    
}     
 </style>
 <style>
	@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
	/* 구글 나눔폰트 가져오기 */
	body, h1, h2, h3, h4, h5, h6, li, p {
	font-family:"Nanum Gothic", "NanumGothic" !important;
	font-size:14px; line-height:24px;
	}
	body { margin:0px; padding:0px; }
	body header {
	background: url(/resources/images/head2.jpg) no-repeat 50% 55%;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	background-size: cover;
	position:fixed;
	width:100%;
	top:0px;
	height:90px;
	z-index:1000;
	}
	body > section {
	margin-top:90px;
	}
	body ul, body ol {
	padding: 0;
	list-style: none;
	}
	body header .row #gnb,
	body header .row {
	position: relative;
	margin: 0 auto;
	}
	body header .row #brand {
	background: url(/resources/images/logo.png) no-repeat 0% 50%;
	height: 90px;
	width: 90px;
	margin: 0px;
	text-indent: -10000px;
	}
	body header .row #brand:hover {
	background-color: rgba(0,0,0,0.1)
	}
	body header .row #brand:hover:before {
	top: 35px;
	-webkit-transform: rotate(360deg);
	-moz-transform: rotate(360deg);
	-ms-transform: rotate(360deg);
	transform: rotate(360deg);
	}
	body header .row #gnb {
	position: absolute;
	top: 35px;
	right: 0;
	}
	body header .row #gnb ul {
	margin: 0;
	}
	body header .row #gnb ul li {
	float: left;
	margin-right: 30px;
	}
	body header .row #gnb ul li:last-child {
	margin-right: 0;
	}
	body header .row #gnb ul li a {
	font-size: 20px;
	color: white;
	text-decoration: none;
	text-shadow: 0 2px #282020;
	}
	body header .row #gnb ul li a:hover,
	body header .row #gnb ul li a:focus {
	color: Pink;
	text-shadow: none;
	font-weight: bold;
	}
	body section#contents h2,
	body section#contents h3 {
	position: relative;
	margin-bottom: 40px;
	border-bottom: 1px solid #e1dcda;
	padding-bottom: 20px;
	font-size: 24px;
	line-height: 34px;
	color: orange;
	padding: 20px;
	}
	body section#contents h2:before,
	body section#contents h3:before {
	content: "";
	position: absolute;
	width: 34px;
	height: 1px;
	background: orange;
	top: -10px;
	left: -36px;
	-webkit-transform: rotate(45deg);
	-moz-transform: rotate(45deg);
	-ms-transform: rotate(45deg);
	transform: rotate(45deg);
	}
	body section#contents li {
	margin-bottom: 60px;
	}
	body section#contents li img {
	border: 3px solid pink;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	}
	body section#contents li h4,
	body section#contents li h5 {
	font-size:22px;
	}
	body section#contents li h5 {
	margin-top: 22px;
	margin-bottom: 32px;
	}
	body section#contents li p {
	font-size: 14px;
	line-height: 24px;
	color: #818181;
	}
	body footer {
      border-top: 1px solid #e2e2e2;
      padding-top: 20px;
   	background: url(/resources/images/head.png) no-repeat 50% 55%;   
    }
    body footer p {
      padding-top: 40px;
      padding-bottom: 40px;
      background: url(/resources/images/logo.png) no-repeat 100% 50%; 
    }
    
    body footer p small {
      display: block;
      line-height: 1.2;
    }
    body footer p small a:link, body footer p small a:visited {
      color: #606060;
      text-decoration: none;
    }
    body footer p small a:hover, 
    body footer p small a:active {
      color: #212121;
    }
    ::selection {
      background-color: #eee7dd;
      color: aqua;
    }
    ::-moz-selection {
      background-color: #eee7dd;
      color: #542e1c;
    }
    /* 태블릿: 960 이하 */
@media all and (max-width: 960px) {
	body section#contents li, .row .col-1, .row .col-2, .row .col-3, .row .col-4,
		.row .col-5, .row .col-6, .row .col-7, .row .col-8, .row .col-9, .row .col-10,
		.row .col-11, .row .col-12 {
		text-align: center;
	}
	body header, body section#contents, body footer {
		width: 100%;
		padding-left: 0%;
		padding-right: 0%;
	}
	section.banner_slider {
		display: none;
	}
	body section#contents {
		margin-top: 90px;
	}
	nav > ul { display: none;}
	
	body header {
		z-index: 999;
	}
	body header .hamberger {
		float: right;
	}
	body header a#pull {
		position: relative;
		top: -55px;
	}
	body header a#pull:after {
		content: "";
		background: url('/resources/images/nav-icon.png') no-repeat;
		width: 30px;
		height: 30px;
		position: absolute;
		right: 0px;
	}
	body header .row #gnb {
		position: static;
	}
	body header .row #gnb ul {
		background-color: pink;
		width: 100%;
	}
	body header .row #gnb ul li {
	float: none;
	margin-right: 0;
	margin-bottom: 1px;
	border-top: 1px solid pink;
	border-bottom: 1px solid #555;
	padding: 10px 30px;
	background-color: olive;
	}
	body header .row #gnb ul li:hover,
	body header .row #gnb ul li:active {
	background-color: rgba(150,50,0,1);
	}
	body header .row #gnb ul li a {
	color: white;
	text-shadow: none;
	}
	section#contents #main img,
	section#contents #sub img {
	width: 90%;
	padding: 10px;
	border: 1px solid #e0e0e0;
	background: olive;
	}
	footer p {
	padding-top: 0px !important;
	padding-bottom: 15px !important;
	width: 90% !important;
	margin: 0 auto !important;
	background: none !important;
	}
}

.nivo-caption { text-align: center !important; }
.nivoSlider { height:400px !important;}
.nivoSlider img { height:400px !important; }
.row {
    margin-right: auto !important;
    margin-left: auto !important;
}
.item img {
	height: 600px !important;
	width: 100% !important;
}
.carousel-control .slide_arrow {
position: absolute;
top: 50%;
}


</style>

<script src="/resources/js/jquery.min.js"></script>
<script type="text/javascript">
//모바일메뉴 로딩시	
	$(document).ready(function($) { //j쿼리 시작 : $(document).ready(function(){ }); == $(function(){ }); 과 동일
	//모바일메뉴 로딩시
	var pull = $('#pull');
	var menu = $('nav > ul');
	$(pull).on('click', function(e) {
		var w = $(window).width();
		if(w<960) {
			if(menu.is(':visible')) {
				menu.slideToggle("fast");
				return;
			}
			if(menu.is(':hidden')) {
				menu.slideToggle("slow");
				return;
			}
		}
	});//click 이벤트 끝
	//모바일 토클에 대한 스타일 -> PC에서는 없앤다.
	$(window).resize(function() {
		// alert(); //디버그
		var w = $(window).width();
		var menu = $('nav > ul');
		if(w>960) {
			menu.removeAttr('style');
		}else{
			
		}
		return;
	});
	
	
	
	});
</script>
</head>
<body>
	<header>
		<div class="row">
			<h1 id="brand">
				<a href="javascript:;">Time-Space.biz</a>
			</h1>
			<div class="hamberger">
				<a id="pull" href="javascript:;"></a>
			</div>
			<nav id="gnb">
				<a href="#contents" class="blind">skip navigation</a>
				<ul class="clearfix">
					<li><a href="javascript:;" title="Study CSS">Study CSS</a></li>
					<li><a href="javascript:;" title="Study LIB">Study LIB</a></li>
					<li><a href="javascript:;" title="Posts">Posts</a></li>
					<li><a href="javascript:;" title="WordPress">WordPress</a></li>
					<li><a href="javascript:;" title="Login">Login</a></li>
					<li><a href="javascript:;" title="Join">Join</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<!-- e:header-->
	<!--  
	<script src="/resources/js/jquery.nivo.slider.js"></script>
	 <link href="/resources/css/nivo-slider.css" media="screen" rel="stylesheet" type="text/css">
	 <script type="text/javascript">
	 jQuery(function($){ 
         $('#slider').nivoSlider({
                 effect: 'slideInLeft',
                 directionNav: true,
                 controlNav: false,
                 pauseOnHover: true,
                 pauseTime: 15000,
                 prevText: '<span style="font-size:70px;color:brown;padding-left:10px;"><</span>',
     			  nextText: '<span style="font-size:70px;color:brown;padding-right:10px;">></span>',
           });
         $('.nivo-prevNav').on('mouseover', function(){
              $('#slider img').attr("data-transition","slideInRight");
         });
         $('.nivo-nextNav').on('mouseover', function(){
              $('#slider img').attr("data-transition","slideInLeft");
         });
   });
	 -->
<!-- 부트스트랩 -->
    <link href="/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script src="/resources/bootstrap/js/bootstrap.min.js"></script>
    	 <script>
    	 $(document).ready(function($) { 
    		 $('.carousel').carousel({
    			  interval: 2000,
    			  pause: false
    			})    
    			});
	 </script>	 
	<section class="banner_slider">
	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
  </ol>
  <div class="carousel-inner">
    <div class="item active">
      <img src="/resources/images/s3.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="item">
      <img src="/resources/images/s4.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="item">
      <img src="/resources/images/s3.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="item">
      <img src="/resources/images/s4.jpg" class="d-block w-100" alt="...">
  </div>
  <a class="left carousel-control" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
  </a>
  <a class="right carousel-control" href="#carouselExampleIndicators" role="button" data-slide="next">
       <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>

  </a>
</div>
 <!-- <a class="left carousel-control" style="font-size:40px; font-weight:bold;" href="#carouselExampleIndicators" data-slide="prev" onclick="$('#myCarousel').carousel('prev')">
	  <span span class="slide_arrow">&lt;</span>
	  </a>
<a class="right carousel-control" style="font-size:40px; font-weight:bold;" href="#carouselExampleIndicators" data-slide="next" onclick="$('#myCarousel').carousel('next')">
	  <span span class="slide_arrow">&gt;</span>
	  </a>	   -->
<!--  
		<div id="slider" class="nivoSlider">
			<img src="/resources/images/b6.jpg" width="10%" title="cupcake" />
						<img src="/resources/images/s1.jpg" width="10%" title="Tiramisu" />
						<img src="/resources/images/s2.jpg" width="10%" title="Muffin" />
						<img src="/resources/images/s3.jpg" width="10%" title="Creme brulee" />
						<img src="/resources/images/s4.jpg" width="10%" title="Pudding" />
			
		</div>
		-->
	</section>
	<section id="contents" class="row">
		<article id="main">
			<h2>아이쿡은 디저트 전문제조 업체입니다<br>
			아이쿡의 전문쉐프가 정성으로 만든 초콜릿과 와플 등의 디저트를 체험해보세요.</h2>
			<ul>
				<li class="clearfix"><img class="col-4"
					src="/resources/images/b1.jpg" alt="" width="296" height="206" />
					<div class="col-8 last">
						<h4>각종 기념일을 위한 특별한 디저트 제작</h4>
						<p>여러분의 소중한 기념일을 더욱 빛나게 만드는 전문가의 디저트를 제작해드립니다.<br>
						10여종이 넘는 케이크와 20여종의 다채로운 음료를 함께 즐겨보세요.</p>
					</div></li>
				<li class="clearfix"><img class="col-8 fr last"
					src="/resources/images/b2.jpg" alt="" width="620" height="416" />
					<div class="col-4">
						<h4>아이쿡은 유기농 식자재를<br> 기반으로한 건강한 재료로 만들어집니다. </h4>
						<p>디저트 제조업체는 많이있습니다. 저희 아이쿡은 다른 업체와는 다르게 고객만족뿐만 아니라 사회적 공헌을
						실천하는 사회적기업으로서 사회에서 소회된 취약계층에게 일자리를 제공하는 등 공생하고 있습니다.</p>
					</div></li>
			</ul>
		</article>	
		<!-- e:#main -->
		<article id="sub" class="row clearfix">
			<h3>
				최근 공지사항<br /> 아이쿡에서 현재 판매중인 디저트와 음료를 살펴볼수있습니다.
			</h3>
			<ul>
				<li class="col-3"><img src="/resources/images/b3.jpg" alt=""
					width="218" height="325" />
					<h5>계절에 맞추어<br> 
					추천해드리는 음료</h5>
					<p>여러분의 소중한 기념일을 더욱 빛나게 만드는 전문가의 디저트를 제작해드립니다.<br>
						10여종이 넘는 케이크와 20여종의 다채로운 음료를 함께 즐겨보세요</p></li>
				<li class="col-3"><img src="/resources/images/b4.jpg" alt=""
					width="218" height="326" />
					<h5>기념일, 장소에 맞는<br> 
					디저트 추천</h5>
					<p>아이쿡의 전문쉐프가 정성으로 만든 초콜릿과 와플 등의 디저트를 체험해보세요.</p></li>
				<li class="col-6 last"><img src="/resources/images/b5.jpg"
					alt="" width="459" height="324" />
					<h5>수제 젤라또 출시 완료</h5>
					<p>아이쿡에서 현재 판매중인 디저트와 음료를 살펴볼수있습니다.</p></li>
			</ul>
		</article>
		<!-- e:#sub-->
	</section>
	<!-- e:#contents-->
	<footer>
		<p class="row">
			<small> © 30-704 충남 천안시 동남구 문암로 76(안서동 115번지) 백석대학교 학생복지동 3층
				304호 타임스페이스 (창업보육센터 내) </small>
		</p>
	</footer>
	<!-- e:footer-->
	<a style="display:scroll;position:fixed;bottom:10px;right:10px;"
	href="#" title=TOP> <img src="/resources/images/arrows.png">	
</a>
</body>
</html>