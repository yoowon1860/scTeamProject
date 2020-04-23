<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendors/linericon/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendors/nice-select/nice-select.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/style.css">
</head>
<body>

	<h3>내 강의보기</h3>
	<hr style="border: solid 1.5px #384aeb;">
		
			<!--================Product Description Area =================-->
	<section class="product_description_area">
		<div class="container">
			<ul class="nav nav-tabs" id="myTab" role="tablist">
				<li class="nav-item">
					<a class="nav-link active" id="review-tab" data-toggle="tab" href="#review" role="tab" aria-controls="review"
					 aria-selected="false">전체 수강 강좌</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile"
					 aria-selected="false">수강 중</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact"
					 aria-selected="false">수강 종료</a>
				</li>

			</ul>
					<div class="tab-content" id="myTabContent">
			<!-- 수강 전체 -->
			<div class="tab-pane fade show active" id="review" role="tabpanel"
				aria-labelledby="review-tab">
				<div class="row">
					<table class="table">
						<thead>
							<tr>
								<th scope="col"></th>
								<th scope="col">강좌정보</th>
								<th scope="col">이용기간</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="course" items="${myCourseList}"
								varStatus="status">
								<tr>
									<td><img
										src="${pageContext.request.contextPath }/resources/img/category/linuximage.png"
										height="100" width="150" alt="">
										<p>강의 상세 보러가기</p></td>
									<!-- 강좌 상세 화면 페이지로 이동 -->
									<td>
										<p>${course.courseVO.name }</p>
										<p>${course.courseVO.price }</p>
										<p>수강 완료</p>
									</td>
									<td>
										<h5>${course.startDate }</h5>
										<h5>${course.endDate }</h5>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<!-- 수강 중 -->
			<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
				
					<div class="row">
					<div class="col-lg-6">
						수강중 내용
					</div>
				</div>
			</div>

				<!-- 수강 종료 -->
				<div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
					<div class="row">
						<div class="col-lg-6">
							수강 종료내용
						</div>
			
					</div>
				</div>
				</div>
		</div>
	</section>
	
	<!--================End Product Description Area =================-->

	<!--================ Start related Product area =================-->

	<!--================ end related Product area =================-->

	<!--================ Start footer Area  =================-->

	<!--================ End footer Area  =================-->



	<script
		src="${pageContext.request.contextPath }/resources/vendors/jquery/jquery-3.2.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/vendors/skrollr.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/vendors/nice-select/jquery.nice-select.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/vendors/jquery.ajaxchimp.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/vendors/mail-script.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
</body>
</html>