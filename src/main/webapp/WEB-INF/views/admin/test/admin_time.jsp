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
</header>

<section>
<div id="sec">

<div style="float: left;">
<!--  -->
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="./admin_cinema">Cinema 추가</a>
  <a href="./admin_time">movieInfo 추가</a>
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
	
<div id="sec4">
<!-- 상영일 -->
<div id="sec41">
<span class="input input--chisato">
		<input class="input__field input__field--chisato" type="date" id="input-14" />
		<label class="input__label input__label--chisato" for="input-14" style="padding-top: 5px;">
			<span class="input__label-content input__label-content--chisato" data-content="상영일">상영일</span>
		</label>
</span>
</div>

<!-- 상영할 영화명 -->
<div id="sec42">dd
<!-- <span class="input input--chisato">
		<input class="input__field input__field--chisato input-13" type="text" id="myInput" placeholder="Search.." />
		<label class="input__label input__label--chisato" for="myInput">
			<span class="input__label-content input__label-content--chisato2" data-content="상영할 영화명">상영할 영화명</span>
		</label>
</span> -->
<div>
  <label>
    <input type="text" required="required" id="myInput" class="input-13" value="Search.."/>
    <span>상영할 영화명</span>
  </label>
 </div> 
</div>	

<div id="sec6" >
<form action="./adminTimeInsert" id="frm" method="post">
<input type="button" id="btn" value="추가">
<input type="hidden" id="t1" readonly="readonly" name="timeInfo_date">
<input type="hidden" id="t2" readonly="readonly" name="movieInfo_name">
<input type="hidden" id="t3" readonly="readonly">
<input type="hidden" id="t4" readonly="readonly" name="cinema_name">
<input type="hidden" id="t5" readonly="readonly" name="theater_name">
<input type="hidden" id="t6" name="cinema_num">
</form>
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
<div class="wrapper typo">영화관명
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

<!--  -->
</div>
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
  
/*   var v = "1";
  var i = 0;
  
  $('#total').html('<div id="a'+i+'">'+v+'</div>');
  i++;
  
  for (var j = 0; j < i; j++) {
  if( $('#a'+j).text() == v){
	  $('#a'+j).text("");
  }
	 */
//}
  

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



</div>
</body>
</html>