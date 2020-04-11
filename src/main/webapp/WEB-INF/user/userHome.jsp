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

  <!--================ Start Header Menu Area =================-->

<header class="header_area">
    <div class="main_menu">
      <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
          <a class="navbar-brand logo_h" href="index.html"><img src="${pageContext.request.contextPath }/resources/img/logo.png" alt=""></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
            <ul class="nav navbar-nav menu_nav ml-auto mr-auto">
              <li class="nav-item active"><a class="nav-link" href="index.html">Home</a></li>
              <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">Courses</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="category.html">리눅스</a></li>
                  <li class="nav-item"><a class="nav-link" href="single-product.html">Spring</a></li>
                  <li class="nav-item"><a class="nav-link" href="checkout.html">Java</a></li>
                  <li class="nav-item"><a class="nav-link" href="confirmation.html">파이썬</a></li>
                  <li class="nav-item"><a class="nav-link" href="cart.html">알고리즘</a></li>
                </ul>
			  </li>
			  <li class="nav-item"><a class="nav-link" href="contact.html">Study</a></li>
              <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">Board</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="blog.html">공지사항</a></li>
                  <li class="nav-item"><a class="nav-link" href="single-blog.html">Q&A</a></li>
                </ul>
			 </li>
			
			 <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">My</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="myCourse.do">내 강의보기</a></li>
                  <li class="nav-item"><a class="nav-link" href="myCart.do">장바구니</a></li>
                  <li class="nav-item"><a class="nav-link" href="myWish.do">찜</a></li>
				  <li class="nav-item"><a class="nav-link" href="myUpdate.do">정보수정</a></li>
                </ul>
              </li>
              
            </ul>

            <ul class="nav-shop">
              <li class="nav-item"><button><i class="ti-search"></i></button></li>
              <li class="nav-item"><button><i class="ti-shopping-cart"></i><span class="nav-shop__circle">3</span></button> </li>
              <c:if test = "${sessionScope.user.email == null  } ">
              <li class="nav-item"><a class="button button-header" href="loginCheck.do">Login</a></li>
              </c:if>
              
             
              <li class="nav-item"><a class="button button-header" href="logout.do">Logout</a></li>
              
            </ul>
          </div>
        </div>
      </nav>
    </div>
  </header>
	<!--================ End Header Menu Area =================-->

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
    <!--================ Hero banner start =================-->

    <!--================ Hero Carousel start =================-->

    <!--================ Hero Carousel end =================-->
    
    <!-- ================ Best Selling item  carousel ================= --> 
    <section class="section-margin calc-60px">
    
    
      <div class="container">
        <div class="section-intro pb-60px">
          <p>Popular Class</p>
          <h2>Programming <span class="section-intro__style">Courses</span></h2>
        </div>
        <div class="owl-carousel owl-theme" id="bestSellerCarousel">
          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/product/class_android.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>Mobile App Programming</p>
              <h4 class="card-product__title"><a href="single-product.html">Android</a></h4>
              <p class="card-product__price">초급과정</p>
            </div>
          </div>

          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/product/class_cpp.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>Programming</p>
              <h4 class="card-product__title"><a href="single-product.html">CPP</a></h4>
              <p class="card-product__price">초급과정</p>
            </div>
          </div>

          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/product/class_java.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>Programming</p>
              <h4 class="card-product__title"><a href="single-product.html">Java</a></h4>
              <p class="card-product__price">초급과정</p>
            </div>
          </div>

          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/product/class_spring.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>Web Programming</p>
              <h4 class="card-product__title"><a href="single-product.html">Spring Framework</a></h4>
              <p class="card-product__price">초급과정</p>
            </div>
          </div>
          
            <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/product/class_linux.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>OS</p>
              <h4 class="card-product__title"><a href="single-product.html">Linux</a></h4>
              <p class="card-product__price">초급과정</p>
            </div>
          </div>

          <div class="owl-carousel owl-theme" id="bestSellerCarousel">
          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/product/class_android.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>Mobile App Programming</p>
              <h4 class="card-product__title"><a href="single-product.html">Android</a></h4>
              <p class="card-product__price">초급과정</p>
            </div>
          </div>

          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/product/class_cpp.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>Programming</p>
              <h4 class="card-product__title"><a href="single-product.html">CPP</a></h4>
              <p class="card-product__price">초급과정</p>
            </div>
          </div>

          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/product/class_java.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>Programming</p>
              <h4 class="card-product__title"><a href="single-product.html">Java</a></h4>
              <p class="card-product__price">초급과정</p>
            </div>
          </div>

          <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/product/class_spring.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>Web Programming</p>
              <h4 class="card-product__title"><a href="single-product.html">Spring Framework</a></h4>
              <p class="card-product__price">초급과정</p>
            </div>
          </div>
          
            <div class="card text-center card-product">
            <div class="card-product__img">
              <img class="img-fluid" src="${pageContext.request.contextPath }/resources/img/product/class_linux.png" alt="">
              <ul class="card-product__imgOverlay">
                <li><button><i class="ti-search"></i></button></li>
                <li><button><i class="ti-shopping-cart"></i></button></li>
                <li><button><i class="ti-heart"></i></button></li>
              </ul>
            </div>
            <div class="card-body">
              <p>OS</p>
              <h4 class="card-product__title"><a href="single-product.html">Linux</a></h4>
              <p class="card-product__price">초급과정</p>
            </div>
          </div>
        </div>
      </div>
      </div>
    </section>
    <!-- ================ Best Selling item  carousel end ================= --> 

    <!-- ================ trending product section start ================= -->  
    <section class="section-margin calc-60px">
      <div class="container">
        <div class="section-intro pb-60px">
          <p>Popular Class</p>
          <h2>Programming <span class="section-intro__style">Courses</span></h2>
        </div>
        <div class="row">
          <div class="col-md-6 col-lg-4 col-xl-3">
            <div class="card text-center card-product">
              <div class="card-product__img">
                <img class="card-img" src="${pageContext.request.contextPath }/resources/img/product/class_java.png" alt="">
                <ul class="card-product__imgOverlay">
                  <li><button><i class="ti-search"></i></button></li>
                  <li><button><i class="ti-shopping-cart"></i></button></li>
                  <li><button><i class="ti-heart"></i></button></li>
                </ul>
              </div>
              <div class="card-body">
                <p>Programming</p>
                <h4 class="card-product__title"><a href="single-product.html">Java Programming</a></h4>
                <p class="card-product__price">초급과정</p>
              </div>
            </div>
          </div>
          
          <div class="col-md-6 col-lg-4 col-xl-3">
            <div class="card text-center card-product">
              <div class="card-product__img">
                <img class="card-img" src="${pageContext.request.contextPath }/resources/img/product/class_cpp.png" alt="">
                <ul class="card-product__imgOverlay">
                  <li><button><i class="ti-search"></i></button></li>
                  <li><button><i class="ti-shopping-cart"></i></button></li>
                  <li><button><i class="ti-heart"></i></button></li>
                </ul>
              </div>
              <div class="card-body">
                <p>Programming</p>
                <h4 class="card-product__title"><a href="single-product.html">CPP</a></h4>
                <p class="card-product__price">초급과정</p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 col-xl-3">
            <div class="card text-center card-product">
              <div class="card-product__img">
                <img class="card-img" src="${pageContext.request.contextPath }/resources/img/product/class_linux.png" alt="">
                <ul class="card-product__imgOverlay">
                  <li><button><i class="ti-search"></i></button></li>
                  <li><button><i class="ti-shopping-cart"></i></button></li>
                  <li><button><i class="ti-heart"></i></button></li>
                </ul>
              </div>
              <div class="card-body">
                <p>OS</p>
                <h4 class="card-product__title"><a href="single-product.html">Linux</a></h4>
                <p class="card-product__price">초급과정</p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 col-xl-3">
            <div class="card text-center card-product">
              <div class="card-product__img">
                <img class="card-img" src="${pageContext.request.contextPath }/resources/img/product/class_android.png" alt="">
                <ul class="card-product__imgOverlay">
                  <li><button><i class="ti-search"></i></button></li>
                  <li><button><i class="ti-shopping-cart"></i></button></li>
                  <li><button><i class="ti-heart"></i></button></li>
                </ul>
              </div>
              <div class="card-body">
                <p>Mobile App</p>
                <h4 class="card-product__title"><a href="single-product.html">Android</a></h4>
                <p class="card-product__price">초급과정</p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 col-xl-3">
            <div class="card text-center card-product">
              <div class="card-product__img">
                <img class="card-img" src="${pageContext.request.contextPath }/resources/img/product/class_spring.png" alt="">
                <ul class="card-product__imgOverlay">
                  <li><button><i class="ti-search"></i></button></li>
                  <li><button><i class="ti-shopping-cart"></i></button></li>
                  <li><button><i class="ti-heart"></i></button></li>
                </ul>
              </div>
              <div class="card-body">
                <p>Web Programming</p>
                <h4 class="card-product__title"><a href="single-product.html">Spring Framework</a></h4>
                <p class="card-product__price">초급과정</p>
              </div>
            </div>
          </div>
         
        </div>
      </div>
    </section>
    <!-- ================ trending product section end ================= -->  


    <!-- ================ offer section start ================= --> 

    <!-- ================ offer section end ================= --> 



    <!-- ================ Blog section start ================= -->  
 
    <!-- ================ Blog section end ================= -->  

    <!-- ================ Subscribe section start ================= --> 

    <!-- ================ Subscribe section end ================= --> 

    

  </main>


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