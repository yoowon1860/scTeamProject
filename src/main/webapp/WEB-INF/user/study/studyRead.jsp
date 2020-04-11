<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
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
								<h3>스터디 댓글 작성</h3>



								<div class="col-md-8 form-group">
									<label>제목</label> <input type="text" class="form-control" id=""
										name="title" value="${study.title}">
								</div>
								<div class="col-md-8 form-group">
									<label>내용</label><br />
									<textarea rows="10" cols="50" name="content"
										value="${study.content}"></textarea>
									<br> <br> <br> <br>


								</div>


								<form class="col-md-8 form-group" action="studyComment.do"
									method="post" novalidate="novalidate"
									style="background: lightgray;">
									<div>
										<label>댓글 달기</label><br />
										<textarea rows="5" cols="40" name="content"
											value="${study.content}"></textarea>
										<br />
										<button style="background: gray; float: right;">작 성</button>
										<br />

									</div>



								</form>


								<div>
									<table class="table table-striped table-bordered table-hover 
									col-md-8 form-group">
										<thead>
											<tr>
												<th>댓글 ${totalComment }</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>
													<div>
														<p style="font-size: 10px; color: blue;">유원상</p> <p style="font-size: 10px; color: lightblack;">작성일</p>
													</div>
													<p style="font-size: 15px; color: black;">댓글 내용</p>
												</td>
											</tr>


										</tbody>
										<tbody>
											<tr>
												<td>
													<div>
														<p style="font-size: 10px; color: blue;">작성자</p> <p style="font-size: 10px; color: lightblack;">작성일</p>
													</div>
													<p style="font-size: 15px; color: black;">댓글 내용</p>
												</td>
											</tr>


										</tbody>
										<c:forEach var="comment" items="${studyComment}">
											<tbody>
												<tr>
													<td>
														<div>
															<p style="font-size: 10px; color: blue;">${comment.writer}</p>
															<p style="font-size: 10px; color: lightblack;">${comment.regDate}</p>
														</div>
														<p style="font-size: 15px; color: black;">${comment.content}</p>
													</td>
												</tr>
											</tbody>
										</c:forEach>
									</table>
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