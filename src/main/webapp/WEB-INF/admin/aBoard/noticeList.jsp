<!-- Projects.html -->
<!-- Tables =>> DataTables에 지금 눌려있는 상태-->
<!-- ***********ADMIN NOTICE LIST PAGE************ -->
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script>
  	// 리스트 몇줄로 출력할건지
	function selChange() {
		var sel = document.getElementById('cntPerPage').value;
		location.href="noticeList.mdo?nowPage=${paging.nowPage}&cntPerPage="+sel;
	}

</script>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 3 | DataTables</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
 
 
 <!-- Font Awesome -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/admin/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/admin/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/admin/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/admin/plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/admin/dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/admin/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/admin/plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/admin/plugins/summernote/summernote-bs4.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

  <!-- DataTables -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/admin/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/admin/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
    <!--   <li class="nav-item d-none d-sm-inline-block">
        <a href="../../index3.html" class="nav-link">Home</a>
      </li> -->
    
    </ul>

    

    <!-- Right navbar links
    <ul class="navbar-nav ml-auto">
      
      
      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
          <i class="fas fa-th-large"></i>
        </a>
      </li>
    </ul> -->
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="#" class="brand-link">
      <img src="${pageContext.request.contextPath }/resources/admin/dist/img/sclogo.png"
           alt="SPEEDCAMPUS LOGO"
           class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">SCAM</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user (optional) 
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="../../dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">Alexander Pierce</a>
        </div>
      </div>-->

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
            <a href="getUserList.mdo" class="nav-link">
              <i class="nav-icon fas fa-table"></i>
              <p>
                	회원관리
<!--                 <i class="right fas fa-angle-left"></i> -->
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="noticeList.mdo" class="nav-link active">
              <i class="nav-icon fas fa-edit"></i>
              <p>
                	공지사항 관리
            <!--     <i class="fas fa-angle-left right"></i> -->
              </p>
            </a>
            <!-- <ul class="nav nav-treeview"> -->
             <!--  <li class="nav-item">
                <a href="../tables/simple.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Simple Tables</p>
                </a>
              </li> -->
              <!--*****TJSXOREHLSAPSB <li class="nav-item">
                <a href="../tables/data.html" class="nav-link active">
                  <i class="far fa-circle nav-icon"></i>
                  <p>DataTables</p>
                </a>
              </li> -->
          <!--   </ul> -->
          </li>
          <li class="nav-item">
            <a href="qnaList.mdo" class="nav-link">
              <i class="nav-icon fas fa-table"></i>
              <p>
                	Q&A 관리
<!--                 <i class="right fas fa-angle-left"></i> -->
              </p>
            </a>
          </li>   
          <li class="nav-item">
            <a href="courseList.mdo" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                	강좌관리
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="paymentList.mdo" class="nav-link">
              <i class="nav-icon fas fa-copy"></i>
              <p>
                	결제내역 관리
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="charts.mdo" class="nav-link">
              <i class="nav-icon fas fa-chart-pie"></i>
              <p>
                	통계
              </p>
            </a>
            <!-- <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="../charts/chartjs.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>ChartJS</p>
                </a>
              </li>
            </ul> -->
          </li>
         
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>



  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Notice</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Notice</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Default box -->
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Notice</h3>

          <div class="card-tools">
            <button type="button" class="btn btn-tool" data-card-widget="collapse" data-toggle="tooltip" title="Collapse">
              <i class="fas fa-minus"></i></button>
            <button type="button" class="btn btn-tool" data-card-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fas fa-times"></i></button>
          </div>
        </div>
        <div class="card-body p-0">
          <table class="table table-striped projects">
              <thead>
                  <tr>
                      <th style="width: 1%">
                          	No
                      </th>
                      <th style="width: 20%">
                          	제목
                      </th>
                      <th style="width: 30%">
                          	작성자
                      </th>
                      <th>
                          	작성일
                      </th>
                      <th style="width: 8%" class="text-center">
                          		조회수
                      </th>
                      <th style="width: 20%">
                      			버튼들
                      </th>
                  </tr>
              </thead>
              <tbody>
					<c:forEach var="notice" items="${noticeList}" varStatus="status">
						<tr>
							<td>${notice.num }</td>
							<td id="title"><a href="noticeRead.mdo?num=${notice.num }">${notice.title}</a></td>
							<td>운영자
							</td>
							<td>${notice.regDate}</td>
							<td>${notice.viewcnt}</td>
							<td>
                          <a class="btn btn-primary btn-sm" href="noticeUpdate.mdo?num=${notice.num }">
                              <i class="fas fa-folder">
                              </i>
                              		수정
                          </a>
                          <a class="btn btn-danger btn-sm" href="noticeDelete.mdo?num=${notice.num }">
                              <i class="fas fa-trash">
                              </i>
                              	삭제
                          </a>
                      </td>
						</tr>
					</c:forEach>
              </tbody>
          </table>
          
          
			<!-- Paging 처리 -->
			<nav class="blog-pagination justify-content-center d-flex">
				<ul class="pagination">
					<li class="page-item">
					<c:if test="${paging.startPage != 1 }">
						<a href="noticeList.mdo?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}" class="page-link" aria-label="Previous"> 
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
									<li class="page-item"><a href="noticeList.mdo?nowPage=${p }&cntPerPage=${paging.cntPerPage}" class="page-link">${p }</a></li>
							</c:when>
						</c:choose>
					</c:forEach>
							<c:if test="${paging.endPage != paging.lastPage}">
						<a href="noticeList.mdo?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}" class="page-link" aria-label="Next"> 
							<span aria-hidden="true">
								<span class="lnr lnr-chevron-right"></span>
							</span>
						</a>
					</c:if>
				</ul>
			</nav>
			
          
        </div>
        <!-- /.card-body -->
      </div>
      <!-- /.card -->
      
			 <a class="btn btn-info btn-sm" href="noticeWrite.mdo">
                  <i class="fas fa-pencil-alt">
                     </i>
	                              글 등록
	         </a>
	       
		<!-- button -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 3.0.3-pre
    </div>
    <strong>Copyright &copy; 2014-2019 <a href="http://adminlte.io">AdminLTE.io</a>.</strong> All rights
    reserved.
  </footer>	

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="${pageContext.request.contextPath }/resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${pageContext.request.contextPath }/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath }/resources/admin/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${pageContext.request.contextPath }/resources/admin/dist/js/demo.js"></script>
</body>
</html>
