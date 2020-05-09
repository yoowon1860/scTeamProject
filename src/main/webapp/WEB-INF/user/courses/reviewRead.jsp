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
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/nice-select/nice-select.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">

<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script>
	
	// 리뷰 목록 불러오는 함수
	function reviewList(){
		var conum = ${course.num};
		console.log(conum);
		$.getJSON("/speedcampus/reviewList.do" + "?conum=" + conum, function(data) {
			var str = "";
			$(data).each(function() {
				
				// 날짜데이터 보기쉽게 변환
				//var regDate = new Date(this.regDate);
				//regDate = regDate.toLocaleDateString("ko-US");
				// HTML 코드조립
				str += "<div data-rnum='"+ this.rnum + "'><h4 class='review'>" + this.userId + "</h4>"
				+"<br>"
				//+ "<i class='star'>" + regDate + "</i>"
				+ "<p class='reviewContent'>" + this.rContent + "</p><br>"
				+ "<c:if test='${user != null}'>"
				+ "<div class='reviewFooter'>"
				+ "<button type='button' class='modify' data-rnum='" + this.rnum + "'>수정</button>"
				+ "<button type='button' class='delete' data-rnum='" + this.rnum + "'>삭제</button>"
				
				+ "</div>"
				+ "</c:if>"
				+"<br><hr><br>"
				+"</div>"
			});
			$("div.review_item").html(str);
		});
								
	}
</script>
	
<style>


 div.reviewModal { position:relative; z-index:1; display:none;}
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

/* Bootstrap 수정 
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
} */

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

<!-- studyread.jsp에서 따옴 -->
<!-- ================ start banner area ================= -->	
	<section class="blog-banner-area" id="blog">
		<div class="container h-100">
			<div class="blog-banner">
				<div class="text-center">
					<h1>${course.name } Reviews</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Review Page</li>
            </ol>
          </nav>
				</div>
			</div>
    </div>
	</section>
	<!-- ================ end banner area ================= -->
