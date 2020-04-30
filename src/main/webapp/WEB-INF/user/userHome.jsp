<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>SpeedCampus</title>
  <link rel="icon" href="${pageContext.request.contextPath }/resources/img/Fevicon.png" type="image/png">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/fontawesome/css/all.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/themify-icons/themify-icons.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/nice-select/nice-select.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.theme.default.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
</head>
<body>
  <main class="site-main">

    <!--================ Hero banner start =================-->
    <section class="hero-banner">
      <div class="container">
        <div class="row no-gutters align-items-center pt-60px">
          <div class="col-5 d-none d-sm-block">
            <div class="hero-banner__img">
              <img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/home/homee.png" alt="">
            </div>
          </div>
          <div class="col-sm-7 col-lg-6 offset-lg-1 pl-4 pl-md-5 pl-lg-0">
            <div class="hero-banner__content">
              <h4>Learn Programming!</h4>
              <h1>SPEED CAMPUS</h1>
              <p>스피드캠퍼스는 커리어 성장을 위한 최고의 실무교육 아카데미입니다.</p>
              <a class="button button-hero" href="#">Browse Now</a>
            </div>
          </div>
        </div>
      </div>
    </section>
    
    <!-- 신규 강좌 -->  
    <section class="section-margin calc-60px">
      <div class="container">
        <div class="section-intro pb-60px">
          <p>신규 강좌</p>
          <h2><span class="section-intro__style">New Courses</span></h2>
        </div>
        <div class="owl-carousel owl-theme" id="bestSellerCarousel">
          <c:forEach var="n" items="${newCourse}" varStatus="status">
          	<div class="card text-center card-product">
           		<form action="insertCart.do" method="post" novalidate="novalidate">
          		<input type="hidden" name="email" value="${sessionScope.user.email }"/>
          		<input type="hidden" name="vname" value="${n.name }"/>
          		<input type="hidden" name="price" value="${n.price }"/>
            	<div class="card-product__img">
              		<img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/product/class_linux.png" alt="">
              		<ul class="card-product__imgOverlay">
                		<li><button type="button" onclick="location.href='courseDetail.do?num=${n.num}'" ><i class="ti-search"></i></button></li>
                		<li><button><i class="ti-shopping-cart"></i></button></li>
              		</ul>
            	</div>
            	<div class="card-body">
              		<p> </p>
              		<h4 class="card-product__title"><a href="single-product.html">${n.name }</a></h4>
              		<p class="card-product__price"> </p>
            	</div>
            	</form>
          	</div>
        </c:forEach>
      </div>
      </div>
    </section>
    <!-- 신규 강좌 끝  -->  

    <!-- 인기 강좌 -->  
    <section class="section-margin calc-60px">
      <div class="container">
        <div class="section-intro pb-60px">
          <p>인기 강좌</p>
          <h2><span class="section-intro__style">Popular Courses</span></h2>
        </div>
        <div class="row">
        	<c:forEach var="p" items="${popularCourse}" varStatus="status">
         		<div class="col-md-6 col-lg-4 col-xl-3">
           			<form action="insertCart.do" method="post" novalidate="novalidate">
          			<input type="hidden" name="email" value="${sessionScope.user.email }"/>
          			<input type="hidden" name="vname" value="${p.courseVO.name }"/>
          			<input type="hidden" name="price" value="${p.courseVO.price }"/>
            		<div class="card text-center card-product">
              			<div class="card-product__img">
                			<img class="card-img" src="${pageContext.request.contextPath }/resources/img/product/class_java.png" alt="">
                			<ul class="card-product__imgOverlay">
                 				<li><button type="button" onclick="location.href='courseDetail.do?num=${p.vnum}'"><i class="ti-search"></i></button></li>
                  				<li><button><i class="ti-shopping-cart"></i></button></li>
                			</ul>
              			</div>
              			<div class="card-body">
                			<p> </p>
                			<h4 class="card-product__title"><a href="single-product.html">${p.courseVO.name }</a></h4>
                			<p class="card-product__price"> </p>
              			</div>
            		</div>
             		</form>
          		</div>
         	</c:forEach>
	          <%--
	          		사진 경로 
	              <img class="card-img" src="${pageContext.request.contextPath }/resources/img/product/class_cpp.png" alt="">
	              <img class="card-img" src="${pageContext.request.contextPath }/resources/img/product/class_linux.png" alt="">
	              <img class="card-img" src="${pageContext.request.contextPath }/resources/img/product/class_android.png" alt="">
	       		  <img class="card-img" src="${pageContext.request.contextPath }/resources/img/product/class_spring.png" alt="">
	         --%>
        </div>
      </div>
    </section>
       <!-- 인기 강좌 끝--> 

  </main>

  
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