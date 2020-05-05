<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<c:if test="${sessionScope.user != null }">
	<script type="text/javascript">
		location.href = "${path}/speedcampus/userHome.do";
	</script>
</c:if>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>SpeedCampus - 로그인</title>
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

	<title>카카오톡 로그인</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
	<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
	<script>
		$(document).ready(function(){
			Kakao.init("3d52c442ccdfdc09ceeda1ecc2b4c155");
			function getKakaotalkUserProfile(){
				Kakao.API.request({
					url: '/v2/user/me',
					success: function(res) {
						$("#kakao-profile").append(res.properties.email);
						$("#kakao-profile").append(res.properties.nickname);
						$("#kakao-profile").append($("<img/>",{"src":res.properties.profile_image,"alt":res.properties.nickname+"님의 프로필 사진"}));
						console.log(res);
					},
					fail: function(error) {
						console.log(error);
					}
				});
			}
			function createKakaotalkLogin(){
				$("#kakao-logged-group .kakao-logout-btn,#kakao-logged-group .kakao-login-btn").remove();
				var loginBtn = $("<a/>",{"class":"kakao-login-btn","text":"카카오톡으로 로그인"});
				loginBtn.click(function(){
					Kakao.Auth.login({
						persistAccessToken: true,
						persistRefreshToken: true,
						success: function(authObj) {
							getKakaotalkUserProfile();
							createKakaotalkLogout();
						},
						fail: function(err) {
							console.log(err);
						}
					});
				});
				$("#kakao-logged-group").prepend(loginBtn)
			}
			function createKakaotalkLogout(){
				$("#kakao-logged-group .kakao-logout-btn,#kakao-logged-group .kakao-login-btn").remove();
				var logoutBtn = $("<a/>",{"class":"kakao-logout-btn","text":"로그아웃"});
				logoutBtn.click(function(){
					Kakao.Auth.logout();
					createKakaotalkLogin();
					$("#kakao-profile").text("");
				});
				$("#kakao-logged-group").prepend(logoutBtn);
			}
			if(Kakao.Auth.getRefreshToken()!=undefined&&Kakao.Auth.getRefreshToken().replace(/ /gi,"")!=""){
				createKakaotalkLogout();
				getKakaotalkUserProfile();
			}else{
				createKakaotalkLogin();
			}
		});
	</script>


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
								<a id="kakao-login-btn"></a>
								<!-- 카카오 -->
								<a href="http://developers.kakao.com/logout"></a>
								<%-- <script type='text/javascript'>
								  //<![CDATA[
								    // 사용할 앱의 JavaScript 키를 설정해 주세요.
								    Kakao.init('3d52c442ccdfdc09ceeda1ecc2b4c155');  //여기서 아까 발급받은 키 중 javascript키를 사용해준다.
								    // 카카오 로그인 버튼을 생성합니다.
								    Kakao.Auth.createLoginButton({
								      container: '#kakao-login-btn',
								      success: function(authObj) {
								        alert(JSON.stringify(authObj));
								        console.log(JSON.stringify(authObj));
								      },
								      fail: function(err) {
								         alert(JSON.stringify(err));
								      }
								    });
								  //]]>
								</script>--%>
								<!-- 카카오 끝 -->
								<div id="kakao-logged-group"></div>
								<div id="kakao-profile"></div>

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