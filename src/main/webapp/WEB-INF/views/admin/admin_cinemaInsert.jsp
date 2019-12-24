<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>CGV ADMIN</title>
<c:import url="../layout/jquery.jsp" />

<link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/movie/movieSelect_admin.css" rel="stylesheet">

<link href="${pageContext.request.contextPath}/resources/css/design/set2.css" rel="stylesheet" >
<link href="${pageContext.request.contextPath}/resources/css/design/demo.css" rel="stylesheet" >

<link href="${pageContext.request.contextPath}/resources/css/select/selectList.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/select/style.css">
  
	<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.css">
	<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css"> 
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.min.js" ></script>

	<link href="${pageContext.request.contextPath}/resources/css/admin/admin_cinemaInsert.css" rel="stylesheet">

<script type="text/javascript" ></script>
  <!-- Custom fonts for this template-->
  <link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="${pageContext.request.contextPath}/resources/vendor/css/sb-admin-2.min.css" rel="stylesheet">


<style>
	body #cdawrap {
		--cda-top: 15px;
		--cda-background: transparent;
		--cda-text-color: #333;
		--cda-border-color: rgba(0,0,0,0.4);
		--cda-sp-color: #999;
	}
</style>


</head>

<body id="page-top">

<!-- Page Wrapper -->
  <div id="wrapper">

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
        <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span>영화관 관리</span>
        </a>
        <div id="collapseTwo" class="collapse show" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">CINEMA MANAGEMENT</h6>
            <a class="collapse-item" href="${pageContext.request.contextPath}/admin/admin_cinemaList">영화관 관리</a>
            <a class="collapse-item active" href="${pageContext.request.contextPath}/admin/admin_cinemaInsert">영화관 추가</a>
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
        <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
          <i class="fas fa-fw fa-cog"></i>
          <span>상영시간표 관리</span>
        </a>
        
        <div id="collapsePages" class="collapse  collapsed" aria-labelledby="headingPages" data-parent="#accordionSidebar">
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
          <h1 class="h3 mb-4 text-gray-800">영화관 추가</h1>
          <p class="mb-4">새로 개관한 영화관을 추가합니다.</p>
        
  
 
<!--  -->
<div id="sec">


<!--  -->
<div id="sec1" style="float: left; ">
<div class="wrapper typo">영화관 지역
  <div class="list">
  <span class="placeholder">select</span>
    <ul class="list__ul">
      <li><a href="">서울</a></li>
      <li><a href="">경기</a></li>
      <li><a href="">인천</a></li>
      <li><a href="">강원</a></li>
      <li><a href="">대전/충청</a></li>
      <li><a href="">대구</a></li>
      <li><a href="">부산/울산</a></li>
      <li><a href="">경상</a></li>
      <li><a href="">광주/전라/제주</a></li>
    </ul>
  </div>
</div>
</div>


<div id="d2" style="float: left; padding-top:14px; width: 200px; ">
<div>
  <label>
    <input type="text" required="required" id="input1"/>
    <span>새로 개관할 극장명</span>
  </label>
 </div> 
  
  <div>
    <label>
    <input type="number" required="required"  id="input2" value="15441122"/>
    <span>극장 전화번호</span>
  </label>
  </div>
  
  <div>
      <label>
    <input type="text" required="required" id="sample5_address" value="주소를 검색하세요">
    <span>극장 주소</span>
  </label>
  </div>
  
<div > 
<div style="height: 20px;">
<div style="float: left;"><input type="button" class="btn btn-primary btn-icon-split" style="padding: 3px 9px;" onclick="sample5_execDaumPostcode()" value="주소 검색"></div>

<div id="fbtn" style="float: left;">
<form action="./adminCinemaInsert" id="frm" method="post">
<input type="button" class="btn btn-success btn-icon-split" id="btn" value="추가" style="padding: 3px 9px;"><input type="hidden" id="t1" readonly="readonly" name="cinema_loc"><br><input type="hidden" id="t2" readonly="readonly" name="cinema_name"><br><input type="hidden" id="t3" readonly="readonly" name="cinema_tel" value="15441122"><br><input type="hidden" id="t4" readonly="readonly" name="cinema_add"><br><input type="hidden" id="t5" readonly="readonly" name="cinema_image"><br>
</form>

</div>




<div id="map" ></div>
</div>
</div> <!-- d2 -->


<!--   
  <label>
    <input data-provide="datepicker" required="required">
    <input type="text" class="dateselect" required="required"/>
    <span>Date1</span>
  </label>
  
  <label>
    <input type="text" class="dateselect2" required="required"/>
    <span>Date2</span>
  </label> -->

</div>









</div><!-- sec -->
     
          
          




<!--  -->
<!-- <div class="wrapper">

<form action="./adminCinemaInsert" id="frm" method="post">

  <label>
    <input type="text" required="required" name="cinema_loc"/>
    <span>Name</span>
  </label>
  
  <label>
    <input data-provide="datepicker" required="required">
    <input type="text" class="dateselect" required="required"/>
    <span>Date1</span>
  </label>
  
  <label>
    <input type="text" class="dateselect2" required="required"/>
    <span>Date2</span>
  </label>
  
  <button>click</button>
  
  </form>
  
  
  
