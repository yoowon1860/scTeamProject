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
<title>SpeedCampus - 강좌</title>
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
	href="${pageContext.request.contextPath }/resources/vendors/nice-select/nice-select.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/style2.css">
</head>
<body>

	

	<div class="site-section courses-title" id="courses-section">
		<div class="container">
			<div class="row mb-5 justify-content-center">
				<div class="col-lg-7 text-center" data-aos="fade-up"
					data-aos-delay="">
					<h2 class="section-title">Courses</h2>
				</div>
			</div>
		</div>
	</div>
	<div class="site-section courses-entry-wrap" data-aos="fade-up"
		data-aos-delay="100">
		<div class="container">
			<div class="row">

				<div class="owl-carousel col-12 nonloop-block-14">

					<c:forEach var="course" items="${courseList}">
						<div class="course bg-white h-100 align-self-stretch">
							<figure class="m-0">
								<a href="course-single.html"><img
									src="${pageContext.request.contextPath }/resources/upload/${course.imgVO.stored_img }"
									alt="Image" class="img-fluid"></a>
							</figure>
							<div class="course-inner-text py-4 px-4">
								<span class="course-price">${course.price }원</span>
								<div class="meta">
									<span class="icon-clock-o"></span>4 Lessons / 12 weeks
								</div>
								<h3>
									${course.name }
								</h3>
								<a href="courseDetail.do?num=${course.num}">강좌 상세 보러가기</a>
							</div>
							<div class="d-flex border-top stats">
								<div class="py-3 px-4">
									<span class="icon-users"></span> 누적 수강생:
								</div>
								<div class="py-3 px-4 w-25 ml-auto border-left">
									<span class="icon-chat"></span> 2
								</div>
							</div>
						</div>
					</c:forEach>
				</div>



			</div>
			<div class="row justify-content-center">
				<div class="col-7 text-center">
					<button class="customPrevBtn btn btn-primary m-1">Prev</button>
					<button class="customNextBtn btn btn-primary m-1">Next</button>
				</div>
			</div>
		</div>
	</div>




	<%-- 
<!-- index.html복붙 -->
    <footer class="footer-section bg-white">
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <h3>About OneSchool</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro consectetur ut hic ipsum et veritatis corrupti. Itaque eius soluta optio dolorum temporibus in, atque, quos fugit sunt sit quaerat dicta.</p>
          </div>

          <div class="col-md-3 ml-auto">
            <h3>Links</h3>
            <ul class="list-unstyled footer-links">
              <li><a href="#">Home</a></li>
              <li><a href="#">Courses</a></li>
              <li><a href="#">Programs</a></li>
              <li><a href="#">Teachers</a></li>
            </ul>
          </div>

          <div class="col-md-4">
            <h3>Subscribe</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt incidunt iure iusto architecto? Numquam, natus?</p>
            <form action="#" class="footer-subscribe">
              <div class="d-flex mb-5">
                <input type="text" class="form-control rounded-0" placeholder="Email">
                <input type="submit" class="btn btn-primary rounded-0" value="Subscribe">
              </div>
            </form>
          </div>

        </div>

        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <div class="border-top pt-5">
            <p>
        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
        Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
      </p>
            </div>
          </div>
          
        </div>
      </div>
    </footer>
 --%>
	<!--================ Start footer Area  =================-->

	<!--================ End footer Area  =================-->

	<script
		src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery-migrate-3.0.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery-ui.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery.stellar.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery.countdown.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/bootstrap-datepicker.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery.easing.1.3.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/aos.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery.fancybox.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/js/jquery.sticky.js"></script>


	<script src="${pageContext.request.contextPath }/resources/js/main2.js"></script>

</body>
</html>

