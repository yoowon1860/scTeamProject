<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta http-equiv="Content-Type" content="text/html" charset="utf-8">
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
  <style >
.star-input>.input,
.star-input>.input>label:hover,
.star-input>.input>input:focus+label,
.star-input>.input>input:checked+label{display: inline-block;vertical-align:middle;background:url('${pageContext.request.contextPath }/resources/img/grade_img.png')no-repeat;}
.star-input{display:inline-block; white-space:nowrap;width:225px;height:40px;padding:25px;line-height:30px;}
.star-input>.input{display:inline-block;width:150px;background-size:150px;height:28px;white-space:nowrap;overflow:hidden;position: relative;}
.star-input>.input>input{position:absolute;width:1px;height:1px;opacity:0;}
star-input>.input.focus{outline:1px dotted #ddd;}
.star-input>.input>label{width:30px;height:0;padding:28px 0 0 0;overflow: hidden;float:left;cursor: pointer;position: absolute;top: 0;left: 0;}
.star-input>.input>label:hover,
.star-input>.input>input:focus+label,
.star-input>.input>input:checked+label{background-size: 150px;background-position: 0 bottom;}
.star-input>.input>label:hover~label{background-image: none;}
.star-input>.input>label[for="p1"]{width:30px;z-index:5;}
.star-input>.input>label[for="p2"]{width:60px;z-index:4;}
.star-input>.input>label[for="p3"]{width:90px;z-index:3;}
.star-input>.input>label[for="p4"]{width:120px;z-index:2;}
.star-input>.input>label[for="p5"]{width:150px;z-index:1;}
.star-input>output{display:inline-block;width:60px; font-size:18px;text-align:right; vertical-align:middle;}
.wrap {
    width: 900px;
    height: auto;
    position: relative;
    display: inline-block;
}
.wrap textarea {
    width: 100%;
    height: 300px;
    resize: none;
    
    line-height:1.6em;
    max-height: 9em;
}
.wrap span {
    position: absolute;
    bottom: 5px;
    right: 5px;
}
#counter {
  background:rgba(255,0,0,0.5);
  border-radius: 0.5em;
  padding: 0 .5em 0 .5em;
  font-size: 0.75em;
}
</style>
</head>
<body>
  <!--================ Start Header Menu Area =================-->

	<!--================ End Header Menu Area =================-->

	<!-- ================ start banner area ================= -->	
	<h3>구매후기 작성</h3>
   <hr style="border: solid 1.5px #384aeb;">
	<!-- ================ end banner area ================= -->
	
	<div>
	<br/>
- 후기 내용은 20자 이상 작성합니다. <br/>
- 등록하신 후기는 공개되어 회원이 조회 가능하며, 댓글이 등록될 수 있습니다.<br/>
- 작성된 후기는 스피드캠퍼스 홍보 콘텐츠로 사용될 수 있습니다.

	
	
	</div>
  
  

  <!--================Start StarScore Area =================-->
  
별점을 매겨주세요<span class="star-input">
	<span class="input">
    	<input type="radio" name="star-input" value="1" id="p1">
    	<label for="p1">1</label>
    	<input type="radio" name="star-input" value="2" id="p2">
    	<label for="p2">2</label>
    	<input type="radio" name="star-input" value="3" id="p3">
    	<label for="p3">3</label>
    	<input type="radio" name="star-input" value="4" id="p4">
    	<label for="p4">4</label>
    	<input type="radio" name="star-input" value="5" id="p5">
    	<label for="p5">5</label>
  	</span><form action="#/"><output for="star-input"><b>0</b>점</output></form>	<!-- DB에 리뷰 별점수 넣어야함 -->
  						
</span>
<script src="${pageContext.request.contextPath }/resources/js/jquery-1.11.3.min.js"></script>
<script src="${pageContext.request.contextPath }/resources/js/star.js"></script>
</body>
 <!--================End StarScore Area =================-->
 
 
 
 
 <!--================Start Review Area =================-->
 <br/><br/><p>상품에 대한 평가를 20자 이상 작성해 주세요 .</p>

 <form action="#/" class="form-contact form-review mt-3">
 <div class="wrap">
    <textarea rows="10" cols="130" id="content" maxlength="300" placeholder="내용" minlength="20"></textarea>
    <span id="counter">###</span>
</div>
 <script src="${pageContext.request.contextPath }/resources/js/review.js"></script>
 <br/>
 
 
 
 <input type = "password" minlength="4" placeholder="숫자 4개 등록">
 <button style="float:right;">등 록</button> <!-- 등록 후 내 강의 완료 목록으로 이동  -->
 </form>
  <!--================End Review Area =================-->



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