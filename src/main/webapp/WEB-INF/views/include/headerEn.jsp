<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title> 스프링 </title>
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="stylesheet" href="/resources/home/css/swiper.min.css">
<link rel="stylesheet" href="/resources/home/css/common.css">
<script src="/resources/home/js/jquery-1.11.3.min.js"></script>
<script src="/resources/home/js/rollmain.js"></script>
<script src="/resources/home/js/jquery.easing.js"></script>	
<script src="/resources/home/js/common.js"></script>  
<script src="/resources/home/js/jquery.smooth-scroll.min.js"></script> 
<!--[if lte IE 9]>
    <script src="/resources/home/js/html5shiv.js"></script>
	<script src="/resources/home/js/placeholders.min.js"></script>
<![endif]-->
<script>
if('${msg}' !=""){
	alert("${msg}");}

</script>
</head>

<body>
<ul class="skipnavi">
    <li><a href="#container">본문내용</a></li>
</ul>
<!-- wrap -->
<div id="wrap">

	<header id="header">
	
		<div class="header_area box_inner clear">	
			<h1><a href="/">사용자 홈페이지</a></h1>
			<p class="openMOgnb"><a href="#"><b class="hdd">메뉴열기</b> <span></span><span></span><span></span></a></p>
			<!-- header_cont -->
			<div class="header_cont">
					<p class="siteup">&nbsp</p>
				<ul class="util clear">
					<c:choose>
						<c:when test="${session_enabled eq 'true' }">
						<li><span style="color:#2E9AFE">${session_username}[${session_userid}] welcome</span></li>
						<li><a href="/logout">logout</a></li>
						<c:if test="${session_levels eq 'ROLE_ADMIN'}">
						<li><a href="/admin">admin</a></li>
						</c:if>
						</c:when>
						<c:otherwise>
						<li><a href="/login">login</a></li>
						<li><a href="#">sign in</a></li>
						</c:otherwise>
						</c:choose>
					
					<li><a href="#" onclick="$('.popup_base').css('height',$(document).height());$('.sitemap_pop').show();">sitemap</a></li>
					<li><select id="selectlanguage" name="" onchange="location.href=this.value">
						<option value="/">English</option>
						<option value="/">Korean</option>
					</select><li>
				</ul>	
				<nav>
				<ul class="gnb clear">
				
				<li><a href="#" class="openAll4">Company</a>

                        <div class="gnb_depth gnb_depth2_4">
                            <ul class="submenu_list">
                                <li><a href="/sample" style="font-size:14px;">about</a></li>
                                <li><a href="/sample/slide" style="font-size:14px;">vision</a></li>
                            </ul>
                        </div>
					</li>
				
				<li><a href="#" class="openAll3">Description</a>

                        <div class="gnb_depth gnb_depth2_3">
                            <ul class="submenu_list">
                                <li><a href="/sample" style="font-size:14px;">Description1</a></li>
                                <li><a href="/sample/slide" style="font-size:14px;">Description2</a></li>
                            	<li><a href="/sample/slide" style="font-size:14px;">Description3</a></li>
                            </ul>
                        </div>
					</li>
				
					<li><a href="/sample" class="openAll1">Portfolio</a>

                        <div class="gnb_depth gnb_depth2_1">
                            <ul class="submenu_list">
                                <li><a href="/sample" style="font-size:14px;">onepage</a></li>
                                <li><a href="/sample/slide" style="font-size:14px;">slide</a></li>
                            </ul>
                        </div>
					</li>
					<li><a href="/board/list" class="openAll2">Customer</a>
				        <div class="gnb_depth gnb_depth2_2">
                            <ul class="submenu_list">
                                <li><a href="/board/list"  style="font-size:13px;">notice</a></li>
                            </ul>
                        </div>
					</li>
				</ul>
                </nav>
				<p class="closePop"><a href="#">닫기</a></p>
			</div>
			<!-- //header_cont -->
		</div>
	</header>
	