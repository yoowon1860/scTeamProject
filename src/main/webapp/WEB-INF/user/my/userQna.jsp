<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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


	<h3>1:1 문의</h3>
	<hr style="border: solid 1.5px #384aeb;">

	<section class="checkout_area section-margin--small">
		<div class="container">
			<div class="returning_customer">
				<div class="check_title">

					<div class="billing_details">
						<div class="row">
							<div class="col-lg-8">
								<h3>문의 작성</h3>
								<form class="row contact_form" action="insertQ.do" method="post"
									novalidate="novalidate">
									<div class="col-md-12 form-group">
									<label>문의 유형</label>
										<div class="sorting">
										
											<select name="category">
												<option value="courseQ">강좌 관련</option>
												<option value="memberQ">회원 관련</option>
												<option value="otherQ">기타 문의</option>
											</select>
										</div>
									</div>
									<div class="col-md-12 form-group">
										<label>이메일 주소</label> <input type="text" class="form-control"
											id="writer" name="writer" value="${sessionScope.user.email }" readonly="readonly">
										<span class="placeholder" data-placeholder="First name"></span>
									</div>
									<div class="col-md-12 form-group">
										<label>제목</label> <input type="text" class="form-control"
											id="title" name="title">
									</div>
									<div class="col-md-12 form-group">

										<label>문의 내용</label><br />
										<textarea style="width: 100%;" name="content"></textarea>
										<br /> * 문의 답변은 이메일로 보내드립니다.
										<div style="text-align: right;">
											<a href="qnaList.do"
												class="button button-postComment button--active"
												style="padding: 5px">취소 </a>
											<button class="button button-postComment button--active"
												style="padding: 5px" type="submit" >등록</button>
										</div>
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