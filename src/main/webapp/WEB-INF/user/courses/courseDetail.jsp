<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>{course.name} 상세페이지</title>
  <link rel="icon" href="${pageContext.request.contextPath }/resources/img/Fevicon.png" type="image/png">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/fontawesome/css/all.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/themify-icons/themify-icons.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/nice-select/nice-select.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.theme.default.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style2.css">
  
      <!-- 로그인 안한 상태에서 장바구니 추가 버튼 누르기 -->
<c:if test="${sessionScope.user == null }">
    <script type="text/javascript">
    function cart_event(){
    	alert("로그인이 필요한 서비스입니다")
    	location.href = "${path}/speedcampus/login.do";
    	}
    
    </script>
    </c:if>
</head>
 <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
  <!--================ Start Header Menu Area =================-->

	<!--================ End Header Menu Area =================-->

   

    <div class="intro-section single-cover" id="home-section">
      
      <div class="slide-1 " style="background-image: url('images/img_2.jpg');" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-12">
              <div class="row justify-content-center align-items-center text-center">
                <div class="col-lg-6">
                  <h1 data-aos="fade-up" data-aos-delay="0">${course.name } 과정</h1>
                  <p data-aos="fade-up" data-aos-delay="100">4 Lessons / 12 Week  2,193 students </p>
                </div>

                
              </div>
            </div>
            
          </div>
        </div>
      </div>
    </div>
    
    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mb-5">

            <div class="mb-5">
              <h3 class="text-black">Introduction of this Lecture</h3>
              <p class="mb-4">
                <strong class="text-black mr-3">강의 수: </strong> 5강
              </p>
              <p>1강 : ${course.name}란 무엇인가? </p>
			  <p>2강 : ${course.name} 첫번째 실습</p>
			  <p>3강 : ${course.name} 두번째 실습</p>
			  <p>4강 : ${course.name} 이론 심화편</p>
			  <p>5강 : ${course.name} 이론 마무리 및 마지막 실습</p>
			  
              <p class="mt-4"><a href="#" class="btn btn-primary">지금구매</a>
                <a href="reviewRead.do?num=${course.num}" class="btn btn-primary">구매후기 보기</a>
               
                  <form action="insertCart.do" method="post" novalidate="novalidate">
                <input type="hidden" name="email" value="${sessionScope.user.email }"/>
                <input type="hidden" name="vname" value="${course.name }"/>
                <input type="hidden" name="price" value="${course.price }"/>
                <input type="submit" class="btn btn-primary" value="장바구니 추가" onclick="cart_event"/>
                </form>
            </div>
          </div>
          <div class="col-lg-4 pl-lg-5">
            <div class="mb-5 text-center border rounded course-instructor">
              <h3 class="mb-5 text-black text-uppercase h6 border-bottom pb-3"><fmt:formatNumber value="${course.price}" pattern="#,###" />원</h3>
              <div class="mb-4 text-center">
                <img src="images/person_2.jpg" alt="Image" class="w-25 rounded-circle mb-4">  
                <h3 class="h5 text-black mb-4">Christine Downeyy</h3>
                <p>${course.detail }</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    

  <script src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/jquery-ui.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/popper.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/jquery.stellar.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/jquery.countdown.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/bootstrap-datepicker.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/jquery.easing.1.3.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/aos.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/jquery.fancybox.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/jquery.sticky.js"></script>

  
  <script src="${pageContext.request.contextPath }/resources/js/main2.js"></script>
    
  </body>
</html>

