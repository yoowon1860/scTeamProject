<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<script>
function sub(){
	document.replyForm.action= '${path}/speedcampus/insertA.mdo';
	document.replyForm.submit();
	
}

function mail(){
	document.replyForm.action= '${path}/speedcampus/answerMail.mdo';
	document.replyForm.submit();
}
function submit(){
	console.log("hi");
	   var replyConfirm = confirm('등록하시겠습니까?');
	   if (replyConfirm) {
		   
		   document.replyForm.action= '${path}/speedcampus/insertA.mdo';
		   document.replyForm.submit();
		   
		   
	     
	      alert('등록되었습니다.');
	      
	   }
	   else {
	      alert('등록이 취소되었습니다.');
	      location.href="${path}/speedcampus/answerWrite.mdo?qnum="+q;
	   }
}

</script>

<!-- QNA LIST ADMIN PAGE SIDE BAR -->


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
<style>
#wrap {
	position: absolute;
	top: 5%;
	left: 40%;
	padding: 50px 20px;
}
</style>

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
            <a href="noticeList.mdo" class="nav-link">
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
            <a href="qnaList.mdo" class="nav-link active">
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



		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>Q&A 답변작성</h1>
						</div>
					</div>
				</div>
			</section>
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-md-6">
					<div class="card card-warning">
							<div class="card-header">
								<h3 class="card-title">문의사항</h3>
							</div>
							<!-- /.card-header -->
							<div class="card-body">
								<form role="form" >
									<div class="form-group">
										<div class="form-group">
										
											<label>문의 유형</label> 
											<br>
											<c:choose>
												<c:when test="${q.category eq 'courseQ'}">강의 관련</c:when>	
												<c:when test="${q.category eq 'paymentQ'}">결제 관련</c:when>
												<c:when test="${q.category eq 'memberQ'}">회원 관련</c:when>
												<c:when test="${q.category eq 'otherQ'}">기타 문의</c:when>
											</c:choose>
											<hr>
										</div>
									</div>
									<div class="form-group">
										<div class="form-group">
											<label>작성자 이메일</label> <input type="text" class="form-control"
												id="exampleInputEmail" value="${q.writer }" disabled="disabled">
										</div>
									</div>
									<div class="form-group">
										<div class="form-group">
											<label>문의 제목</label> <input type="text" class="form-control"
												id="exampleInputEmail" value="${q.title }" disabled="disabled">
										</div>
									</div>
									<div class="form-group">
										<div class="form-group">
											<label>문의 내용</label>
											<textarea class="form-control" rows="3"
												disabled="disabled">${q.content }</textarea>
										</div>
									</div>
								</form>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
						

					</div>
					<div class="col-md-6">
						<div class="card card-primary">
							<div class="card-header">
								<h3 class="card-title">답변하기</h3>
							</div>
							<!-- /.card-header -->
							<!-- form start -->
							<form name="replyForm" method="post" action="answerMail.mdo">
								 <input type="hidden" name="userEmail" value="${q.writer }" >
								 <input type="hidden" name="qnum" value="${q.qnum }" >
								<div class="card-body">
								
									<div class="row">
										<div class="col-sm-6">
											<!-- select -->
											<div class="form-group">
												<label>담당자</label> 
												<select name="writer" class="form-control">
													<option value="유원상">유원상</option>
													<option value="정승은">정승은</option>
													<option value="이지성">이지성</option>
												</select>
											</div>
										</div>
					
									</div>
									<div class="form-group">
										<div class="form-group">
											<label>답변 제목</label> <input type="text" class="form-control"
												name="title" placeholder="제목을 입력해주세요">
										</div>
									</div>
									<div class="form-group">
										<div class="form-group">
											<label>답변 내용</label>
											<textarea name="content" class="form-control" rows="3"
												placeholder="내용을 입력해주세요"></textarea>
										</div>
									</div>
								
								</div>
								<!-- /.card-body -->

								<div class="card-footer" style="text-align: right;">
									<button onclick="location.href='qnaList.mdo'" type="button" class="btn btn-danger" >취소</button>
									<input type="submit" class="btn btn-primary" onclick="sub();" value="등록">
								</div>
								
							</form>
						</div>
						<!-- general form elements disabled -->
					</div>
					<br />
				</div>
			</div>
		</div>
		<!-- /.content-wrapper -->
		
		
		<footer class="main-footer">
			<div class="float-right d-none d-sm-block">
				<b>Version</b> 3.0.3-pre
			</div>
			<strong>Copyright &copy; 2014-2019 <a
				href="http://adminlte.io">AdminLTE.io</a>.
			</strong> All rights reserved.
		</footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<!-- jQuery -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- DataTables -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/plugins/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/admin/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/admin/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/admin/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
	<!-- AdminLTE App -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script
		src="${pageContext.request.contextPath }/resources/admin/dist/js/demo.js"></script>
	<!-- page script -->
	<script>
  $(function () {
    $("#example1").DataTable({
      "responsive": true,
      "autoWidth": false,
    });
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false,
      "responsive": true,
    });
  });
</script>
</body>
</html>
