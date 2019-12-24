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
        <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
          <i class="fas fa-fw fa-cog"></i>
          <span>상영시간표 관리</span>
        </a>
        
        <div id="collapsePages" class="collapse show" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
           <h6 class="collapse-header">SCHEDULE MANAGEMENT</h6>
            <a class="collapse-item" href="${pageContext.request.contextPath}/admin/admin_movieTimeList">상영시간표 관리</a>
            <a class="collapse-item active" href="${pageContext.request.contextPath}/admin/admin_movieTimeInsert">상영시간표 추가</a>
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
           <h1 class="h3 mb-3 text-gray-800">상영시간표 추가</h1>
            <p class="mb-4">영화관의 상영시간표를 추가합니다.</p>
  
 
<!--  -->
<div class="container">
<div id="sec4">
<!-- 상영일 -->
<div id="sec41" style="padding-right: 30px;">
<!-- <span class="input input--chisato">
		<input class="input__field input__field--chisato" type="date" id="input-14" />
		<label class="input__label input__label--chisato" for="input-14" style="padding-top: 5px;">
			<span class="input__label-content input__label-content--chisato" data-content="상영일">상영일</span>
		</label>
</span> -->
<div>
  <label>
    <input type="date" required="required" id="input-14"/>
    <span>상영일</span>
  </label>
 </div> 
</div>

<!-- 상영할 영화명 -->
<div id="sec42">
<!-- <span class="input input--chisato">
		<input class="input__field input__field--chisato input-13" type="text" id="myInput" placeholder="Search.." />
		<label class="input__label input__label--chisato" for="myInput">
			<span class="input__label-content input__label-content--chisato2" data-content="상영할 영화명">상영할 영화명</span>
		</label>
</span> -->
<div>
  <label>
    <input type="text" required="required" id="myInput" class="input-13" />
    <span>상영할 영화명</span>
  </label>
 </div> 
</div>	




</div>	


<div id="sec5">
<!--  -->
<div id="sec1">
<div class="wrapper typo">영화관 지역
  <div class="list">
  <span class="placeholder">select</span>
    <ul class="list__ul">
      <li><a class="s1" href="">서울</a></li>
      <li><a class="s1" href="">경기</a></li>
      <li><a class="s1" href="">인천</a></li>
      <li><a class="s1" href="">강원</a></li>
      <li><a class="s1" href="">대전/충청</a></li>
      <li><a class="s1" href="">대구</a></li>
      <li><a class="s1" href="">부산/울산</a></li>
      <li><a class="s1" href="">경상</a></li>
      <li><a class="s1" href="">광주/전라/제주</a></li>
    </ul>
  </div>
</div>
</div>

<!--  -->
<div id="sec2">
<div class="wrapper2 typo">영화관명
<ul id="aa"></ul>
</div>
</div>




<!--  -->
<div id="sec3">
<div class="wrapper typo">상영관명
  <div class="list">
  <span class="placeholder3">select</span>
    <ul class="list__ul3">
      <li><a class="s3" href="">A</a></li>
      <li><a class="s3" href="">B</a></li>
      <li><a class="s3" href="">C</a></li>
    </ul>
  </div>
</div>
</div>


<div id="sec6" >
<form action="./adminTimeInsert" id="frm" method="post">
<input type="button" class="btn btn-primary btn-icon-split" style="padding: 3px 9px;" id="btn" value="추가">
<input type="hidden" id="t1" readonly="readonly" name="timeInfo_date">
<input type="hidden" id="t2" readonly="readonly" name="movieInfo_name">
<input type="hidden" id="t3" readonly="readonly">
<input type="hidden" id="t4" readonly="readonly" name="cinema_name">
<input type="hidden" id="t5" readonly="readonly" name="theater_name">
<input type="hidden" id="t6" name="cinema_num">
</form>
</div>

<!-- 영화검색 -->
<div id="movieSearch">
<table id="myTable" class="tab">
  <c:forEach items="${movieList}" var="mlist"> 
  <tr><td class="mltd">${mlist.movieInfo_title}</td></tr>
  </c:forEach>
</table>
 </div>
<!-- 영화검색끝 -->


<!--  -->
</div>
</div>

</div>

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


