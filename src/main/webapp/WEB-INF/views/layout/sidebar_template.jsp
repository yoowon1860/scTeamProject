<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>   
<!DOCTYPE html>
<html>
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
	<div class="default">
		<div>
			<tiles:insertAttribute name="header" />
		</div>
	<section class="section-margin--small mb-5">
		<div class="container">
	      <div class="row">
	        <div class="col-xl-3 col-lg-4 col-md-5">
	          <div class="sidebar-categories">
	   			<tiles:insertAttribute name="sidebar" />
	
	          </div>
	        </div>
	        <div class="col-xl-9 col-lg-8 col-md-7">
	
	          <tiles:insertAttribute name="content" />
	        
	        </div>
	      </div>
	    </div>
    </section>

		<div class="footer-area">
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
</body>
</html>













