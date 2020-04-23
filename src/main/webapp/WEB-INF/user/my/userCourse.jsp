<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="today" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/linericon/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/nice-select/nice-select.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
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
					 aria-selected="false">전체 목록</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile"
					 aria-selected="false">수강 중</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact"
					 aria-selected="false">수강 완료</a>
				</li>

			</ul>
			<div class="tab-content" id="myTabContent">
				
				<!-- 수강 전체 -->
				<div class="tab-pane fade show active" id="review" role="tabpanel" aria-labelledby="review-tab">
					<div class="row">
						<div style="overflow-x:auto; width: 100%">
							<table class="table">
								<thead>
									<tr>
										<th scope="col"></th>
										<th scope="col">강좌정보</th>
										<th scope="col">이용기간</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="course" items="${myCourseList}" varStatus="status">
										<tr>
											<td style="padding: 10px;">
												<img src="${pageContext.request.contextPath }/resources/img/category/linuximage.png" height="100" width="150" alt="">
											</td>
											<!-- 강좌 상세 화면 페이지로 이동 -->
											<td style="padding: 10px;">
												<div style="margin: auto;">
													<p>강좌명 : ${course.courseVO.name }</p>
													<p>
														<c:choose>
															<c:when test="${course.endDate < today}">수강 완료</c:when>
															<c:when test="${course.endDate > today and course.startDate < today}">수강 중</c:when>
															<c:when test="${course.startDate > today}">수강 예정</c:when>
														</c:choose>
													</p>
												</div>
											</td>
											<td style="padding: 10px;">
												<h5>${course.startDate } ~ ${course.endDate }</h5>
												<c:if test="${course.endDate > today and course.startDate < today}">
												<br>
												<button class="button button-postComment button--active" style="padding: 5px; text-align: right;" onclick="window.open('${course.courseVO.youtube}','window_name','location=no,status=no,scrollbars=yes');">강의보기</button>
												</c:if>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			
				<!-- 수강 중 -->
				<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
					<div class="row">
						<div style="overflow-x:auto; width: 100%">
							<table class="table">
								<thead>
									<tr>
										<th scope="col"></th>
										<th scope="col">강좌정보</th>
										<th scope="col">이용기간</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="course" items="${myCourseList}" varStatus="status">
										<c:if test="${course.endDate > today and course.startDate < today}">
											<tr>
												<td style="padding: 10px;"><img src="${pageContext.request.contextPath }/resources/img/category/linuximage.png" height="100" width="150" alt="">
													
												</td>
												<td style="padding: 10px;">
													<div style="margin: auto;">
														<p>강좌명 : ${course.courseVO.name }</p>
														<p>수강 중</p>
														
													
													</div>
												</td>
												<td style="padding: 10px;">
													<h5>${course.startDate } ~ ${course.endDate }</h5>
													<br>
													<button class="button button-postComment button--active" style="padding: 5px; text-align: right;" onclick="window.open('${course.courseVO.youtube}','window_name','location=no,status=no,scrollbars=yes');">강의보기</button>
												</td>
											</tr>
										</c:if>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
		
				<!-- 수강 종료 -->
				<div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
					<div class="row">
						<div style="overflow-x:auto; width: 100%">
							<table class="table">
								<thead>
									<tr>
										<th scope="col"></th>
										<th scope="col">강좌정보</th>
										<th scope="col">이용기간</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="course" items="${myCourseList}" varStatus="status">
										<c:if test="${course.endDate < today}">
											<tr>
												<td style="padding: 10px;"><img src="${pageContext.request.contextPath }/resources/img/category/linuximage.png" height="100" width="150" alt="">
					
												</td>
												<!-- 강좌 상세 화면 페이지로 이동 -->
												<td style="padding: 10px;">
													<div style="margin: auto;">
														<p>강좌명 : ${course.courseVO.name }</p>
														<p>수강 완료</p>
													</div>
												</td>
												<td style="padding: 10px;">
													<h5>${course.startDate } ~ ${course.endDate }</h5>
												</td>
											</tr>
										</c:if>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	




	<script src="${pageContext.request.contextPath }/resources/vendors/jquery/jquery-3.2.1.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/vendors/skrollr.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/vendors/nice-select/jquery.nice-select.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/vendors/jquery.ajaxchimp.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/vendors/mail-script.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/main.js"></script>

</body>
</html>