<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>
<script type="text/javascript">



  		function openNav() {
    	  document.getElementById("mySidenav").style.width = "250px";
    	}
    	function closeNav() {
    	  document.getElementById("mySidenav").style.width = "0";
    	}
    
    	var loc = "";
    	var cinema = "";
    	var theater = "";
    	var mname = "";
    	var cnum = "";
    console.clear();
    
    /* 1 상영일 불러오기 */
    $('#input-14').blur(function() {
 		console.log($(this).val());
 		mdate = $(this).val().trim();
 		$('#t1').val(mdate);
 		$('#t2').val("");
 		$('.input-13').val("");
 		$('#t3').val("");
 		$('.placeholder').text("select");
 		$('#t4').val("");
 		$('#aa').empty();
 	    $('#t5').val("");
 	   $('.placeholder3').text("select");
 		
    });
    
    /* 2 영화명 불러오기 */
    $('.input-13').blur(function() {
 		console.log($(this).val());
 		mname = $(this).val().trim();
 		$('#t2').val(mname);
 		$('#t3').val("");
 		$('.placeholder').text("select");
 		$('#t4').val("");
 		$('#aa').empty();
 	    $('#t5').val("");
 	   $('.placeholder3').text("select");
    });
    
    
    /* 영화검색 */
$(document).ready(function(){
	
  $("#myInput").on("keyup", function() {
	  
    var value = $(this).val().toLowerCase();
    
    if(value == ""){
    	 $(".tab").css("display", "none");
    }else{
    	$(".tab").css("display", "inline");
    	$("#myTable tr").filter(function() {
        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
    }
    
  });

});
    
    
    /* 영화검색끝 */
    $(".tab").css("display", "none");
    
    var moviename = "";
    
    $('.mltd').on("click", function() {
    	
    	if($('#t2').val(moviename) != ""){
    		$('#t2').val("");
    	}
    	
    	
    	moviename = $(this).text();
    	$('#t2').val(moviename);
    	$('.input-13').val(moviename);
/*     	alert(moviename); */
    	$(".tab").css("display", "none");
	});
    
    
    
    
    
    /*  */
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
       $('#t3').val(loc);
       $('#t4').val("");
       $('#aa').empty();
       $('#t5').val("");
       $('.placeholder3').text("select");
       
  /*      $('.list__ul').find('li').eq(index).prependTo('.list__ul'); */
       $('.list__ul').toggle();   
       
       
       $.ajax({
			data : {
				cinema_loc:loc
			},
			type : "GET",
			url : "./adminLocSelect",
			success : function(data) {
				data = data.trim();
				
 				$('#aa').html(data);
				$('#aa li').on('click', function() {
					$(this).addClass('act').siblings().removeClass('act');
					cinema = $(this).find('.cname').text();
					console.log(cinema);
					
					$('#t4').val(cinema); 
					
					cnum = $(this).find('.cnum').text();
					$('#t6').val(cnum);
					
					$('#t5').val("");
					$('.placeholder3').text("select");
					
				});
			}
		});
     });
     
/* 
		$('select').on('change', function (e) {
		      $('.placeholder').text(this.value);
		      $(this).animate({width: $('.placeholder').width() + 'px' });
		    });  */
     
		
     
	    /* 3 */
	    $('.placeholder3').on('click', function (ev) {
	     $('.placeholder3').css('opacity', '0');
	     $('.list__ul3').toggle();
	    });
	    $('.list__ul3 a').on('click', function (ev) {
	      ev.preventDefault();
	      var index = $(this).parent().index();
	      
	      $('.placeholder3').text( $(this).text() ).css('opacity', '1');
	      console.log($('.list__ul3').find('a').eq(index).html());
	      
	      theater = $('.list__ul3').find('a').eq(index).html();
	      $('#t5').val(theater);
	      
	     /*  $('.list__ul3').find('li').eq(index).prependTo('.list__ul3'); */
	      $('.list__ul3').toggle();   
	    });
	   $('select').on('change', function (e) {
	     $('.placeholder3').text(this.value);
	     $(this).animate({width: $('.placeholder3').width() + 'px' });
	   });
	
    
	   $('#btn').on('click', function() {
		   
		   if($('#t1').val() != "" && $('#t2').val() != "" &&  $('#t3').val() != "" && $('#t4').val() != "" && $('#t5').val() != ""){
		   $('#frm').submit();			   
		   } else {
			alert("정확한 값을 입력하세요.")
		   }
		   
	  	}); 
	  
	 
    </script>





</body>

</html>
