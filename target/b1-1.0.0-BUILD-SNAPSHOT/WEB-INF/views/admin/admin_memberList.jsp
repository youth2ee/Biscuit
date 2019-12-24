<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
table input[type="text"]{
	border : none;
}
input[type="button"]{
	width : 60px
}
</style>
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
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
          <i class="fas fa-fw fa-cog"></i>
          <span>영화 관리</span>
        </a>
        <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">MOVIE</h6>
            <a class="collapse-item" href="${pageContext.request.contextPath}/admin/admin_moviedataList">영화 데이터 관리</a>
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
        <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapsefour" aria-expanded="true" aria-controls="collapsefour">
         <i class="fas fa-fw fa-cog"></i>
          <span>회원 관리</span>
        </a>
        
        <div id="collapsefour" class="collapse show" aria-labelledby="headingfour" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
           <h6 class="collapse-header">MEMBER MANAGEMENT</h6>
            <a class="collapse-item active" href="${pageContext.request.contextPath}/admin/admin_memberList">회원정보 관리</a>
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
          <h1 class="h3 mb-2 text-gray-800">회원 관리</h1>
  			<p class="mb-4">회원의 데이터를 수정 및 삭제 또는 새 회원을 추가합니다.</p>
 		<!-- ******************* 데이터 넣는 곳 *************************** -->
        
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">회원 상세정보</h6>
            
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                     	<th>아이디</th>
						<th>비밀번호</th>
						<th>이름</th>
						<th>이메일</th>
						<th>우편번호</th>
						<th>주소</th>
						<th>연락처</th>
						<th>생일</th>
						<th>성별</th>
						<th>등급</th>
						<th>포인트</th>
						<th>가입일</th>
						<th>수정</th>
						<th>삭제</th>
                    </tr>
                  </thead>
                  <tbody id = "addMember">
               <c:forEach items="${members}" var="member" varStatus="status">
                   <c:set var="i" value="1"></c:set>
							<tr>
								<td class="lalign"><input type="text" value="${member.id}"
									class="id" id="id${status.index}" readonly="readonly"></td>
								<td><input type="text" value="${member.pw}" class="pw"
									id="pw${status.index}"></td>
								<td><input type="text" class="name" value="${member.name}"
									id="name${status.index}"></td>
								<td><input type="text" class="email"
									value="${member.email}" id="email${status.index}"></td>
								<td><input type="text" class="post" value="${member.post}"
									id="post${status.index}"></td>
								<td><input type="text" class="address"
									value="${member.address}" id="address${status.index}"></td>
								<td><input type="text" class="phone"
									value="${member.phone}" id="phone${status.index}"></td>
								<td><input type="text" class="birth"
									value="${member.birth}" id="birth${status.index}"
									readonly="readonly"></td>
								<td><input type="text" class="gender"
									value="${member.gender}" id="gender${status.index}"></td>
								<td><input type="text" class="grade"
									value="${member.grade}" id="grade${status.index}"></td>
								<td><input type="text" class="grade_point"
									value="${member.grade_point}" id="grade_point${status.index}"></td>
								<td><input type="text" class="signIn_date"
									value="${member.signIn_date}" id="signIn_date${status.index}"
									readonly="readonly"></td>
								<td><input type="button" id="btn${status.index}" value="수정"
									class="${status.index}"></td>
								<td><input type="button" id="delete${status.index}" 
									value="탈퇴 " class="${status.index}"></td>
							</tr>
						</c:forEach>
                  </tbody>
                </table>
                 <form method="get" action="./admin_memberList" id="frm">
                <input type="hidden" name="id" id="id"> <input type="hidden"
					name="pw" id="pw"> <input type="hidden" name="name"
					id="name"> <input type="hidden" name="email" id="email">
				<input type="hidden" name="post" id="post"> <input
					type="hidden" name="address" id="address"> <input
					type="hidden" name="phone" id="phone"> <input type="hidden"
					name="birth" id="birth"> <input type="hidden" name="gender"
					id="gender"> <input type="hidden" name="grade" id="grade">
				<input type="hidden" name="grade_point" id="grade_point"> <input
					type="hidden" name="signIn_date" id="signIn_date"> 
				<input type="button" id="add" class="btn btn-primary btn-icon-split" value="추가">
				</form>
              </div>
            </div>
          </div>
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
		$("#add").click(function() { // 회원추가 (1)
							$("#add").hide();
							var rowItem = "<tr>";
							rowItem += '<td><input type="text" id="id${fn:length("${member}")}" class="id"  placeholder="아이디"></td>';
							rowItem += '<td><input type="text" id="pw${fn:length("${member}")}" class="pw"  placeholder="비밀번호"></td>';
							rowItem += '<td><input type="text" id="name${fn:length("${member}")}" class="name" placeholder="이름"></td>';
							rowItem += '<td><input type="text" id="email${fn:length("${member}")}" class="email" placeholder="이메일"></td>';
							rowItem += '<td><input type="text" id="post${fn:length("${member}")}" class="post" placeholder="우편번호"></td>';
							rowItem += '<td><input type="text" id="address${fn:length("${member}")}" class="address" placeholder="주소"></td>';
							rowItem += '<td><input type="text" id="phone${fn:length("${member}")}" class="phone" placeholder="전화번호"></td>';
							rowItem += '<td><input type="text" id="birth${fn:length("${member}")}" class="birth" placeholder="생일"></td>';
							rowItem += '<td><input type="text" id="gender${fn:length("${member}")}" class="gender" placeholder="성별"></td>';
							rowItem += '<td><input type="text" id="grade${fn:length("${member}")}" value="5" class="grade"></td>';
							rowItem += '<td><input type="text" id="grade_point${fn:length("${member}")}" value="0" class="grade_point"></td>';
							rowItem += '<td><input type="text" id="signIn_date${fn:length("${member}")}" value="Default" class="signIn_date" readonly="readonly"></td>';
							rowItem += '<td colspan="2"><input type="button" id="addMemberBtn" value="추가" class="${fn:length("${member}")}" style="width: 100%;"></td>';
							$('#addMember').before(rowItem);
						});

		$(document).on(
				"click",
				"#addMemberBtn",
				function() { // 회원 추가 (2)
					for (var i = 0; i < '${fn:length("${members}")}' +1 ; i++) {
						var attr = $(this).attr('class');
						$("#id").val($("#id" + attr).val());
						$("#pw").val($("#pw" + attr).val());
						$("#name").val($("#name" + attr).val());
						$("#email").val($("#email" + attr).val());
						$("#post").val($("#post" + attr).val());
						$("#address").val($("#address" + attr).val());
						$("#phone").val($("#phone" + attr).val());
						$("#birth").val($("#birth" + attr).val());
						$("#gender").val($("#gender" + attr).val());
						$("#grade").val($("#grade" + attr).val());
						$("#grade_point").val($("#grade_point" + attr).val());
						$("#signIn_date").val($("#signIn_date" + attr).val());
					}

					if ($("#id").val() != "" && $("#pw").val() != ""
							&& $("#name").val() != ""
							&& $("#email").val() != ""
							&& $("#phone").val() != ""
							&& $("#birth").val() != ""
							&& $("#gender").val() != "") {
						$("#frm").attr("action", "./admin_memberManagementAdd");
						$("#frm").attr("method", "post");
						$("#frm").submit();
					} else {
						alert("항목을 모두 입력하세요");
					}
				});
		for (var i = 0; i < '${fn:length("${members}")}' +1 ; i++) { // 회원정보 수정

			$("#btn" + i).click(function() {
				alert('test');
				var attr = $(this).attr('class');
				$("#id").val($("#id" + attr).val());
				$("#pw").val($("#pw" + attr).val());
				$("#name").val($("#name" + attr).val());
				$("#email").val($("#email" + attr).val());
				$("#post").val($("#post" + attr).val());
				$("#address").val($("#address" + attr).val());
				$("#phone").val($("#phone" + attr).val());
				$("#birth").val($("#birth" + attr).val());
				$("#gender").val($("#gender" + attr).val());
				$("#grade").val($("#grade" + attr).val());
				$("#grade_point").val($("#grade_point" + attr).val());
				$("#signIn_date").val($("#signIn_date" + attr).val());
				$("#frm").attr("action", "./admin_memberManagementUpdate");
				$("#frm").attr("method", "post");
				$("#frm").submit();
			});

			$("#delete" + i).click(
					function() { // 회원 탈퇴 처리
						$("#id").val($("#id" + $(this).attr('class')).val());
						if (confirm($("#id").val() + " 회원을 탈퇴시킵니다.")) {
							location.href = "./admin_memberManagementDelete?id="
									+ $("#id").val();
						}
					});
			$("input[type='text']").focus(function() {
				$(this).addClass('insert');
			});
			$("input[type='text']").blur(function() {
				$(this).removeClass('insert');
			});

		}
	</script>
</body>

</html>
