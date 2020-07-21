<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<footer>
	<p class="below">&nbsp</p>
		
		<div class="foot_area box_inner">
			<ul class="foot_list clear">
				<li><a href="#">이메일주소무단수집거부</a></li>
				<li><a href="#">개인정보 처리방침</a></li>
			</ul>
			<h2>삽살개</h2>
            <p class="addr">Banca Comerciala Romana, Sucursala Cipariu, Cluj-Napoca <span class="gubun">/</span>        
				<span class="br_line">전화 : <span class="space0">02-1234-5678</span> <span class="gubun">/</span>        
					<span class="br_line">이메일 : <span class="space0"> sabsalgae@admin.com</span></span>
				</span>
			</p>
			<p class="copy box_inner">Copyright(c) sabsalgae all right reserved</p>
			<ul class="snslink clear">
				<li><a href="#">블로그</a></li>
				<li><a href="#">페이스북</a></li>
				<li><a href="#">인스타그램</a></li>
			</ul>
		</div>
		
	</footer>

</div>
<!-- //wrap -->

<h2 class="hdd">빠른 링크 : 전화 문의,카카오톡,오시는 길,꼭대기로</h2>
<div class="quick_area">
	<ul class="quick_list">
		<li><a href="#"><h3>전화</h3><p>010-1234-5678</p></a></li>
		<li><a href="#"><h3>카카오톡<em>문자</em></h3><p></p></a></li>
		<li><a href="#"><h3 class="to_contact">주소</h3></a></li>
	</ul>
	<p class="to_top"><a href="#layout0" class="s_point">위로가기</a></p>
</div>

<script type="text/javascript" src="/resources/home/js/swiper.min.js"></script>
<script type="text/javascript">
   $(document).ready(function(){
		var swiper = new Swiper('.swiper-container', {
			loop: true,
			autoplay:5500,
		    autoplayDisableOnInteraction: false,
			pagination: '.swiper-pagination',
            paginationClickable: true
		});
	});
</script>
<!-- sitemap -->
<div class="popup_base sitemap_pop">
	<div class="pop_content">
		<p class="btn_xpop"><a href="#" onclick="$(this).parent().parent().parent().hide();">닫기</a></p>
		<ul class="pop_list">
			<li>
				<h2 class="tit_pop">Sitemap</h2>
				<h1 class="sitemapline"></h1>

				<div class="sitemap">
			<table class="sitemaptable">
			<tr class="sitemaptable">
				<th class="sitemaptable"><br><a href="/">회사소개</a></th>
				<th class="sitemaptable"><br><a href="/sample">포트폴리오</a></th>
				<th class="sitemaptable"><br><a href="/board/list">고객센터</a></th>
			</tr>
			<tr class="sitemaptable1">
				<td class="sitemaptable1"><br><a href="/">주소</a></td>
				<td class="sitemaptable1"><br><a href="/sample">원페이지</a></td>
				<td class="sitemaptable1"><br><a href="/login">로그인</a></td>
			</tr>
			<tr class="sitemaptable">
				<td class="sitemaptable"><br><a href="/">오는길</a></td>
				<td class="sitemaptable"><br><a href="/sample/slide">슬라이드</a></td>
				<td class="sitemaptable"><br><a href="/">회원가입</a></td>
			</tr>
			</table>
			</div>
			</li>
		</ul>		
	</div>
</div>
<!-- contact_pop -->
<div class="popup_base contact_pop">
	<div class="pop_content">
		<p class="btn_xpop"><a href="#" onclick="$(this).parent().parent().parent().hide();">닫기</a></p>
		<ul class="pop_list">
			<li>
				<h2 class="tit_pop">Kahala</h2>
				<img class="pop_img"src="/resources/home/img/p4.jpg" alt="OOOO OOOOO" />
				<div class="pop_txt"><p><br>Kahala Beach is one of the most popular areas for beach weddings on Oahu!</p></div>
			</li>
		</ul>		
	</div>
</div>
<!-- //contact_pop -->

<!-- space_pop -->
<div class="popup_base space_pop">
	<div class="pop_content">
		<p class="btn_xpop"><a href="#" onclick="$(this).parent().parent().parent().hide();">닫기</a></p>
		<ul class="pop_list">
			<li>
				<h2 class="tit_pop">Willemstad</h2>
				<img class="pop_img"src="/resources/home/img/p5.jpg" alt="OOOO OOOOO" />
				<div class="pop_txt"><p><br>Blue Bay Beach is a shady beach just northwest of Willemstad, near the village of Sint Michiel.</p></div>
			</li>
		</ul>		
	</div>
</div>
<!-- //space_pop -->

<!-- program_pop -->
<div class="popup_base program_pop">
	<div class="pop_content">
		<p class="btn_xpop"><a href="#" onclick="$(this).parent().parent().parent().hide();">닫기</a></p>
		<ul class="pop_list">
			<li>
				<h2 class="tit_pop">Havana</h2>
				<img class="pop_img"src="/resources/home/img/p6.jpg" alt="OOOO OOOOO" />
				<div class="pop_txt"><p><br>The biggest and best known of all the Havana Cuba beaches</p></div>
			</li>
		</ul>		
	</div>
</div>
<!-- //program_pop -->

</body>
</html>