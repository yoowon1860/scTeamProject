<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#container {
	width: 70%;
	margin: 0 auto; /* 가로로 중앙에 배치 */
	padding-top: 10%; /* 테두리와 내용 사이의 패딩 여백 */
}
</style>
</head>
<body>

	<!--================ Start Header Menu Area =================-->


	<!--================ End Header Menu Area =================-->

	<!-- ================ start banner area ================= -->
<h3>${vd.name } 리뷰</h3>
   <hr style="border: solid 1.5px #384aeb;">
   
   
	
		
			<!-- if(review.product != null) -->
			<div class="tab-pane fade show active" id="container" role="tabpanel"
				aria-labelledby="review-tab">
				<div class="row">
					<div class="col-lg-12">
						<div class="row total_rate">
							<div class="col-6">
								<div class="box_total">
									<h5>Overall 4.0(리뷰 평점)</h5>
									<!-- db에서 리뷰 데이터 가져와서 별점 평균 구하기 -->
									<h6>03 Reviews(리뷰 갯수 표시)</h6>
									<!-- 리뷰 데이터 갯수 구하기 -->
								</div>
							</div>
							<table width="35%" border="1">
								<tr>
									<td><a
											href="#">5 Star <i
												class="fa fa-star"></i><i class="fa fa-star"></i><i
												class="fa fa-star"></i><i class="fa fa-star"></i><i
												class="fa fa-star"></i>
										</a>
										</td>
									<td>01명</td>
								</tr>
								<tr>
									<td><a
											href="#">4 Star <i
												class="fa fa-star"></i><i class="fa fa-star"></i><i
												class="fa fa-star"></i><i class="fa fa-star"></i>
										</a>
										</td>
									<td>01명</td>
								</tr>
								<tr>
									<td><a
											href="#">3 Star <i
												class="fa fa-star"></i><i class="fa fa-star"></i><i
												class="fa fa-star"></i>
										</a>
										</td>
									<td>01명</td>
								</tr>
								<tr>
									<td><a
											href="#">2 Star <i
												class="fa fa-star"></i><i class="fa fa-star"></i>
										</a>
										</td>
									<td>01명</td>
								</tr>
								<tr>
									<td><a
											href="#">1 Star <i
												class="fa fa-star"></i>
										</a>
										</td>
									<td>01명</td>
								</tr>
								
							</table>


						</div>
					</div>
				</div>
<br/>
				
					<table class="container" id="container" border="1px">
					<tbody>
							<tr>
								<td>작성자 : ${review.writer}</td>
								<td style="text-align: right">작성일 : ${review.regDate}</td>
							</tr>
							<tr>
								<td colspan="2">강좌명: ${review.product}</td>
							</tr>
							<tr>
								<td colspan="2">별점 : <img
									src="${pageContext.request.contextPath }/resources/img/${review.score}.png" />
									${review.starscore}점
								</td>
							</tr>
							<tr>
								<td colspan="2">후기 : ${review.content}</td>
							</tr>
							<tr></tr>
						</tbody>
						
					</table>
					<br/>
					
</div>


	<!--================ Start footer Area  =================-->

	<!--================ End footer Area  =================-->
</body>
</html>