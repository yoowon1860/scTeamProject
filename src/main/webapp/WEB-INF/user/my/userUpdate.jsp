<%@page import="com.sc.speedcampus.user.member.vo.UserVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
	
	<c:if test="${sessionScope.user == null }">
	<script type="text/javascript">
		alert("로그인이 필요한 서비스입니다")
		location.href = "${path}/speedcampus/login.do";
	</script>
</c:if>
</head>
<body>
	<!--================ Start Header Menu Area =================-->

	<!-- ======= End Header Menu Area =================-->

	<!-- ================ start banner area ================= -->

	
	<h3>회원 정보 수정</h3>
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
								<h3>회원 정보 내역</h3>
								<form class="row contact_form" action="userUpdate.do" method="post"
									novalidate="novalidate">
									<div class="col-md-12 form-group p_star">
										<input type="hidden" class="form-control" id="email"
											name="email" value="${sessionScope.user.email }"/>
									</div>
									
									<div class="col-md-12 form-group">
										<input type="text" class="form-control" id="first" name="name"
											value="${sessionScope.user.name }" >
									</div>
									<div class="col-md-12 form-group">
										<input type="text" class="form-control" id="phone"
											name="phone" value=" ${sessionScope.user.phone }">
									</div>
									<div class="col-md-12 form-group">
										<input type="password" class="form-control" id="pass"
											name="pass" placeholder="기존 비밀번호">
									</div>
									<div class="col-md-12 form-group p_star">
										<input type="password" class="form-control" id="newPass1"
											name="newPass1" placeholder="변경 비밀번호"> 
									</div>
									<div class="col-md-12 form-group p_star">
										<input type="password" class="form-control" id="newPass2"
											name="newPass2" placeholder="비밀번호 확인"> 
									</div>
									
									 <div class="col-md-12 form-group">
									<button type="submit" 
								class="button button-register w-100">수정하기</button>
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