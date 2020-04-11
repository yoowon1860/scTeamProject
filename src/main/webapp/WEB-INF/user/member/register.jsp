<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>회원가입 화면</title>
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
</html>

<!--================ Start Header Menu Area =================-->

<!-- ================ start banner area ================= -->

<!-- ================ end banner area ================= -->

<!--================Login Box Area =================-->
<section class="login_box_area section-margin">
	<div class="container">
		<div class="row">
			<div class="col-lg-6">
				<div class="login_box_img">
					<div class="hover">
						<h4>이미 계정이 있으신가요?</h4>
						<p>로그인하고 스피드캠퍼스 회원만의 혜택을 누리세요.</p>
						<a class="button button-account" href="login.do">로그인하기</a>
					</div>
				</div>
			</div>
				<div class="col-lg-6">
					<div class="login_form_inner register_form_inner">
					<h3>Create An Account</h3>
					<form class="row login_form" action="register.do" method="post"
						id="register_form">
						<div class="col-md-12 form-group">
							<input type="text" class="form-control" id="user-name" name="name"
								placeholder='한글로 공백 없이 입력해주세요.'>
						</div>
						<div class="col-md-12 form-group">
							<input type="text" class="form-control" id="user-email" name="email"
								placeholder='이메일 주소를 입력해주세요.'>
						</div>
						<div class="col-md-12 form-group">
							<input type="text" class="form-control" id="user-phone" name="phone"
								placeholder='전화번호 입력해주세요.(-없이)'>
						</div>

						<div class="col-md-12 form-group">
							<input type="password" class="form-control" id="user-password"
								name="pass" placeholder='비밀번호를 입력해주세요.'>
						</div>
						<div class="col-md-12 form-group">
							<input type="password" class="form-control" id="user-password-again"
								name="password-again" placeholder='비밀번호를 확인해주세요.'>
						</div>
						<!-- 							<div class="col-md-12 form-group">
								<div class="creat_account">
									<input type="checkbox" id="f-option2" name="selector">
									<label for="f-option2">Keep me logged in</label>
								</div>
							</div> -->
						<div class="col-md-12 form-group">
							<button type="submit" value="로그인"
								class="button button-register w-100">회원가입</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section>
<!--================End Login Box Area =================-->


<!-- 홈화면복붙해야됨 -->
  <!--================ Start footer Area  =================-->	

	<!--================ End footer Area  =================-->

  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-ui.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/popper.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/owl.carousel.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery.stellar.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery.countdown.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/bootstrap-datepicker.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery.easing.1.3.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/aos.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery.fancybox.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery.sticky.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/main2.js"></script>
    
  </body>
</html>

