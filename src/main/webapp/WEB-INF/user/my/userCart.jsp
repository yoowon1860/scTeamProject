<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <!-- 숫자 세자리마다 콤마(,) 넣기 -->

<!DOCTYPE html>
  <c:if test="${total ==0 }"> <!-- 장바구니 목록에 아무것도 없을 때 -->
                  	<h>장바구니가 비었습니다.
                  	장바구니를 채워보세요<h>
	                  </c:if>
<html lang="en">
<head>
<script src="/resources/jquery/jquery-3.3.1.min.js"></script>
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
              <div class="table-responsive" id="cartL">
              <c:if test="${total != 0}"> <!-- 장바구니 목록 1개 이상일 때 -->
                  <table class="table">
                      <thead>
                      	<tr>
                      	<div>
                      		<th colspan="2"><input type="checkbox" name="allCheck" id="allCheck" onclick="allChk(this);"><b>&nbsp;모두선택</b></th>
                      		<script type="text/javascript">
$("#allCheck").click(function(){
 var chk = $("#allCheck").prop("checked");
 if(chk) {
  $(".chBox").prop("checked", true);
 } else {
  $(".chBox").prop("checked", false);
 }
});
</script>
</div>
<div>
                      		<th colspan="2"><button  class="btn btn-danger btn-sm" id="selectDelete_btn"  style="float:right;">선택삭제</button></th>
                      		<script type="text/javascript">
 $("#selectDelete_btn").click(function(){
  var confirm_val = confirm("정말 삭제하시겠습니까?");
  
  if(confirm_val) {
   var checkArr = new Array();
   
   $("input[class='chBox']:checked").each(function(){
    checkArr.push($(this).attr("data-cartNum"));
   });
    
   $.ajax({
    url : "deleteCart.do",
    type : "post",
    data : { chbox : checkArr },
    success : function(email){
    		location.href="email";
    	
    }
   });
  
  } 
 });
</script>

                      	</tr>
                          <tr>
                          	  <th scope="col"></th>
                              <th scope="col" style="text-align:center;"><b>제 품 명</b></th>
                              <th scope="col" style="text-align:center;"><b>강 좌 정 보</b></th>
                              <th scope="col" style="text-align:center;"><b>가 격</b></th>
                             
                          </tr>
                      </thead>
                      <tbody >
                      <c:forEach var="cart" items="${cartList }" >
              
                          <tr>
                          <td><input type="checkbox"  name="chBox" class="chBox" data-cartNum="${cart.num}" /></td>
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
                                  <h5>${cart.courseVO.detail}</h5>
                              </td>
                              <td>
                                  <h5><fmt:formatNumber value="${cart.price}" pattern="#,###" />원</h5> <!-- 숫자 세자리마다 콤마(,) 넣기 -->
                                  <input type="hidden" value="${cart.num}"/>
                                  
                              </td>
                              <script type="text/javascript">
 $(".chBox").click(function(){
  $("#allCheck").prop("checked", false);
 });
</script>
                              
                              
                          </tr>
                          </c:forEach>
                          <tr><td>

                              </td>
                              <td>

                              </td>
                              <td>
                                 
                              </td>
                              <td>
                                  
                              </td></tr>
                          <tr>
                              <td>

                              </td>
                              <td>

                              </td>
                              <td>
                                 <h5><b> 총 결제액</b></h5>
                              </td>
                              <td>
                                  <h5><b><fmt:formatNumber value="${totalPrice }" pattern="#,###" />원</b></h5>
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
                                      <a class="gray_btn" href="course1.do">계속 쇼핑하기</a>
                                      <a class="primary-btn ml-2" href="#">결제하기</a>
                                  </div>
                              </td>
                          </tr>
                      </tbody>
                  </table>
                  </c:if>
                
              </div>
          </div>
      </div>
  </section>
  



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