<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
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
          <a class="navbar-brand logo_h" href="userHome.do"><img width="200px" height="40px" src="${pageContext.request.contextPath }/resources/img/sclogo.png" alt=""></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
					<div class="collapse navbar-collapse offset"
						id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto mr-auto">
							<li class="nav-item active"><a class="nav-link" href="userHome.do">Home</a></li>
							<li class="nav-item submenu dropdown"><a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" 
							role="button" aria-haspopup="true" aria-expanded="false">Courses</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="course1.do">리눅스</a></li>
									<li class="nav-item"><a class="nav-link" href="course2.do">Spring</a></li>
									<li class="nav-item"><a class="nav-link" href="course3.do">Java</a></li>
									<li class="nav-item"><a class="nav-link" href="course4.do">파이썬</a></li>
									<li class="nav-item"><a class="nav-link" href="course5.do">알고리즘</a></li>
								</ul></li>
							<li class="nav-item"><a class="nav-link" href="studyList.do">Study</a></li>
							<li class="nav-item"><a class="nav-link" href="noticeList.do">Notice</a></li>
							<c:if test="${sessionScope.user.email != null }">
							<li class="nav-item submenu dropdown"><a href="#"
								class="nav-link dropdown-toggle" data-toggle="dropdown"
								role="button" aria-haspopup="true" aria-expanded="false">My</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="myCourse.do">내 강의보기</a></li>
									<li class="nav-item"><a class="nav-link" href="myCart.do?email=${sessionScope.user.email }">장바구니</a></li>
									<li class="nav-item"><a class="nav-link" href="myUpdate.do">정보수정</a></li>
									<li class="nav-item"><a class="nav-link" href="qnaList.do">1:1 문의</a></li>
								</ul></li>
								</c:if>

						</ul>

						<ul class="nav-shop">
							<li class="nav-item"><button>
									<i class="ti-search"></i>
								</button></li>
								
								<c:if test="${sessionScope.user.email != null }"> <!-- 로그인 상태에서만 화면 표출 -->
							<li class="nav-item"><button type="button" onclick="location.href='myCart.do'">
									<i class="ti-shopping-cart"></i><span class="nav-shop__circle">${total }</span>
								</button></li>
								
								<li class="nav-item"><a class="button button-header"
									href="logout.do">Logout</a></li>
							</c:if>
							<c:if test="${sessionScope.user.email == null  }">	<!-- 비로그인 상태에서 화면 표출 -->
								<li class="nav-item"><a class="button button-header"
									href="login.do">Login</a></li>
							</c:if>

							
						</ul>
					</div>
				</div>
      </nav>
    </div>
  </header>
</body>
</html>