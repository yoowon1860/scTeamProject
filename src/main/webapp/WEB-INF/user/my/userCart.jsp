<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Aroma Shop - Cart</title>
	<link rel="icon" href="${pageContext.request.contextPath }/resources/img/Fevicon.png" type="image/png">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/themify-icons/themify-icons.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/linericon/style.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.theme.default.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/nice-select/nice-select.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/nouislider/nouislider.min.css">

  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
  <c:if test="${sessionScope.user == null }">
	<script type="text/javascript">
		alert("로그인이 필요한 서비스입니다")
		location.href = "${path}/speedcampus/login.do";
	</script>
</c:if>



</head>
<body>

  <!--================ Start Header Menu Area =================-->

	<!--================ End Header Menu Area =================-->

	<!-- ================ start banner area ================= -->	
	<h3>장바구니</h3>
	<hr style="border: solid 1.5px #384aeb;">
	<!-- ================ end banner area ================= -->
  
  

  <!--================Cart Area =================-->
  <section class="cart_area">
      <div class="container">
          <div class="cart_inner">
              <div class="table-responsive">
              <c:if test="${total != 0}">
                  <table class="table">
                      <thead>
                          <tr>
                          	  <th scope="col" width="100"><input type="checkbox"/> 전체선택</th>
                              <th scope="col">제 품 명</th>
                              <th scope="col">가 격</th>
                              <th scope="col">강 좌 정 보</th>
                              
                          </tr>
                      </thead>
                      <tbody>
                      <c:forEach var="cart" items="${cartList }" >
              
                          <tr>
                          <td><input type="checkbox"/></td>
                              <td>
                                  <div class="media">
                                      <div class="d-flex">
                                          <img src="${pageContext.request.contextPath }/resources/img/category/linuximage.png" height="100" width="150" alt="">
                                      </div>
                                      <div class="media-body">
                                          <p>${ cart.vname }</p>
                                      </div>
                                  </div>
                              </td>
                              <td>
                                  <h5>${cart.price} 원</h5>
                              </td>
                              <td>
                                  <h5>디테일</h5>
                              </td>
                              
                          </tr>
                          </c:forEach>
                          <tr>
                              <td>

                              </td>
                              <td>

                              </td>
                              <td>
                                  <h5>Subtotal</h5>
                              </td>
                              <td>
                                  <h5>$2160.00</h5>
                              </td>
                          </tr>
                          <tr class="shipping_area">
                              <td class="d-none d-md-block">

                              </td>
                             
                          </tr>
                          <tr class="out_button_area">
                              <td class="d-none-l">

                              </td>
                              <td class="">

                              </td>
                              <td>

                              </td>
                              <td>
                                  <div class="checkout_btn_inner d-flex align-items-center">
                                      <a class="gray_btn" href="#">Continue Shopping</a>
                                      <a class="primary-btn ml-2" href="#">Proceed to checkout</a>
                                  </div>
                              </td>
                          </tr>
                      </tbody>
                  </table>
                  </c:if>
                  <c:if test="${total == 0}">
                  	<h>장바구니가 비었습니다.
                  	장바구니를 채워보세요<h>
	                  </c:if>
              </div>
          </div>
      </div>
  </section>
  <!--================End Cart Area =================-->



  <!--================ Start footer Area  =================-->	

	<!--================ End footer Area  =================-->



  <script src="${pageContext.request.contextPath }/resources/vendors/jquery/jquery-3.2.1.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/vendors/skrollr.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/vendors/nice-select/jquery.nice-select.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/vendors/jquery.ajaxchimp.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/vendors/mail-script.js"></script>
  <script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
</body>
</html>