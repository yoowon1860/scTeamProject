<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Aroma Shop - Home</title>
  
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

</head>
<body>
<div id="container">

		<h3>Study</h3>
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
               <select> 
                 <option value="1">Show 12</option> 
                 <option value="1">Show 12</option> 
                 <option value="1">Show 12</option> 
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
      <b>게시판 (전체 글: ${totalCount})</b>
    </div>
     

     
    <div>
      <table class="table table-striped table-bordered table-hover">
        <thead>
          <tr>
            <th >번호</th>
            <th >제목</th>
            <th >작성자</th>
            <th >작성일</th>
            <th >조회수</th>
          </tr>
        </thead>
        <tbody>
        	<tr>
	            <td >1</td>
	            <td id="title">안녕하세요 스피드캠퍼스입니다</td>
	            <td >admin</td>
	            <td >2020-03-21</td>
	            <td >3</td>
           	</tr>
           	
          <c:forEach var="article" items="${articles}" varStatus="status">
            <tr>
              <td>${article.articleNumber}</td>
              <td id="title">
                <c:if test="${article.depth > 0}">
                  &nbsp;&nbsp;
                </c:if>
                <a href="/bbs/content.bbs?articleNumber=${article.articleNumber}&pageNum=${pageNum}">${article.title}</a>
                <c:if test="${article.hit >= 20}">
                  <span class="hit">hit!</span>
                </c:if>
              </td>
              <td>${article.id}</td>
              <td>${article.writeDate}</td>
              <td>${article.hit}</td>
            <tr>
          </c:forEach>
        </tbody>
      </table>
       
      <!-- Paging 처리 -->
      <div id="paging">
        ${pageCode}
      </div>
    </div>
  </div>

</body>
</html>

