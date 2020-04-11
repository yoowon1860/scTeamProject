<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Aroma Shop - Home</title>
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
			  <li class="nav-item"><a class="nav-link" href="studyList.do">Study</a></li>
              <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                  aria-expanded="false">Board</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="blog.html">공지사항</a></li>
                  <li class="nav-item"><a class="nav-link" href="single-blog.html">Q&A</a></li>
                </ul>
			 </li>z
			
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
              <c:if test = "${sessionScope.user.email == null  }">
              <li class="nav-item"><a class="button button-header" href="loginCheck.do">Login</a></li>
              </c:if>
              
              <c:if test = "${sessionScope.user.email != null }">
              <li class="nav-item"><a class="button button-header" href="logout.do">Logout</a></li>
              </c:if>
            </ul>
          </div>
        </div>
      </nav>
    </div>
  </header>
</body>
</html>