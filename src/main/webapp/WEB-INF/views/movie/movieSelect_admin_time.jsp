<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../layout/jquery.jsp" />

<link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/layout/header.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/movie/movieSelect_admin.css" rel="stylesheet">

<link href="${pageContext.request.contextPath}/resources/css/design/set2.css" rel="stylesheet" >
<link href="${pageContext.request.contextPath}/resources/css/design/demo.css" rel="stylesheet" >

<link href="${pageContext.request.contextPath}/resources/css/select/selectList.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,900,700,600,200" rel="stylesheet">
  
<link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,900,700,600,200'>
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.6.2/css/font-awesome.min.css'>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/select/style.css">

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
<body>
<div id="total">
<header>
<c:import url="../layout/header.jsp"/>
</header>

<section>
<div id="sec">


<!--  -->
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="./movieSelect_admin_cinema">Cinema 추가</a>
  <a href="./movieSelect_admin_time">movieInfo 추가</a>
  <a href="#">Clients</a>
  <a href="#">Contact</a>
</div>

<div id="menubar">
<!-- <h2>Animated Sidenav Example</h2>
<p>Click on the element below to open the side navigation menu.</p> -->
<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; MENU</span>
</div>

<div id = "secTitle">
<br>
<h1>관리자 모드 (영화 시간 추가하기)</h1>
</div>
	

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
<div class="wrapper typo">영화관 지역
  <div class="list">
  <span class="placeholder2">select</span>
    <ul class="list__ul2">
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


<!--  -->
<div id="sec3">
<div class="wrapper typo">영화관 상영관명
  <div class="list">
  <span class="placeholder3">select</span>
    <ul class="list__ul3">
      <li><a class="s3" href="">A</a></li>
      <li><a class="s3" href="">B</a></li>
      <li><a class="s3" href="">C</a></li>
    </ul>
  </div>
</div>



<!--  -->
<div id="sec4">
<div>
<span class="input input--yoshiko" style="width: 300px;">
	<input class="input__field input__field--yoshiko" type="text" id="input-10" style="width: 300px;" />
	<label class="input__label input__label--yoshiko" for="input-10" style="width: 300px;" >
		<span class="input__label-content input__label-content--yoshiko" data-content="상영할 영화명" style="width: 300px;" >
		상영할 영화명</span>
	</label>
</span>
</div>


</div>



</div>



</div><!-- sec -->
</section>

<footer>
</footer>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>

    <script>
  		function openNav() {
    	  document.getElementById("mySidenav").style.width = "250px";
    	}

    	function closeNav() {
    	  document.getElementById("mySidenav").style.width = "0";
    	}
    
    
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
       console.log($('.list__ul').find('li').eq(index).html());
       
       $('.list__ul').find('li').eq(index).prependTo('.list__ul');
       $('.list__ul').toggle();   
     });


    $('select').on('change', function (e) {
      // Set text on placeholder hidden element
      $('.placeholder').text(this.value);
      // Animate select width as placeholder
      $(this).animate({width: $('.placeholder').width() + 'px' });
    });
    
    
    /*  */
     $('.placeholder2').on('click', function (ev) {
      $('.placeholder2').css('opacity', '0');
      $('.list__ul2').toggle();
     });

     $('.list__ul2 a').on('click', function (ev) {
       ev.preventDefault();
       var index = $(this).parent().index();
       
       $('.placeholder2').text( $(this).text() ).css('opacity', '1');
       console.log($('.list__ul2').find('li').eq(index).html());
       
       $('.list__ul2').find('li').eq(index).prependTo('.list__ul2');
       $('.list__ul2').toggle();   
     });


    $('select').on('change', function (e) {
      // Set text on placeholder hidden element
      $('.placeholder2').text(this.value);
      // Animate select width as placeholder
      $(this).animate({width: $('.placeholder2').width() + 'px' });
    });
    
    
    </script>



</div>
</body>
</html>