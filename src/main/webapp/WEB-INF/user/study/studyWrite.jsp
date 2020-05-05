<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
<head>
<script>
	var str = document.getElementById("textarea").value;

	str = str.replace(/(?:\r\n|\r|\n)/g, '<br />');

	document.getElementById("text").innerHTML = str;
</script>

<c:if test="${sessionScope.user == null }">
	<script type="text/javascript">
		alert("로그인이 필요한 서비스입니다")
		location.href = "${path}/speedcampus/login.do";
	</script>
</c:if>
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
<style>
#container {
	width: 100%;
	margin: 0 auto; /* 가로로 중앙에 배치 */
	padding-right: 20%; /* 테두리와 내용 사이의 패딩 여백 */
	padding-left: 20%;
	padding-bottom: 20%;
	padding-top: 5%;
}
#list {
	text-align: center;
}
#write {
	text-align: right;
}
/* Bootstrap 수정 */
.table>thead {
	background-color: #384aeb;
	color: #ffffff;
}
.table>thead>tr>th {
	text-align: center;
}
.table-hover>tbody>tr:hover {
	background-color: #e6ecff;
}
.table>tbody>tr>td {
	text-align: center;
}
.table>tbody>tr>#title {
	text-align: left;
}
div>#paging {
	text-align: center;
}
.hit {
	animation-name: blink;
	animation-duration: 1.5s;
	animation-timing-function: ease;
	animation-iteration-count: infinite;
	/* 위 속성들을 한 줄로 표기하기 */
	/* -webkit-animation: blink 1.5s ease infinite; */
}
to {
	color: red;
	font-weight: bold;
}
</style>

</head>
<body>
	<div id="container">
		
		<h3>STUDY</h3>
		<hr style="border: solid 1.5px #384aeb;">
		<div class="returning_customer">
			<div class="check_title">

				<div class="billing_details">
					<div class="row">
						<div class="col-lg-8">
							<h3>스터디 모집하기</h3>
							<form class="row contact_form" action="studyWriteAction.do"
								method="post" novalidate="novalidate">
								<input type="hidden" name="writer" value="${sessionScope.user.email }">

								<div class="col-md-12 form-group">
									<label>제목</label> <input type="text" class="form-control" id=""
										name="title">
								</div>
								<div class="col-md-12 form-group">
								
									<label>내용</label><br />
									<textarea id="textarea" rows="10" cols="75" name="content" wrap="hard">
										
									</textarea>
									
									<br/>


								</div>
								<div class="col-md-12 form-group">
									

									<div style="text-align: right;">
										<a href="studyList.do"
											class="button button-postComment button--active"
											style="padding: 5px">취소
										</a>
										<button 
											class="button button-postComment button--active"
											style="padding: 5px" type="submit"a>등록
										</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>



	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/vendors/jquery/jquery-3.2.1.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/vendors/skrollr.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/vendors/nice-select/jquery.nice-select.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/vendors/jquery.ajaxchimp.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/vendors/mail-script.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/resources/js/main.js"></script>
</body>
</html>