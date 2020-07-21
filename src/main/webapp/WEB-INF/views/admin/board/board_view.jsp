<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../include/header.jsp" %>
 <!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-12">
							<h1 class="m-0 text-dark">DashBoard Management</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-12">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">Starter Page</li>
							</ol>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
				<div class="col-md-12">
					<!-- general form elements disabled -->
					<div class="card card-warning">
						<div class="card-header">
							<h3 class="card-title">READ BOARD</h3>
						</div>
						<!-- /.card-header -->
						<div class="card-body">
							<form role="form" action="/admin/board/delete" method="post">
								<div class="row">
									<div class="col-sm-12">
										<!-- text input -->
										<div class="form-group">
											<label>Title</label> <br> ${boardVO.title}
										</div>
									</div>

									<div class="col-sm-12">
										<!-- text input -->
										<div class="form-group">
											<label>Content</label>
											<br> 
											<textarea class="form-control" rows="3"
												placeholder="Enter Content">${boardVO.content}</textarea>
										</div>
									</div>

									<div class="col-sm-12">
										<!-- text input -->
										<div class="form-group">
											<label>Writer</label> <br> ${boardVO.writer}
										</div>
									</div>
									
									<div class="col-sm-12">
										<!-- text input -->
										<div class="form-group">
											<label>FileDownload</label> <br> 
											<a href="/download?filename=${boardVO.files[0]}">${boardVO.files[0]}</a>
										</div>
									</div>
									
									<div class="buttons">
										<a href="/admin/board/update?bno=${boardVO.bno}&page=${pageVO.page}" class="btn btn-warning">UPDATE</a>
										<button type="submit" class="btn btn-danger">DELETE</button>
										<a href="/admin/board/list?page=${pageVO.page}" class="btn btn-primary">LIST ALL</a> 
									</div>
								</div>
							<input type="hidden" name="bno" value="${boardVO.bno}">
							</form>
						</div>
						<!-- /.content-header -->


						<div class="col-md-12">
							<!-- general form elements disabled -->
							<div class="card card-default">
								<div class="card-header">
									<h3 class="card-title">ADD NEW REPLY</h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<form role="form">
										<div class="row">
											<div class="col-sm-12">
												<!-- text input -->
												<div class="form-group">
													<label>Writer</label> <input id="replyerInput" type="text"
														class="form-control" placeholder="USER ID">
												</div>
											</div>

											<div class="col-sm-12">
												<!-- text input -->
												<div class="form-group">
													<label>Reply Text</label> <input id="replytextInput" type="text"
														class="form-control" placeholder="REPLY TEXT">
												</div>
											</div>
											<a href="javascript:;" id="insertApplyBtn" class="btn btn-info">ADD REPLY</a>
										</div>

									</form>
								</div>


								<div class="col-md-12">
									<!-- general form elements disabled -->
									<div class="timeline">
										<!-- timeline time label -->
										<div class="time-label" id="replyDiv">
											<span class="bg-green">Replies List[<span id="countRno">]</span></span>
										</div>
										<!-- /.timeline-label -->
										
										
										<!-- timeline item -->
										<!-- <div>
											<i class="fas fa-comments bg-blue"></i>
											<div class="timeline-item">
												<h3 class="timeline-header">
													<a href="#">26-test</a> 												</h3>
												<div class="timeline-body">댓글 테스트입니다.</div>
												<div class="timeline-footer">
													<a class="btn btn-primary btn-sm">Modify</a>
												</div>
											</div>
										</div> -->
										<!-- END timeline item -->
									</div>
								</div>
							</div>
									
							<td>
								<nav aria-label="Contacts Page Navigation">
									<ul class="pagination justify-content-center m-0">
										<li class="page-item active"><a class="page-link"
											href="#">1</a></li>
									</ul>
								</nav>
							</td>
							
					</div>
				</div>
			</div>
			</div>
			<!-- //Content Wrapper -->
			
			<!-- 댓글 관련 자바스크립트 start -->
			
			<!-- 댓글 리스트 반복문용 JQuery라이브러리 -->
			<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
			
			<!-- 댓글 탬플릿 -->
			<script id="template" type="text/x-handlebars-template">
				{{#each .}}							
				<div class="replyLi" data-rno={{rno}}>
				<i class="fas fa-comments bg-blue"></i>
				<div class="timeline-item">
				<h3 class="timeline-header">{{replyer}}</h3>
				<div class="timeline-body">{{replytext}}</div>
				<div class="timeline-footer">
				<a class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modifyModal">Modify</a>
				</div>
					</div>
						</div>
							{{/each}}		
			</script>
			
			<!-- 댓글변수, 함수 초기화 / 댓글 템플릿 출력  -->
			<script>
			//댓글변수 초기화+함수초기화
			var bno = ${boardVO.bno};
			var page = 1;
			//JSON배열데이터, target=출력위치, template~=반복구문
			var printReplyList = function(replyArr, target, templateObject) {
			var template = Handlebars.compile(templateObject.html());
			var html = template(replyArr);
			$(".replyLi").remove();
			target.after(html);
			};
			var printPageVO = function(pageVO, target) {
				var paging = "";
				if(pageVO.prev){
					paging = paging + '<li class="page-item"><a class="page-link" href="'+(pageVO.startPage-1)+'">이전</a></li>';
				}
				for(var cnt=pageVO.startPage;cnt<=pageVO.endPage;cnt++){
					var active = (cnt==pageVO.page)?"active":"";
					paging = paging + '<li class="page-item '+active+'"><a class="page-link" href="'+cnt+'">'+cnt+'</a></li>';
				}
				if(pageVO.next){
					paging = paging + '<li class="page-item"><a class="page-link" href="'+(pageVO.endPage+1)+'">다음</a></li>';
				}
				target.html(paging);	
			}
			function getPage(pageInfo) {
				$.getJSON(pageInfo, function(data){
					printReplyList(data.replyList, $("#replyDiv"), $("#template"));
					printPageVO(data.pageVO, $(".pagination"));
					$("#countRno").text(data.pageVO.totalCount);
					$("#modifyModal").modal('hide');
				});
			}
			//변수,함수 정의 (상단)
			// 댓글리스트 출력실행 (하단)
			$(document).ready(function(){
				//최초 페이지 로딩시 아래 명령실행
				getPage("/reply/select/" + bno + "/" + page);
				$(".pagination").on("click", "li a", function(event){
					event.preventDefault();
					page = $(this).attr("href");
					getPage("/reply/select/"+bno+"/"+page);
				})
			});
			</script>

			<!-- 댓글 입력/수정/삭제 버튼 이벤트(Ajax이용한 URL호출 -->
			<script>
			$(document).ready(function() {
			$("#replyDelBtn").on("click", function(){
				var rno = $("#rno").val();
			$.ajax({
				type:'delete',
				url:'/reply/delete/'+rno,
				headers: {
					"Content-Type":"application/json",
					"X-HTTP-Method-Override":"DELETE" 
						},
					success:function(result){
						if(result == 'SUCCESS'){
							alert("삭제 성공했습니다");
							getPage("/reply/select/"+bno+"/"+page);
							}
						}
				});
			});
		
				$("#replyModBtn").on("click", function(){
					var replytext = $("#replytext").val();
					var rno = $("#rno").val();
				/* alert(replytext + rno);
				return false;  */
				$.ajax({
					type:'put',
					url:'/reply/update/'+rno,
					headers: {
						"Content-Type":"application/json",
						"X-HTTP-Method-Override":"PUT" 
							},
							dataType:'text',
							data: JSON.stringify({
								replytext:replytext
						}),
						success:function(result){
							if(result == 'SUCCESS'){
								alert("수정 성공했습니다");
								getPage("/reply/select/"+bno+"/"+page);
								}
							}
					});
				});
				$("#insertApplyBtn").on("click", function(){
					var replyer = $("#replyerInput").val();
					var replytext = $("#replytextInput").val();
					if(replyer=="" || replytext==""){
						alert("작성자와 댓글내용은 필수 입력사항입니다")
						return false;
					}
				$.ajax({
					type:'post',
					url:'/reply/insert',
					headers: {
						"Content-Type":"application/json",
						"X-HTTP-Method-Override":"POST" 
							},
							dataType:'text',
							data: JSON.stringify({
								bno:bno,
								replyer:replyer,
								replytext:replytext
						}),
						success:function(result){
							if(result == 'SUCCESS'){
								alert("등록 성공했습니다");
								getPage("/reply/select/"+bno+"/"+page);
								$("#replyerInput").val("");
								$("#replytextInput").val("");
								}
							}
					});
				});
			});
			</script>
			
			<!-- 댓글 수정, 삭제 모달 팝업창 -->
		<div id="modifyModal" class="modal modal-primary fade" role="dialog">
		  <div class="modal-dialog">
		    <!-- Modal content-->
		    <div class="modal-content">
		      <div class="modal-header" style="display:block;">
			<button type="button" class="close" data-dismiss="modal">&times;</button>
			<h4 class="modal-title"></h4>
		      </div>
		      <div class="modal-body" data-rno>
		      <input type="hidden" id="rno" class="form-control">
			<p><input type="text" id="replytext" class="form-control"></p>
		      </div>
		      <div class="modal-footer">
			<button type="button" class="btn btn-info" id="replyModBtn">Modify</button>
			<button type="button" class="btn btn-danger" id="replyDelBtn">DELETE</button>
			<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		      </div>
		    </div>
		  </div>
		</div>
			
			<!-- 댓글 modify버튼 클릭시 모달창 내용에 바인딩시키기 -->
			<script> 
				$(document).ready(function(){
					//선택한 댓글에대한 모달창에 데이터바인딩
					$(".timeline").on("click",".replyLi", function(event) {
						var reply = $(this);
						$("#rno").val(reply.attr("data-rno"));
						$(".modal-title").html(reply.find(".timeline-header").text());
						$("#replytext").val(reply.find(".timeline-body").text());
					});
				});
			</script>
			
			<!-- 댓글 관련 자바스크립트 end -->

<%@include file="../include/footer.jsp" %>