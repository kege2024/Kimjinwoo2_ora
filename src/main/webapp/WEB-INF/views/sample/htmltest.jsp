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
      
</style>

<script src="/resources/js/jquery.min.js"></script>
<script type="text/javascript">

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
	<section class="banner_slider">
		<div id="slider" class="nivoSlider">
			<img src="/resources/images/b6.jpg" width="296" height="206"title="슬라이드1" />
		</div>
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