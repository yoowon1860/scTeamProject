<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
	
	
<!DOCTYPE html>
<html lang="en">


<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="icon" href="${pageContext.request.contextPath }/resources/img/Fevicon.png" type="image/png">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/linericon/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">

<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script>
	
	// 댓글 목록 불러오는 함수
	function sCommentList(){
		var snum = ${study.num};
		console.log(snum);
		$.getJSON("/speedcampus/sCommentList.do" + "?snum=" + snum, function(data) {
			var str = "";
			$(data).each(function() {
				console.log(data);
				var regDate = new Date(this.regDate);
				regDate = regDate.toLocaleDateString("ko-US");
				str += "<h5 class='comment'>" + this.userId + "</h5>"
				+ "<p class='date'>" + regDate + "</p>"
				+ "<p class='replyContent'>" + this.cContent + "</p><br>"
				+ "<div class='replyFooter'>"
				+ "<button type='button' class='modify' data-cnum='" + this.cnum + "'>수정</button>"
				+ "<button type='button' class='delete' data-cnum='" + this.cnum + "'>삭제</button><br><hr><br>"
				+ "</div>"
			});
			$("div.sComment").html(str);
		});
								
	}
</script>

<style>


 div.replyModal { position:relative; z-index:1; display:none;}
 div.modalBackground { position:fixed; top:0; left:0; width:100%; height:100%; background:rgba(0, 0, 0, 0.8); z-index:-1; }
 div.modalContent { position:fixed; top:20%; left:calc(50% - 250px); width:450px; height:250px; padding:20px 20px; background:#fff; border:2px solid #666; }
 div.modalContent textarea { font-size:16px; font-family:'맑은 고딕', verdana; padding:10px; width:400px; height:150px; }
 div.modalContent button { text-align:center; font-size:16px; padding:5px 10px;  background:#fff; border:1px solid #ccc; }
 div.modalContent button.modal_cancel { margin-left:1px; }

#container {
	width: 100%;
	margin: 0 auto; /* 가로로 중앙에 배치 */
	padding-right: 20%; /* 테두리와 내용 사이의 패딩 여백 */
	padding-left: 20%;
	padding-bottom: 20%;
	padding-top: 5%;
}

#list {
	text-align: center;
}

#write {
	text-align: right;
}

/* Bootstrap 수정 */
.table>thead {
	background-color: #384aeb;
	color: #ffffff;
}

.table>thead>tr>th {
	text-align: center;
}

.table-hover>tbody>tr:hover {
	background-color: #e6ecff;
}

.table>tbody>tr>td {
	text-align: center;
}

.table>tbody>tr>#title {
	text-align: left;
}

div>#paging {
	text-align: center;
}

