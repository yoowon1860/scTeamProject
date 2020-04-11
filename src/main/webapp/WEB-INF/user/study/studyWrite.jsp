<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Aroma Shop - Checkout</title>
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
	href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendors/nice-select/nice-select.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendors/nouislider/nouislider.min.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/style.css">
</head>
<body>
	<!--================ Start Header Menu Area =================-->

	<!--================ End Header Menu Area =================-->

	<!-- ================ start banner area ================= -->
	<h3>STUDY</h3>
	<hr style="border: solid 1.5px #384aeb;">
	<!-- ================ end banner area ================= -->


	<!--================Checkout Area =================-->
	<section class="checkout_area section-margin--small">
		<div class="container">
			<div class="returning_customer">
				<div class="check_title">

					<div class="billing_details">
						<div class="row">
							<div class="col-lg-8">
								<h3>공고 작성</h3>
								<form class="row contact_form" action="study.do" method="post"
									novalidate="novalidate">

									
									<div class="col-md-12 form-group">
										<label>제목</label> <input type="text" class="form-control"
											id="" name="title">
									</div>
									<div class="col-md-12 form-group">
										<label>내용</label><br/>
										<textarea rows="10" cols="75" name="content"></textarea><br/>
										
										
									</div>
									<div class="col-md-12 form-group">
										<label>비밀번호</label> <input type="password" class="form-control"
											id="" name="password" placeholder="****" maxlength='4'>
											<br>
										<button style="float: right; background: lightgreen;">작성하기</button>
										<button style="float: right; background: red;">취 소</button>
										
									</div>
										
									

									<div>
									<br>
										
									</div>

								</form>

							</div>


						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Checkout Area =================-->



	<!--================ Start footer Area  =================-->

	<!--================ End footer Area  =================-->



	<script src="vendors/jquery/jquery-3.2.1.min.js"></script>
	<script src="vendors/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="vendors/skrollr.min.js"></script>
	<script src="vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="vendors/nice-select/jquery.nice-select.min.js"></script>
	<script src="vendors/jquery.ajaxchimp.min.js"></script>
	<script src="vendors/mail-script.js"></script>
	<script src="js/main.js"></script>
</body>
</html>