</div> -->


<!--  -->
          

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




<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c385975a519fabb671122b6c7f825767&libraries=services"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>
<script type="text/javascript">

//https://github.com/uxsolutions/bootstrap-datepicker

/* $('.dateselect').datepicker({
    format: 'mm/dd/yyyy',
    startDate: '-3d'
});
 */
// $('.dateselect2').datepicker({
//     format: 'mm/dd/yyyy',
//     autoclose:true,
//     todayHighlidht: true,
// }).on("hide", function(){
//   if ($)
// }

	function openNav() {
  	  document.getElementById("mySidenav").style.width = "250px";
  	}
  	function closeNav() {
  	  document.getElementById("mySidenav").style.width = "0";
  	}
  
 	var loc = "";
 	var cname = ""; //영화관명
 	var cadd = ""; //영화관 주소
 	var ctel = ""; //영화관 전화번호
  	
  	
 	console.clear();
  var el = {};
  $('.placeholder').on('click', function (ev) {
    $('.placeholder').css('opacity', '0');
    $('.list__ul').toggle();
  });
   $('.list__ul a').on('click', function (ev) {
     ev.preventDefault();
     var index = $(this).parent().index();
     $('.placeholder').text( $(this).text() ).css('opacity', '1');
     console.log($('.list__ul').find('a').eq(index).html());
     
     loc = $('.list__ul').find('a').eq(index).html();
     $('#t1').val(loc);
     $('#t2').val("");
     $('#input1').val("");
     $('#t3').val("15441122");
     $('#input2').val("15441122");
     $('#t4').val("");
     $('#sample5_address').val("주소를 검색하세요");
     $('#t5').val("");
     $('#input4').val("");
     
     $('.list__ul').find('li').eq(index).prependTo('.list__ul');
     $('.list__ul').toggle();   
     
   });
  $('select').on('change', function (e) {
    // Set text on placeholder hidden element
    $('.placeholder').text(this.value);
    // Animate select width as placeholder
    $(this).animate({width: $('.placeholder').width() + 'px' });
    
  });
  
  /* 주소 */
var mapContainer = document.getElementById('map'), // 지도를 표시할 div
      mapOption = {
          center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
          level: 5 // 지도의 확대 레벨
      };
  //지도를 미리 생성
  var map = new daum.maps.Map(mapContainer, mapOption);
  //주소-좌표 변환 객체를 생성
  var geocoder = new daum.maps.services.Geocoder();
  //마커를 미리 생성
  var marker = new daum.maps.Marker({
      position: new daum.maps.LatLng(37.537187, 127.005476),
      map: map
  });
  function sample5_execDaumPostcode() {
      new daum.Postcode({
          oncomplete: function(data) {
              var addr = data.address; // 최종 주소 변수
				console.log(addr);
				cadd = addr;
				$('#t4').val(cadd);
              
				
              // 주소 정보를 해당 필드에 넣는다.
              document.getElementById("sample5_address").value = addr;
              // 주소로 상세 정보를 검색
              geocoder.addressSearch(data.address, function(results, status) {
                  // 정상적으로 검색이 완료됐으면
                  if (status === daum.maps.services.Status.OK) {
                      var result = results[0]; //첫번째 결과의 값을 활용
                      // 해당 주소에 대한 좌표를 받아서
                      var coords = new daum.maps.LatLng(result.y, result.x);
                      // 지도를 보여준다.
                      mapContainer.style.display = "block";
                      map.relayout();
                      // 지도 중심을 변경한다.
                      map.setCenter(coords);
                      // 마커를 결과값으로 받은 위치로 옮긴다.
                      marker.setPosition(coords)
                  }
              });
          }
      }).open();
  }
  /* 주소끝  */
  
      $('#input1').blur(function() {
		console.log($(this).val());
		cname = $(this).val().trim();
		
		$('#t2').val(cname); 		
		 $('#t3').val("15441122");
	       $('#input2').val("15441122");
	       $('#t4').val("");
	       $('#sample5_address').val("주소를 검색하세요");
	       $('#t5').val("");
	       $('#input4').val("");
      });
  
      $('#input2').blur(function() {
   		console.log($(this).val());
   		ctel = $(this).val().trim();
   		$('#t3').val(ctel);
   		$('#t4').val("");
   		$('#sample5_address').val("주소를 검색하세요");
          $('#t5').val("");
          $('#input4').val("");
          });
      
  
	   $('#btn').on('click', function() {
		   if($('#t1').val() != "" && $('#t2').val() != "" &&  $('#t3').val() != "" && $('#t4').val() != ""){
		   $('#frm').submit();			   
		   } else {
			alert("정확한 값을 입력하세요.")
		   }
		   
	  	}); 
  

</script>




</body>

</html>
