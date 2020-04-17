<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
	
<!DOCTYPE html>
<html >
<head>

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
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<style type="text/css">
 
    /* Bootstrap 수정 */
    .table > thead {
      background-color: #384aeb;
      color: #ffffff;
    }
    .table > thead > tr > th {
      text-align: center;
    }
    .table-hover > tbody > tr:hover {
      background-color: #e6ecff;
      
    }
    .table > tbody > tr > td {
      text-align: center;
    }
    .table > tbody > tr > #title {
      text-align: left;
    }
     
    div > #paging {
      text-align: center;
    }
</style>
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


								<div style="width: 100%;">

									<!-- Start Filter Bar -->
									<div class="sorting">
										<select>
											<option value="0">문의 유형 선택</option>
											<option value="1">강좌 관련</option>
											<option value="2">회원 관련</option>
											<option value="3">기타 문의</option>
										</select>
									</div>
									<!-- End Filter Bar -->



									<div style="float: right; padding-bottom: 20px;">
										<a href="insertQForm.do"
											class="button button-postComment button--active"
											style="padding: 5px;"> <img
											src="${pageContext.request.contextPath }/resources/img/write.png"
											width="20px" height="20px">&nbsp;문의하기
										</a>
									</div>
									<div>
										<table class="table table-striped table-bordered table-hover">
											<thead>
												<tr>
													<th width="70px;">번호</th>
													<th width="300px;">제목</th>
													<th width="150px;">작성일</th>
													<th width="150px;">처리상태</th>
													<th width="150px;">수정/삭제</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="qna" items="${qnaList}" varStatus="status">
													
													<tr>
														<td>${qna.qnum }</td>
														<td id="title"><a href="studyRead.do?num=${qna.qnum }">${qna.title}</a></td>
														<td><fmt:formatDate value="${qna.regDate}" pattern="yyyy-MM-dd"/></td>
														<c:choose>
														<c:when test="${qna.answerState eq 'N'}">
															<td>답변 대기</td>
															<td>
																<button type="button" class="btn btn-primary" style="padding: 5px; font-size: 10pt;">수정</button>
																<button type="button" class="btn btn-danger" style="padding: 5px;  font-size: 10pt;">삭제</button>
															</td>
														</c:when>	
														<c:when test="${qna.answerState eq 'Y'}">
															<td>답변 완료</td>
															<td>불가능</td>
														</c:when>
														</c:choose>
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