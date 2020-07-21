<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file="include/headerEn.jsp" %>
	<!-- Content Wrapper. Contains page content -->
	<div id="container">
	
    	<div class="main_rolling_pc">
            <div class="visualRoll">
                <ul class="viewImgList">
                    <li class="imglist0">
                        <div class="roll_content">
                            <a href="#">
                            	<img src="/resources/home/img/p1.jpg" width="1403" height="550" alt="OOOO OOOOO OOOO OOOOO, 스프링... OOOO OOOOO?"></a>
                            <p class="roll_txtline">Ocean</p>
                        </div>
                    </li>
                    <li class="imglist1">
                        <div class="roll_content">
                            <a href="#">
                            <img src="/resources/home/img/p2.jpg" width="1403" height="550" alt="OOOO OOOOOOOOO OOOOO 스프링정보, 스프링... OOOO OOOOO?"></a>
                            <p class="roll_txtline">Beach</p>
                        </div>
                    </li>
                    <li class="imglist2">
                        <div class="roll_content">
                            <a href="#">
                            <img src="/resources/home/img/p3.jpg" width="1403" height="550" alt="OOOO OOOOO 믿을 수 있는 스프링정보, 스프링... OOOO OOOOO?"></a>
                            <p class="roll_txtline">Party</p>
                        </div>
                    </li>
                </ul>

                <div class="rollbtnArea">
                    <ul class="rollingbtn">
                        <li class="seq butt0"><a href="#butt"><img src="/resources/home/img/btn_rollbutt_on.png" alt="1번" /></a></li>
                        <li class="seq butt1"><a href="#butt"><img src="/resources/home/img/btn_rollbutt_off.png" alt="2번" /></a></li>
                        <li class="seq butt2"><a href="#butt"><img src="/resources/home/img/btn_rollbutt_off.png" alt="3번" /></a></li>
                        <li class="rollstop"><a href="#" class="stop"><img src="/resources/home/img/btn_roll_stop.png" alt="멈춤" /></a></li>
                        <li class="rollplay"><a href="#" class="play"><img src="/resources/home/img/btn_roll_play.png" alt="재생" /></a></li>
                    </ul>
                </div><!-- //rollbtnArea -->

            </div><!-- //visualRoll -->
        </div><!-- //main_rolling_pc -->
        
        <div class="main_rolling_mobile">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <a href="#"><img src="/resources/home/img/p1.jpg" alt="OOOO OOOOO 믿을 수 있는 스프링정보, 스프링... OOOO OOOOO?" /></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="#"><img src="/resources/home/img/p2.jpg" alt="OOOO OOOOO 믿을 수 있는 스프링정보, 스프링... OOOO OOOOO?" /></a>
                    </div>
                    <div class="swiper-slide">
                        <a href="#"><img src="/resources/home/img/p3.jpg" alt="OOOO OOOOO 믿을 수 있는 스프링정보, 스프링... OOOO OOOOO?" /></a>
                    </div>
                </div>						
                <div class="swiper-pagination"></div>
                <!-- <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div> -->
                
            </div><!--//swiper-container-->
        </div><!--//main_rolling_mobile -->
	
		<!-- about_area -->
		<section class="work-sections cfixed">
		<div class="about_area">
			<h2><b>Welcome!!</b></h2>
			<div class="about_box">
				<ul class="place_list box_inner clear">
					<li><a href="#" onclick="$('.popup_base').css('height',$(document).height());$('.contact_pop').show();">
							<img class="img_topplace" src="/resources/home/img/p4.jpg" alt="OOOO OOOOO" />
							<h3>The Voice of Invisibles, Asociația Sabsalgae Travel</h3>
							<p class="txt">Kahala Beach is one of the most popular areas for beach weddings on Oahu!</p>
							<span class="view">VIEW</span></a>
					</li>
					<li><a href="#" onclick="$('.popup_base').css('height',$(document).height());$('.space_pop').show();">
							<img class="img_topplace" src="/resources/home/img/p5.jpg" alt="OOOO OOOOO" />
							<h3>Adaptive Sport as tool for Inclusion</h3>
							<p class="txt">Blue Bay Beach is a shady beach just northwest of Willemstad, near the village of Sint Michiel</p>
							<span class="view">VIEW</span></a>
					</li>
					<li><a href="#" onclick="$('.popup_base').css('height',$(document).height());$('.program_pop').show();">
							<img class="img_topplace" src="/resources/home/img/p6.jpg" alt="OOOO OOOOO" />
							<h3>Let's Go Eco Tourism Erasmus project in Poland</h3>
							<p class="txt">The biggest and best known of all the Havana Cuba beaches, Playas del Este is actually a 9 km</p>
							<span class="view">VIEW</span></a>
					</li>
				</ul>
			</div>
		</div>
		</section>
		<!-- //about_area -->

		<!-- app_area -->
		<div class="appbbs_area">
			<div class="appbbs_box box_inner clear">
				<h2 class="hdd">상담과 최근게시물</h2>
				<p class="app_line">
					<a href="#">Checklist to travel</a>
					<a href="#">View all travel advisories</a>
				</p>
				<div class="bbs_line">
					<h3><a href="/board/list">NOTICE</a></h3>
					<ul class="notice_recent">
						<li><a href="javascript:;">The Voice of Invisibles, Asociația Sabsalgae Travel</a></li>
						<li><a href="javascript:;">	Adaptive Sport as tool for Inclusion</a></li>
						<li><a href="javascript:;">Let's Go Eco Tourism Erasmus project in Poland</a></li>
						<li><a href="javascript:;">	Building Skills Through Inclusion</a></li>
						<li><a href="javascript:;">	testAct-Ion: New Training Course in Italy</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- //app_area -->
		
	</div>
	<!-- //container -->
<%@ include file="include/footerEn.jsp" %>