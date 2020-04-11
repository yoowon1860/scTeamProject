	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Aroma Shop - Product Details</title>
<link rel="icon"
	href="${pageContext.request.contextPath }/resources/img/Fevicon.png"
	type="image/png">
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


	<!--================Product Description Area =================-->
	<input type="hidden" class="form-control" id="email"
											name="email" value="${sessionScope.user.email }"/>
		<div class="container">
			<ul class="nav nav-tabs" id="myTab" role="tablist">
				<li class="nav-item"><a class="nav-link" id="home-tab"
					data-toggle="tab" href="myCourseAll.do" role="tab" aria-controls="home"
					aria-selected="true">전체 목록</a></li>
				<li class="nav-item"><a class="nav-link" id="profile-tab"
					data-toggle="tab" href="myCourseIng.do" role="tab"
					aria-controls="profile" aria-selected="false">수강 중</a></li>
				<li class="nav-item"><a class="nav-link" id="contact-tab"
					data-toggle="tab" href="myCourseEd.do" role="tab"
					aria-controls="contact" aria-selected="false">수강 완료</a></li>
			</ul>
			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade" id="home" role="tabpanel"
					aria-labelledby="home-tab">
					<section class="cart_area">
						<div class="container">
							<div class="cart_inner">
								<div class="table-responsive">
									<table class="table">
										<thead>	
											<tr>
												<th scope="col"></th>
												<th scope="col"> 제 품 정 보</th>
												<th scope="col"> 이 용 기 간</th>
											</tr>
										</thead>
										<tbody>
										 <c:forEach var="article" items="${articles}" varStatus="status">
											<tr>
												<td><img
													src="${pageContext.request.contextPath }/resources/img/category/linuximage.png"
													height="100" width="150" alt="">
													<p>강의 상세 보러가기</p></td> <!-- 강좌 상세 화면 페이지로 이동 -->
												<td>
													<p>리 눅 스 강 좌</p>
													<p>300원</p>
													<p>수강 완료</p>
												</td>
												<td>
													<h5>2020.03.17~</h5>
													<h5>2020.04.16</h5>
												</td>
											</tr>
										</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</section>
				</div>
				<div class="tab-pane fade" id="profile" role="tabpanel"
					aria-labelledby="profile-tab">
					<h3>강의 목록이 존재하지 않습니다.</h3>
				</div>
				<div class="tab-pane fade" id="contact" role="tabpanel"
					aria-labelledby="contact-tab">
					<section class="cart_area">
						<div class="container">
							<div class="cart_inner">
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th scope="col"></th>
												<th scope="col">제 품 정 보</th>
												<th scope="col">이 용 기 간</th>
												<th scope="col"></th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><img
													src="${pageContext.request.contextPath }/resources/img/category/linuximage.png"
													height="100" width="150" alt="">
													<p>강의 상세 보러가기</p></td>  <!-- 강좌 상세 화면 페이지로 이동 -->
												<td>
													<p>리 눅 스 강 좌</p>
												</td>
												<td>
													<h5>2020.03.17~</h5>
													<h5>2020.04.16</h5>
												</td>
												<td><input type="button" value="후기 작성하기"/> <!-- 구매후기 작성페이지 이동. 작성 이후 (후기작성 완료)버튼으로 뜨기(click 불가능)-->
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</section>
				</div>

			</div>
		</div>
	
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