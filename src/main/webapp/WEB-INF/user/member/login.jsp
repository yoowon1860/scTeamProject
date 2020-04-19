<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<c:if test="${sessionScope.user != null }">
	<script type="text/javascript">
		location.href = "${path}/speedcampus/userHome.do";
	</script>
</c:if>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>로그인 화면</title>
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



	<section class="login_box_area section-margin">
		<div class="container">
				<div class="row">
				<div class="col-lg-6">
					<div class="login_box_img">
						<div class="hover">
							<h4>처음이신가요?</h4>
							<p>가입하시면 많은 혜택이 있습니다.</p>
							<a class="button button-account" href="register.do">회원가입</a>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="login_form_inner">
						<h3>Log In</h3>
						<form class="row login_form" action="loginCheck.do" method="post" id="contactForm" >
							<div class="col-md-12 form-group">
								<input type="email" class="form-control" id="user-id" name="email" placeholder = '아이디를 입력해주세요.'>
							</div>
							<div class="col-md-12 form-group">
								<input type="password" class="form-control" id="user-password" name="pass" placeholder = '비밀번호를 입력해주세요.'>
							</div>
<!-- 							<div class="col-md-12 form-group">
								<div class="creat_account">
									<input type="checkbox" id="f-option2" name="selector">
									<label for="f-option2">Keep me logged in</label>
								</div>
							</div> -->
							<div class="col-md-12 form-group">
								<button type="submit" class="button button-login w-100">로그인</button>
								<a href="#">비밀번호 찾기</a>
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

  
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/vendors/jquery/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/vendors/skrollr.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/vendors/nice-select/jquery.nice-select.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/vendors/jquery.ajaxchimp.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/vendors/mail-script.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/main.js"></script>
</body>
</html>