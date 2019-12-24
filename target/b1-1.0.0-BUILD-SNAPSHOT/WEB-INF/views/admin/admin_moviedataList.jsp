<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
i.fas.fa-redo-alt:hover {
	transform: rotate(360deg);
	transition: all ease 2s;
}
button {
	outline: none !important;
	border: none;
	background: transparent;
}

button:hover {
	cursor: pointer;
}
</style>
	<script src='https://kit.fontawesome.com/a076d05399.js'></script>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

<title>CGV ADMIN</title>

  <!-- Custom fonts for this template -->
  <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="${pageContext.request.contextPath}/resources/vendor/css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="${pageContext.request.contextPath}/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>
<body id="page-top">

   <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-danger sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="${pageContext.request.contextPath}">
        <div class="sidebar-brand-icon rotate-n-15">
        </div>
        <div class="sidebar-brand-text mx-3">CGV</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item active">
        <a class="nav-link" href="${pageContext.request.contextPath}/admin/adminmain">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>ADMIN PAGE</span></a>
      </li>
      
      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
      MOVIE
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
          <i class="fas fa-fw fa-cog"></i>
          <span>영화 관리</span>
        </a>
        <div id="collapseThree" class="collapse show" aria-labelledby="headingThree" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">MOVIE</h6>
            <a class="collapse-item active" href="${pageContext.request.contextPath}/admin/admin_moviedataList">영화 데이터 관리</a>
          </div>
        </div>
      </li>
      
      

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
       CINEMA
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span>영화관 관리</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">CINEMA MANAGEMENT</h6>
            <a class="collapse-item" href="${pageContext.request.contextPath}/admin/admin_cinemaList">영화관 관리</a>
            <a class="collapse-item" href="${pageContext.request.contextPath}/admin/admin_cinemaInsert">영화관 추가</a>
          </div>
        </div>
      </li>


      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
      SCREENING SCHEDULE
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
          <i class="fas fa-fw fa-cog"></i>
          <span>상영시간표 관리</span>
        </a>
        
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
           <h6 class="collapse-header">SCHEDULE MANAGEMENT</h6>
            <a class="collapse-item" href="${pageContext.request.contextPath}/admin/admin_movieTimeList">상영시간표 관리</a>
            <a class="collapse-item" href="${pageContext.request.contextPath}/admin/admin_movieTimeInsert">상영시간표 추가</a>
          </div>
        </div>
      </li>


      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
      MEMBER
      </div>
      
      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsefour" aria-expanded="true" aria-controls="collapsefour">
         <i class="fas fa-fw fa-cog"></i>
          <span>회원 관리</span>
        </a>
        
        <div id="collapsefour" class="collapse" aria-labelledby="headingfour" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
           <h6 class="collapse-header">MEMBER MANAGEMENT</h6>
            <a class="collapse-item" href="${pageContext.request.contextPath}/admin/admin_memberList">회원정보 관리</a>
          </div>
        </div>
      </li>

      
      
      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
      STORE
      </div>
      
      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsefive" aria-expanded="true" aria-controls="collapsefive">
          <i class="fas fa-fw fa-cog"></i>
          <span>스토어 관리</span>
        </a>
        
        <div id="collapsefive" class="collapse" aria-labelledby="headingfive" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
           <h6 class="collapse-header">STORE MANAGEMENT</h6>
            <a class="collapse-item" href="${pageContext.request.contextPath}/admin/admin_storeList?store_package=1">스토어 메뉴 관리</a>
            <a class="collapse-item" href="${pageContext.request.contextPath}/admin/admin_storeInsert">스토어 메뉴 추가</a>
          </div>
        </div>
      </li>
      

      
      
            <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>


    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>



          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>



            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">${member.id}님 환영합니다.</span>
               <img alt="" src="${pageContext.request.contextPath}/resources/images/home/CGV_BI.png" style="width: 80px;">
                <!-- <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60"> -->
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">영화 데이터 관리</h1>
          <p class="mb-4">영화 목록을 출력하고 최신 데이터를 추가합니다.</p>
         
       <!-- ******************* 데이터 넣는 곳 *************************** -->
     <form action="./admin_moviedataList" method="post" id="frm">
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">영화 상세정보</h6>
            </div>
            <div class="card-body">
              <div class="table-responsive">
              	마지막 업데이트 : <b>${lastRelease}</b><button id="btn" type="button">
						<i class='fas fa-redo-alt' style='font-size: 17px'></i>
					</button>
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>제목</th>
                      <th>장르 </th>
                      <th>국가 </th>
                      <th>등급</th>
                      <th>개봉일</th>
                      <th>제작연도</th>
                    </tr>
                  </thead>
                  <tbody>
                  <c:forEach items="${movieDataVOs}" var="movie"> 
                    <tr>
                      <td>${movie.title}</td>
                      <td>${movie.genre}</td>
                      <td>${movie.nation}</td>
                      <td>${movie.ratingGrade}</td>
                      <td>${movie.releaseDate}</td>
                      <td>${movie.prodYear}</td>
                    </tr>
                  </c:forEach>

                  </tbody>
                </table>
              </div>
            </div>
          </div>
</form>
        </div>
         
         
  


		<!-- ********************** 데이터 끝  *************************** -->

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->


    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>



  <!-- Bootstrap core JavaScript-->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="${pageContext.request.contextPath}/resources/vendor/js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="${pageContext.request.contextPath}/resources/vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="${pageContext.request.contextPath}/resources/vendor/js/demo/datatables-demo.js"></script>
  <script type="text/javascript">
		var today = new Date();
		var dd = today.getDate();
		var mm = today.getMonth() + 1;
		var yyyy = today.getFullYear();
		if (dd < 10) {
			dd = '0' + dd
		}
		if (mm < 10) {
			mm = '0' + mm
		}
		today = yyyy + '-' + mm + '-' + dd;
		$("#btn").click(function() {
			if ('${lastRelease}' != today)
				$("#frm").submit();
			else {
				alert('현재 최신 데이터 입니다.');
			}
		});
	</script>

</body>

</html>
