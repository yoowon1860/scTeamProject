<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="icon" href="${pageContext.request.contextPath }/resources/img/Fevicon.png" type="image/png">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/linericon/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">

<style>
#container {
	width: 100%;
	margin: 0 auto; /* 가로로 중앙에 배치 */
	padding-right: 20%; /* 테두리와 내용 사이의 패딩 여백 */
	padding-left: 20%;
	padding-bottom: 20%;
	padding-top: 5%;
}

#list {
	text-align: center;
}

#write {
	text-align: right;
}

/* Bootstrap 수정 */
.table>thead {
	background-color: #384aeb;
	color: #ffffff;
}

.table>thead>tr>th {
	text-align: center;
}

.table-hover>tbody>tr:hover {
	background-color: #e6ecff;
}

.table>tbody>tr>td {
	text-align: center;
}

.table>tbody>tr>#title {
	text-align: left;
}

div>#paging {
	text-align: center;
}

.hit {
	animation-name: blink;
	animation-duration: 1.5s;
	animation-timing-function: ease;
	animation-iteration-count: infinite;
	/* 위 속성들을 한 줄로 표기하기 */
	/* -webkit-animation: blink 1.5s ease infinite; */
}
</style>
</head>
<body>

	<div id="container">
		<h3>Notice</h3>
		<hr style="border: solid 1.5px #384aeb;">
		<section class="blog_area single-post-area py-80px section-margin--small">
			<div class="container">
				<div class="row">
					<div class="col-lg-8 posts-list">
						<div class="single-post row">
							<div class="col-lg-12">
								<div class="feature-img">
									<ul class="blog_meta list">
										<i class="lnr lnr-user"></i>&nbsp;운영자&emsp;
										<i class="lnr lnr-calendar-full"></i>&nbsp;${notice.regDate }&emsp;
										<i class="lnr lnr-eye"></i>&nbsp;${notice.viewcnt } Views&emsp;
									</ul>
								</div>
							</div>
							<div class="col-lg-3  col-md-3"></div>
							<div class="col-lg-9 col-md-9 blog_details"></div>
							<div class="col-lg-12">

								<div class="row">

									<div class="col-lg-12 mt-4">
										<div>
											<div style="float: left;">
												<h4>#&nbsp;${notice.num }&nbsp;&nbsp;${notice.title }</h4>
											</div>
										
											<div style="text-align: right;"></div>


										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="navigation-area">
							<p style="padding-top: 30px; float: bottom;">${notice.content }</p>

							<div class="row">
								<div class="col-lg-12 col-md-6 col-12 nav-left flex-row d-flex justify-content-start align-items-center">



								</div>
								<div class="col-lg-12 col-md-6 col-12 nav-right flex-row d-flex justify-content-end align-items-center">


								</div>
							</div>
						</div>
					</div>
		<!-- 		<div class="col-lg-4">
						<div class="blog_right_sidebar">
							<aside class="single_sidebar_widget search_widget">
					
							</aside>
							<aside class="single_sidebar_widget author_widget">



							</aside>
							
							<aside class="single_sidebar_widget ads_widget">
								<a href="#"> <img class="img-fluid" src="img/blog/add.jpg"
									alt="">
								</a>
							</aside>
							
							
						</div>
					</div>-->
				</div>
			</div>
		</section>
	</div>

	<!--================Blog Area =================-->

	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/vendors/jquery/jquery-3.2.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/vendors/skrollr.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/vendors/nice-select/jquery.nice-select.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/vendors/jquery.ajaxchimp.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/vendors/mail-script.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/js/main.js"></script>
</body>
</html>