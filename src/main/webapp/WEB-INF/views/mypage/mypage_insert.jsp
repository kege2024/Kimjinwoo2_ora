<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ include file="../include/header.jsp" %>
	
	<!-- container start -->
	<div id="container">
		<!-- location_area -->
		<div class="location_area member">
			<div class="box_inner">
				<h2 class="tit_page">Sabsalgae<span class="in"></span></h2>
				<p class="location">MEMBER <span class="path">/</span> 회원등록</p>
				<ul class="page_menu clear">
					<li><a href="javascript:;" class="on">회원등록</a></li>
				</ul>
			</div>
		</div>	
		<!-- //location_area -->

		<!-- bodytext_area -->
		<div class="bodytext_area box_inner">
			
			<!-- appForm -->
					<form action="/mypage/insert" class="regForm" method="POST">
						<fieldset>
							<legend>내정보 입력 양식</legend>
							<ul class="reg_list">
								<li class="clear">
									<span class="tit_lbl user_id">아이디</span>
									<div class="reg_content" style="padding-top:8px;">
									<input value="${memberVO.user_id}" name="user_id" type="text" class="w100p" id="user_id" placeholder="아이디를 입력해주세요"/>
									<span id="validation_idcheck"></span>
									</div>
								</li>
								<li class="clear">
									<label class="tit_lbl">패스워드</label>
									<div class="reg_content" style="padding-top:8px;">
									<input value="" name="user_pw" type="password" class="w100p" placeholder="암호를 입력해주세요"/>
									</div>
								</li>
								<li class="clear">
									<label class="tit_lbl">이름</label>
									<div class="reg_content" style="padding-top:8px;">
									<input value="${memberVO.user_name}" name="user_name" type="text" class="w100p" placeholder="이름을 입력해주세요" required>
									</div>
								</li>
								<li class="clear">
									<label class="tit_lbl">이메일</label>
									<div class="reg_content" style="padding-top:8px;">
									<input value="${memberVO.email}" name="email" type="text" class="w100p" placeholder="이메일을 입력해주세요"/>
									</div>
								</li>
								
									<input value="0" name="point" type="hidden" class="w100p" placeholder="포인트를 입력해주세요"/>
									<input value="1" name="enabled" type="hidden" class="w100p" placeholder="포인트를 입력해주세요"/>
									<input value="ROLE_USER" name="levels" type="hidden" class="w100p" placeholder="포인트를 입력해주세요"/>
								
							</ul>
							<p class="btn_line">
							<button disabled id="btn_submit" class="btn_baseColor" style="cursor:default;opacity:0.5;">회원가입</button>
							</p>	
						</fieldset>
					</form>
					<!-- //appForm -->
			
		</div>
		<!-- //bodytext_area -->

	</div>
	<!-- //container -->
	<script>
	$(document).ready(function(){ 
		$("#user_id").blur(function(){ 
			var user_id = $(this).val();
			$.ajax({
				type:'get',
				url:'/admin/member/idcheck?user_id=' + user_id,
				success:function(result){
					if(result=='1') { //중복아이디 존재시
						$("#btn_submit").attr("disabled", true);
 						$("#btn_submit").css({"cursor":"none","opacity":"0.5"});
 						$("#validation_idcheck").text("중복아이디가 존재합니다");
    					$("#validation_idcheck").css({"color":"red", "font-size":"14px"});
					}else{ //중복아이디 존재 아닐시
						$("#btn_submit").attr("disabled", false);
						$("#btn_submit").css({"cursor":"pointer","opacity":"1"});
						$("#validation_idcheck").text("사용가능한 아이디 입니다");
    					$("#validation_idcheck").css({"color":"blue", "font-size":"14px"});
					}
				},
				error:function(){
					alert("아이디체크 RestAPI서버가 작동하지 않습니다");
				}
			});
		});
	});
	</script>
<%@ include file="../include/footer.jsp" %>