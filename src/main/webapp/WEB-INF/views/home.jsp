<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file="include/header.jsp" %>
	<!-- Content Wrapper. Contains page content -->
	<div id="container">
	
	
    	<div class="main_rolling_pc">
            <div class="visualRoll">
                <ul class="viewImgList">
                    <li class="imglist0">
                        <div class="roll_content">
                            <a href="#">
                            	<img src="/resources/home/img/p1.jpg" width="1403" height="550" alt="OOOO OOOOO OOOO OOOOO, 스프링... OOOO OOOOO?"></a>
                            <p class="roll_txtline">바다</p>
                        </div>
                    </li>
                    <li class="imglist1">
                        <div class="roll_content">
                            <a href="#">
                            <img src="/resources/home/img/p2.jpg" width="1403" height="550" alt="OOOO OOOOOOOOO OOOOO 스프링정보, 스프링... OOOO OOOOO?"></a>
                            <p class="roll_txtline">해변</p>
                        </div>
                    </li>
                    <li class="imglist2">
                        <div class="roll_content">
                            <a href="#">
                            <img src="/resources/home/img/p3.jpg" width="1403" height="550" alt="OOOO OOOOO 믿을 수 있는 스프링정보, 스프링... OOOO OOOOO?"></a>
                            <p class="roll_txtline">파티</p>
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
			<h2><b>환영합니다!!</b></h2>
			<div class="about_box">
				<ul class="place_list box_inner clear">
				<c:forEach items="${boardListGallery}" var="boardVO" varStatus="status">
				<c:if test="${status.count <= 3}">	
					<!-- <li><a href="#" onclick="$('.popup_base').css('height',$(document).height());$('.contact_pop').show();"> -->
							<li><a href="/board/view?bno=${boardVO.bno}&page=1&searchBoard=gallery"> 
							<!-- 첨부파일 있을때 -->
							<c:if test="${boardVO.files[0] != null}">
							<c:set var="extName" value="${fn:split(boardVO.files[0],'.')}" />
							<c:set var="ext" value="${extName[fn:length(extName)-1]}" />
							<!-- 첨부파일 안에 이이지 또는 이미지 아닐경우 -->
							<c:choose>
							<c:when test="${fn:containsIgnoreCase(extNameArray, ext)}">
							<img src="/image_preview?filename=${boardVO.files[0]}" title="첨부파일 이미지" style="width:100%;">
							</c:when>
							<c:otherwise>
							<img class="img_topplace" src="/resources/home/img/p4.jpg" alt="첨부파일 이미지 없을때" />
							</c:otherwise>
							</c:choose>
							</c:if>
							<!-- 첨부파일 없을때 -->
							<c:if test="${boardVO.files[0] == null}">							
							<img class="img_topplace" src="/resources/home/img/p4.jpg" alt="첨부파일 이미지 없을때" />
							</c:if>
							
							<h3>${boardVO.title}</h3>
							<p class="txt">${boardVO.content}</p>
							</a>
				</li>
				</c:if>
				</c:forEach>
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
					<a href="#">여행 체크리스트 확인</a>
					<a href="#">여행지 관련정보 확인</a>
				</p>
				<div class="bbs_line">
					<h3><a href="/board/list?searchBoard=notice">NOTICE</a></h3>
					<ul class="notice_recent">
					<c:forEach items="${boardListNotice}" var="boardVO" varStatus="status">
						<li><a href="/board/view?bno=${boardVO.bno}&page=1&searchBoard=notice">${boardVO.title}</a></li>
					</c:forEach>
					</ul>
				</div>
			</div>
		</div>
		<!-- //app_area -->
		
	</div>
	<!-- //container -->
<%@ include file="include/footer.jsp" %>