<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html >
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
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/nice-select/nice-select.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/vendors/nouislider/nouislider.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
</head>
<body>

	<h3>1:1 문의</h3>
	<hr style="border: solid 1.5px #384aeb;">

	<section class="checkout_area section-margin--small">
		<div class="container">
			<div class="returning_customer">
				<div class="check_title">

					<div class="billing_details">
						<div class="row">
							<div class="col-lg-8">
								
								
								<div style="width : 100%;">
	
  			<!-- Start Filter Bar --> 
             <div class="sorting"> 
               <select> 
                 <option value="1">Default sorting</option> 
                 <option value="1">Default sorting</option> 
                 <option value="1">Default sorting</option> 
               </select> 
             </div> 

           
<!-- End Filter Bar -->

   

		<div style="float: right; padding-bottom: 20px;">
			<a href="studyWrite.do" class="button button-postComment button--active"
				style="padding: 5px 5px 5px 5px;"> <img
				src="${pageContext.request.contextPath }/resources/img/write.png"
				width="20px" height="20px"> &nbsp;새글쓰기
			</a>
		</div>
		<div>
			<table class="table table-striped table-bordered table-hover">
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="study" items="${studyList}" varStatus="status">
						<tr>
							<td>${study.num }</td>
							<td id="title"><a href="studyRead.do?num=${study.num }">${study.title}</a></td>
							<td>${study.writer }</td>
							<td>${study.regDate}</td>
							<td>${study.cnt}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			
			
			


    </div>
  </div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<script src="vendors/jquery/jquery-3.2.1.min.js"></script>
	<script src="vendors/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="vendors/skrollr.min.js"></script>
	<script src="vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="vendors/nice-select/jquery.nice-select.min.js"></script>
	<script src="vendors/jquery.ajaxchimp.min.js"></script>
	<script src="vendors/mail-script.js"></script>
	<script src="js/main.js"></script>
</body>
</html>