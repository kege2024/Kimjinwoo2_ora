<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scaleable=no">
<title>we are</title>
<link rel="stylesheet" type="text/css" href="/resources/css/reset.css">
<link rel="stylesheet" type="text/css" href="/resources/css/common.css">
<link rel="shortcut icon" href="/images/favicon/favicon.ico">
<link rel="apple-touch-icon-precomposed"
	href="/images/favicon/home-touch-icon.png">
<script src="/resources/js/jquery.min.js"></script>
<script src="/resources/js/common.js"></script>
<style>
/* WE ARE 영역 CSS */
.display-section{
margin-top:30px;
text-align:center;
}
.display-section .sec-tit{
margin-bottom:30px;
}
.display-section .desc{
font-family:"굴림";
color:#616161;
line-height:1.9;
}
/* WE ARE 내용 영역 CSS */
.promotion-section{
margin-top:68px;
}
.promotion-section .promo-list li{
margin-top:52px;
text-align:center;
}
.promotion-section .promo-list li:first-child{
margin-top:0px;
}
.promotion-section .promo-list li img{
height:200px;
}
.promotion-section .promo-list li h3{
margin:29px 0 20px 0;
color:#3f51b5;
font-weight:normal; 
}
.promotion-section .promo-list li p{
font-size:14px;
font-family:"궁서";
color:#616161;
line-height:1.5;
}
/* 태블릿용 CSS */
@media all and (min-width:768px){
  .display-section{
  margin-top:95px;
  }
  /* 태블릿 WE ARE 내용 영역 CSS */
  .promotion-section{
  margin-top:110px;
  }
  .promotion-section .promo-list   li{
  float:left; /*세로로 나열된 컨텐츠 가로로 배치*/
  width:23.046875%;
  /* 177px ÷ 768px*/
  margin-left:2.604166666666667%;
  /* 20px ÷ 768px*/
  margin-top:0;
  }
  .promotion-section .promo-list li:first-child{
  margin-left:0;
  }
 /* PC용 CSS */
@media all and (min-width:1132px) {
/* PC WE ARE 영역 CSS */
.display-section {
text-align:left;
}
.display-section .sec-tit {
float:left;
margin-bottom:0;
}
.display-section .desc {
position:relative;
float:right;
padding-left:20px;
font-family:"바탕";
color:#616161;
line-height:1.9;
}
.display-section .desc:before {
display:block;
position:absolute;
top:9px;
left:0;
width:2px;
height:44px;
background: #e0e0e0;
content:"";
}
/* PC WE ARE 내용 영역 CSS */
.promotion-section .promo-list li {
width:23.674911111%;
margin-left:1.7667844444%;
}
}
  
</style>
<script>
	
</script>
</head>
<body>
	<div id="wrap">
		<header class="header cfixed">
			<h1 class="logo">
				<a href="">LOGO</a>
			</h1>
			<nav>
				<ul class="gnb">
					<li><a href="/">home</a></li>
					<li><a href="/weare">we are</a></li>
					<li><a href="/work">WORK</a></li>
					<li><a href="/blog">BLOG</a></li>
					<li><a href="/contactus">CONTACT US</a></li>
				</ul>
			</nav>
			<span class="menu-toggle-btn"> <span></span> <span></span> <span></span>
			</span>
		</header>
		<section class="content">
			<section class="display-section">
				<div class="container">
					<h2 class="sec-tit">We ARE</h2>
					<p class="desc">
						"교육센터 디지털컨버전스 과정" <br> "지금은 화면설계 시간"
					</p>
				</div>
			</section>
			<section class="promotion-section">
				<div class="container">
					<ul class="promo-list">
						<li><a href="#" onclick="return false"> <img src="/resources/images/dog.jpg" alt="">
								<h3>HOME</h3>
								<p>휴먼 교육센터 디지털 컨버전스</a></li>
								<li><a href="#" onclick="return false"> <img src="/resources/images/dog.jpg" alt="">
								<h3>HOME</h3>
								<p>휴먼 교육센터 디지털 컨버전스</a></li>
								<li><a href="#" onclick="return false"> <img src="/resources/images/dog.jpg" alt="">
								<h3>HOME</h3>
								<p>휴먼 교육센터 디지털 컨버전스</a></li>
								<li><a href="#" onclick="return false"> <img src="/resources/images/dog.jpg" alt="">
								<h3>HOME</h3>
								<p>휴먼 교육센터 디지털 컨버전스</a></li>
					</ul>
				</div>
			</section>
		</section>
		<footer class="footer">
			<p class="copyright">LOGO</p>
		</footer>
	</div>
</body>
</html>