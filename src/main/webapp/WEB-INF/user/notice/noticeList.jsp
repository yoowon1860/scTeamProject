<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.sc.speedcampus.user.notice.dao.NoticeDAO" %>
<%@page import="com.sc.speedcampus.user.notice.vo.NoticeVO" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>speedCampus</title>
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
      margin: 0 auto;     /* 가로로 중앙에 배치 */
      padding-right: 20%;   /* 테두리와 내용 사이의 패딩 여백 */
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
     
    .hit {
      animation-name: blink;
      animation-duration: 1.5s;
      animation-timing-function: ease;
      animation-iteration-count: infinite;
      /* 위 속성들을 한 줄로 표기하기 */
      /* -webkit-animation: blink 1.5s ease infinite; */
    }
     
    /* 애니메이션 지점 설정하기 */
    /* 익스플로러 10 이상, 최신 모던 브라우저에서 지원 */
    @keyframes blink {
      from {color: white;}
      30% {color: yellow;}
      to {color: red; font-weight: bold;}
      /* 0% {color:white;}
      30% {color: yellow;}
      100% {color:red; font-weight: bold;} */
    }
  </style>
  
  <script>
  	// 리스트 몇줄로 출력할건지
	function selChange() {
		var sel = document.getElementById('cntPerPage').value;
		location.href="noticeList.do?nowPage=${paging.nowPage}&cntPerPage="+sel;
	}
</script>

</head>
<body>

<div id="container">
		<h3>Notice</h3>
		<hr style="border: solid 1.5px #384aeb;">
  			<!-- Start Filter Bar --> 
           <div class="filter-bar d-flex flex-wrap align-items-center"> 
             <div class="sorting"> 
               <select> 
                 <option value="1">Default sorting</option> 
                 <option value="1">Default sorting</option> 
                 <option value="1">Default sorting</option> 
               </select> 
             </div> 
             <div class="sorting mr-auto"> 
               <select id="cntPerPage" name="sel" onchange="selChange()">
			<option value="5"
				<c:if test="${paging.cntPerPage == 5}">selected</c:if>>5줄 보기</option>
			<option value="10"
				<c:if test="${paging.cntPerPage == 10}">selected</c:if>>10줄 보기</option>
			<option value="15"
				<c:if test="${paging.cntPerPage == 15}">selected</c:if>>15줄 보기</option>
			<option value="20"
				<c:if test="${paging.cntPerPage == 20}">selected</c:if>>20줄 보기</option>
			</select>
             </div> 
             <div> 
               <div class="input-group filter-bar-search"> 
                 <input type="text" placeholder="Search"> 
                 <div class="input-group-append"> 
                   <button type="button"><i class="ti-search"></i></button> 
                 </div> 
               </div> 
             </div> 
           </div> 
<!--           End Filter Bar -->

  
    <div align="right">
      <!-- Login 검증 -->
      <!-- jstl의 if문은 else가 없어서 따로 검증해야함. -->
      <c:if test="${id != null}">
        <%-- <%@include file="loginOk.jsp" %> --%>
      </c:if>
      <c:if test="${id == null}">
        <%-- <%@include file="login.jsp" %> --%>
      </c:if>
    </div>
   
    <div id="list">
      <b>게시판 (전체 글: ${paging.total})</b>
    </div>
		<!--<div style="float: right; padding-bottom: 20px;">
			<a href="studyWrite.do" class="button button-postComment button--active"
				style="padding: 5px 5px 5px 5px;"> <img
				src="${pageContext.request.contextPath }/resources/img/write.png"
				width="20px" height="20px"> &nbsp;새글쓰기
			</a>
		</div>-->
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
				
					<c:forEach var="notice" items="${noticeList}" varStatus="status">
						<tr>
							<td>${notice.num }</td>
							<td id="title"><a href="noticeRead.do?num=${notice.num }">${notice.title}</a></td>
							<td>운영자</td>
							<td>${notice.regDate}</td>
							<td>${notice.viewcnt}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

			<!-- Paging 처리 -->
			<nav class="blog-pagination justify-content-center d-flex">
				<ul class="pagination">
					<li class="page-item">
					<c:if test="${paging.startPage != 1 }">
						<a href="noticeList.do?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}" class="page-link" aria-label="Previous"> 
							<span aria-hidden="true"> 
								<span class="lnr lnr-chevron-left"></span>
							</span>
						</a>
						</c:if>
					</li>
					<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
						<c:choose>
							<c:when test="${p == paging.nowPage }">
								<li class="page-item active"><b class="page-link">${p }</b></li>
							</c:when>
							<c:when test="${p != paging.nowPage }">
									<li class="page-item"><a href="noticeList.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}" class="page-link">${p }</a></li>
							</c:when>
						</c:choose>
					</c:forEach>
							<c:if test="${paging.endPage != paging.lastPage}">
						<a href="noticeList.do?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}" class="page-link" aria-label="Next"> 
							<span aria-hidden="true">
								<span class="lnr lnr-chevron-right"></span>
							</span>
						</a>
					</c:if>
				</ul>
			</nav>
			
			


    </div>
  </div>

  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/vendors/jquery/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/vendors/bootstrap/bootstrap.bundle.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/vendors/skrollr.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/vendors/nice-select/jquery.nice-select.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/vendors/jquery.ajaxchimp.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/vendors/mail-script.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/main.js"></script>
</body>
</html>