.hit {
	animation-name: blink;
	animation-duration: 1.5s;
	animation-timing-function: ease;
	animation-iteration-count: infinite;
	/* 위 속성들을 한 줄로 표기하기 */
	/* -webkit-animation: blink 1.5s ease infinite; */
}
</style>
</head>
<body>

	<div id="container">
		<h3>Study</h3>
		<hr style="border: solid 1.5px #384aeb;">
		<section class="blog_area single-post-area py-80px section-margin--small">
			<div class="container">
				<div class="row">
					<div class="col-lg-8 posts-list">
						<div class="single-post row">
							<div class="col-lg-12">
								<div class="feature-img">
									<ul class="blog_meta list">
										<i class="lnr lnr-user"></i>&nbsp;${study.writer }&emsp;
										<i class="lnr lnr-calendar-full"></i>&nbsp;${study.regDate }&emsp;
										<i class="lnr lnr-eye"></i>&nbsp;${study.cnt } Views&emsp;
										<i class="lnr lnr-bubble"></i>&nbsp;06 Comments&emsp;
									</ul>
								</div>
							</div>
							<div class="col-lg-3  col-md-3"></div>
							<div class="col-lg-9 col-md-9 blog_details"></div>
							<div class="col-lg-12">

								<div class="row">
									<div class="col-lg-12 mt-4">
										<div>
											<div style="float: left;">
												<h4>#&nbsp;${study.num }&nbsp;&nbsp;${study.title }</h4>
											</div>
											<div style="text-align: right;">
												<c:if test="${sessionScope.user.email ==  study.writer}">
													<a href="studyUpdate.do?num=${study.num }" class="button button-postComment button--active" style="padding: 5px" title="글 수정">
														<img src="${pageContext.request.contextPath }/resources/img/update.png" width="20px" height="20px">
													</a>
													<a href="studyDelete.do?num=${study.num }" class="button button-postComment button--active" style="padding: 5px" title="글 삭제">
														<img src="${pageContext.request.contextPath }/resources/img/delete.png" width="20px" height="20px">
													</a>
												</c:if>
												<a href="studyWrite.do" class="button button-postComment button--active" style="padding: 5px" title="글 작성">
													<img src="${pageContext.request.contextPath }/resources/img/write.png" width="20px" height="20px" >
												</a> 
												<a href="studyList.do" class="button button-postComment button--active" style="padding: 5px" title="글 목록">
													<img src="${pageContext.request.contextPath }/resources/img/list.png" width="20px" height="20px">
												</a>
											</div>
											<div style="text-align: right;"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="navigation-area">
							<p style="padding-top: 10px; float: bottom;">${study.content }</p>

							<div class="row">
								<div
									class="col-lg-6 col-md-6 col-12 nav-left flex-row d-flex justify-content-start align-items-center">
								</div>
								<div
									class="col-lg-6 col-md-6 col-12 nav-right flex-row d-flex justify-content-end align-items-center">
								</div>
							</div>
						</div>
						
						<!-- 댓글 목록 -->
						 <div class="comments-area">
							<h4>05 Comments</h4>

							<div class="sComment"></div>
							<script>sCommentList();</script>
						</div>
						<!-- 댓글 목록 끝 -->
						
						<!-- 댓글 수정 -->
						<script type="text/javascript">
						$(document).on("click", ".modify", function(){
							 $(".replyModal").fadeIn(200);
							 
							 $(document).on("click", ".modify", function(){
								 //$(".replyModal").attr("style", "display:block;");
								 $(".replyModal").fadeIn(200);
								 
								 var cnum = $(this).attr("data-cnum");
								 var cContent = $(this).parent().parent().children(".replyContent").text();
								 
								 $(".modal_cContent").val(cContent);
								 $(".modal_modify_btn").attr("data-cnum", cnum);
								 
								});
							 
							});
						</script>
						<!-- 댓글 수정 끝 -->
						
						<!-- 댓글 삭제 -->
						<script>
							$(document).on("click", ".delete", function() {
								var deleteConfirm = confirm("정말 삭제하시겠습니까?");
								if (deleteConfirm) {
									var data = {
										cnum : $(this).attr("data-cnum")
									};
									$.ajax({
										url : "/speedcampus/deleteScomment.do",
										type : "post",
										data : data,
										success : function(result) {
											if (result == 1) {
												alert("삭제되었습니다.");
												sCommentList();
											} else {
												alert("작성자 본인만 가능합니다.");
											}
										},
										error : function() {
											alert("로그인하셔야합니다.")
										}
									});
								}
							});
						</script>
						<!-- 댓글 삭제 끝-->

						<!-- 댓글 남기기 -->
						<div class="comment-form">
							<h4>Leave a Reply</h4>
							<c:if test="${sessionScope.user == null }">
								<p>
									댓글을 남기시려면 <a href="login.do">로그인</a>해주세요
								</p>
							</c:if>
							<c:if test="${sessionScope.user != null}">
								<form role="form" method="post" autocomplete="off">
									<input type="hidden" name="snum" id="snum" value="${study.num }">

									<div class="form-group">
										<textarea class="form-control mb-10" rows="5" name="cContent"
											id="cContent" placeholder="Messege"
											onfocus="this.placeholder = ''"
											onblur="this.placeholder = 'Messege'" required=""></textarea>
									</div>
									<button type="button" id="insertScomment" class="button button-postComment button--active">Post Comment</button>
								</form>
							</c:if>
						</div>

						<script>
						// 댓글 작성
						 $("#insertScomment").click(function(){
						  
						  var formObj = $(".replyForm form[role='form']");
						  var snum = $("#snum").val();
						  var cContent = $("#cContent").val()
						  
						  var data = {
						    snum : snum,
						    cContent : cContent
						    };
						  
						  $.ajax({
						   url : "/speedcampus/insertScomment.do",
						   type : "post",
						   data : data,
						   success : function(){
						    sCommentList();
						    $("#cContent").val("");
						   }
						  });
						 });
						</script>
					</div>
					<!-- 댓글 남기기  끝-->
					
					<div class="col-lg-4">
						<div class="blog_right_sidebar">
							<aside class="single_sidebar_widget search_widget">
					
							</aside>
							<aside class="single_sidebar_widget author_widget">



							</aside>
							<aside class="single_sidebar_widget popular_post_widget">
								<h3 class="widget_title">Popular Posts</h3>
								<div class="media post_item">
									<img src="img/blog/popular-post/post1.jpg" alt="post">
									<div class="media-body">
										<a href="blog-details.html">
											<h3>Space The Final Frontier</h3>
										</a>
										<p>02 Hours ago</p>
									</div>
								</div>
								<div class="media post_item">
									<img src="img/blog/popular-post/post2.jpg" alt="post">
									<div class="media-body">
										<a href="blog-details.html">
											<h3>The Amazing Hubble</h3>
										</a>
										<p>02 Hours ago</p>
									</div>
								</div>
								<div class="media post_item">
									<img src="img/blog/popular-post/post3.jpg" alt="post">
									<div class="media-body">
										<a href="blog-details.html">
											<h3>Astronomy Or Astrology</h3>
										</a>
										<p>03 Hours ago</p>
									</div>
								</div>
								<div class="media post_item">
									<img src="img/blog/popular-post/post4.jpg" alt="post">
									<div class="media-body">
										<a href="blog-details.html">
											<h3>Asteroids telescope</h3>
										</a>
										<p>01 Hours ago</p>
									</div>
								</div>
								<div class="br"></div>
							</aside>
							<aside class="single_sidebar_widget ads_widget">
								<a href="#"> <img class="img-fluid" src="img/blog/add.jpg"
									alt="">
								</a>
							</aside>
							<aside class="single_sidebar_widget post_category_widget">
								<h4 class="widget_title">Post Catgories</h4>
								<ul class="list cat-list">
									<li><a href="#" class="d-flex justify-content-between">
											<p>Technology</p>
											<p>37</p>
									</a></li>
									<li><a href="#" class="d-flex justify-content-between">
											<p>Lifestyle</p>
											<p>24</p>
									</a></li>
									<li><a href="#" class="d-flex justify-content-between">
											<p>Fashion</p>
											<p>59</p>
									</a></li>
									<li><a href="#" class="d-flex justify-content-between">
											<p>Art</p>
											<p>29</p>
									</a></li>
									<li><a href="#" class="d-flex justify-content-between">
											<p>Food</p>
											<p>15</p>
									</a></li>
									<li><a href="#" class="d-flex justify-content-between">
											<p>Architecture</p>
											<p>09</p>
									</a></li>
									<li><a href="#" class="d-flex justify-content-between">
											<p>Adventure</p>
											<p>44</p>
									</a></li>
								</ul>
								<div class="br"></div>
							</aside>
							<aside class="single-sidebar-widget tag_cloud_widget">
								<h4 class="widget_title">Tag Clouds</h4>
								<ul class="list">
									<li><a href="#">Technology</a></li>
									<li><a href="#">Fashion</a></li>
									<li><a href="#">Architecture</a></li>
									<li><a href="#">Fashion</a></li>
									<li><a href="#">Food</a></li>
									<li><a href="#">Technology</a></li>
									<li><a href="#">Lifestyle</a></li>
									<li><a href="#">Art</a></li>
									<li><a href="#">Adventure</a></li>
									<li><a href="#">Food</a></li>
									<li><a href="#">Lifestyle</a></li>
									<li><a href="#">Adventure</a></li>
								</ul>
							</aside>
						</div>
					</div>
				</div>
			</div>
		</section>
		


	<!--================Blog Area =================-->

	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/vendors/jquery/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/vendors/skrollr.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/vendors/nice-select/jquery.nice-select.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/vendors/jquery.ajaxchimp.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/vendors/mail-script.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/main.js"></script>

		<!-- 댓글 수정 -->
		<div class="replyModal">

			<div class="modalContent">

				<div>
					<textarea class="modal_cContent" name="modal_cContent"></textarea>
				</div>

				<div>
					<button type="button" class="modal_modify_btn">수정</button>
					<button type="button" class="modal_cancel">취소</button>
				</div>

			</div>

			<div class="modalBackground"></div>

		</div>


		<!-- 댓글 수정 끝 -->

		<script>
			$(".modal_cancel").click(function() {
				$(".replyModal").fadeOut(200);
			});
		</script>
		
		
		
</body>
</html>