<!--================Product Description Area =================-->
	<section class="product_description_area">
		<div class="container">
				
					<div class="row">
						<div class="col-lg-6">
							<div class="row total_rate">
								<div class="col-6">
									<div class="box_total">
										<h5>Overall</h5>
										 <h4>4.0</h4> 
										<%-- <h4>${averageReview }</h4> --%>
										<h6>(${countReview } Reviews)</h6>
									</div>
								</div>
								<div class="col-6">
									<div class="rating_list">
										<h3>Based on ${countReview } Reviews</h3>
										<ul class="list">
											<li><a href="#">5 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
													 class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
											<li><a href="#">4 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
													 class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
											<li><a href="#">3 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
													 class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
											<li><a href="#">2 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
													 class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
											<li><a href="#">1 Star <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i
													 class="fa fa-star"></i><i class="fa fa-star"></i> 01</a></li>
										</ul>
									</div>
								</div>
							</div>
							<!-- 리뷰목록 -->
							<div class="review_list">
								<div class="review_item">
								  </div> <script>reviewList();</script>
								  <c:if test="${countReview ==0 }">
								작성된 리뷰가 없습니다. 첫 리뷰를 작성해보세요 :)
								  </c:if>
									<!-- <div class="media">
										<div class="media-body">
											<h4>글쓴이 이메일</h4>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
											<i class="fa fa-star"></i>
										</div>
									</div>
									<p>리뷰내용 불러오기</p>
								</div> -->
							</div>
							
							<!-- 리뷰목록끝 -->
							
							
							<!-- 리뷰수정 -->
							<script type="text/javascript">
						$(document).on("click", ".modify", function(){
							 $(".reviewModal").fadeIn(200);
							 var rnum = $(this).attr("data-rnum");
							

						     var rContent = $(this).parent().parent().children(".reviewContent").text();
						     $(".modal_rContent").val(rContent);
						     $(".modal_modify_btn").attr("data-cnum", cnum);
							
						});
						</script>
							<!-- 리뷰수정끝 -->
							
						
						<!-- 리뷰 삭제 -->
						<script>
							$(document).on("click", ".delete", function() {
								var deleteConfirm = confirm("정말 삭제하시겠습니까?");
								if (deleteConfirm) {
									var data = {
										rnum : $(this).attr("data-rnum")
									};
									$.ajax({
										url : "/speedcampus/deleteReview.do",
										type : "post",
										data : data,
										success : function(result) {
											if (result == 1) {
												alert("삭제되었습니다.");
												reviewList();
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
						
												</div>
						<!-- 리뷰쓰는열 -->
						<div class="col-lg-6">
						
						<!-- 리뷰쓰기 -->
							<div class="review_box">
								<h4>리뷰쓰기</h4>
								<c:if test="${sessionScope.user == null }">
								<p>
									리뷰를 작성하시려면 <a href="login.do">로그인</a>해주세요
								</p>
								</c:if>
								
								
								<p>평점:</p>
								<div class="list">
								
									<li><a href="#"><i class="fa fa-star"></i></a></li>
									<li><a href="#"><i class="fa fa-star"></i></a></li>
									<li><a href="#"><i class="fa fa-star"></i></a></li>
									<li><a href="#"><i class="fa fa-star"></i></a></li>
									<li><a href="#"><i class="fa fa-star"></i></a></li>
								</div>
              
                
                <c:if test="${sessionScope.user != null}">
								<form class="form-contact form-review mt-3" role="form" method="post" autocomplete="off">
									<input type="hidden" name="conum" id="conum" value="${course.num }">

									<div class="form-group">
										<textarea class="form-control different-control w-100" cols="30" rows="5" name="rContent"
											id="rContent" placeholder="Review Content"
											onfocus="this.placeholder = ''"
											onblur="this.placeholder = 'Review Content'" required=""></textarea>
									</div>
									<button type="submit" class="button button--active button-review" id="insertReview">Post A Review</button>
								</form>
							</c:if>
							</div><!-- review-box div -->
							
						<script>
						// 댓글 작성
						 $("#insertReview").click(function(){
						  
						  var formObj = $(".reviewForm form[role='form']");
						  var conum = $("#conum").val();
						  var rContent = $("#rContent").val()
						  
						  var data = {
						    conum : conum,
						    rContent : rContent
						    };
						  
						  $.ajax({
						   url : "/speedcampus/insertReview.do",
						   type : "post",
						   data : data,
						   success : function(){
						    reviewList();
						    $("#rContent").val("");
						   }
						  });
						 });
						</script>
						</div>
						
						<!-- 리뷰쓰는열끝 -->
					</div>
		</div>
	</section>
	<!--================End Product Description Area =================-->

	<!--studyreadjsp================Blog Area =================-->

	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/vendors/jquery/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/vendors/skrollr.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/vendors/nice-select/jquery.nice-select.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/vendors/jquery.ajaxchimp.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/vendors/mail-script.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/main.js"></script>

		<!-- 댓글 수정 -->
		<div class="reviewModal">

			<div class="modalContent">

				<div>
					<textarea class="modal_rContent" name="modal_rContent"></textarea>
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
				$(".reviewModal").fadeOut(200);
			});
			
			// 댓글 수정
			$(".modal_modify_btn").click(function() {
				console.log('안녕');
				var modifyConfirm = confirm("정말 수정하시겠습니까?");

				if (modifyConfirm) {
					var data = {
						rnum : $(this).attr("data-rnum"),
						rContent : $(".modal_rContent").val()
					}; // ReviewVO 형태로 데이터 생성

					$.ajax({
						url : "/speedcampus/updateReview.do",
						type : "post",
						data : data,
						success : function(result) {

							if (result == 1) {
								reviewList();
								$(".reviewModal").fadeOut(200);
							} else {
								alert("작성자 본인만 할 수 있습니다.");
							}
						},
						error : function() {
							alert("로그인하셔야합니다.")
						}
					});
				}

			});
			
		</script>
		


</body>
</html>