<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../layout/jquery.jsp" />

<link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/layout/header.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/movie/movieSelect.css" rel="stylesheet">

</head>
<body>
<div id="total">

<!-- HEADER -->
<header>
<c:import url="../layout/header.jsp"></c:import>
</header>

<!-- SECTION -->
<section>
<div id="sec">

<div id="secTitle">
<h1>Movie Select</h1>
</div>

<div id="secMain"> 
 <!-- 영화제목 선택 -->
<div class="s">
<ul class="sul">
<c:forEach items="${movieTitle}" var="title">
<li class="movietitle" title="${title.movieInfo_num}">${title.movieInfo_title}</li>
</c:forEach>
</ul>
</div>

<!-- 영화 지역선택 -->
<div class="s">
<ul class="sul" id="theaterNameSelect">
<c:forEach items="${movieLoc}" var="loc">
<li class="loc" title="${loc.cinema_num}">${loc.cinema_loc}</li>
</c:forEach>
</ul>
</div> 

<!-- 영화 지역에 따른 영화관 선택 -->
<div class="s">
<ul class="sul" id="cinemaNameSelect">
</ul>
</div> 

<!-- 날짜선택  -->
<div class="s">
<ul class="sul" id="movieDateSelect"></ul>
</div> 

<!-- 시간선택  -->
<div class="s">
<ul class="sul" id="movieTimeSelect"></ul>
</div> 
</div>


</div>
</section>

<!-- FOOTER -->
<footer></footer>


 <button id="btn">다음 (좌석선택하러가기^_^ ~)</button>




  <script type="text/javascript">
 	var mnum = ""; //영화번호	
 	var mname = ""; //영화이름
 	var loc = ""; //영화지역
 	var cnum = ""; //영화관번호
 	var cname = ""; //영화관이름 
 	var cdate = ""; //날짜
 	var ctime = ""; //시간
 	
 	var theater = $("#theaterNameSelect");
 	var cinema = $("#cinemaNameSelect");
	var date = $("#movieDateSelect");
 	var time = $("#movieTimeSelect");
 	
 
 	/* 클릭한 영화명 기억하기 */
 	$(document).on("click", ".movietitle", function() {
 		$(this).addClass('act').siblings().removeClass('act');
 		
 		if(theater.html().trim() != ""){
 			theater.children().removeClass('act');
 			cinema.removeClass('act');
 			cinema.empty();
 			date.empty();
 			time.empty();
 		}
 		
 		mnum = $(this).attr("title");
		mnum = mnum.trim();
		
		mname = $(this).text();
		mname = mname.trim();
		
		console.log(mname);
	});
 	
 	/* 영화 지역을 클릭하면 영화관선택하기 */
 	$(document).on("click",".loc",function(){
 		$(this).addClass('act').siblings().removeClass('act');
 		
 		if(date.html().trim() != ""){
 			theater.children().removeClass('act');
 			cinema.empty();
 			date.empty();
 			time.empty();
 		}
 	
 		loc = $(this).text();
 		loc = loc.trim();
 		
 		cnum = $(this).attr("title");
		cnum = cnum.trim();
 		
 		
 		$.ajax({
			data : {
				cinema_loc:loc,
				movieInfo_num:mnum
			},
			type : "GET",
			url : "./locSelect",
			success : function(data) {
				data = data.trim();
				$('#cinemaNameSelect').html(data);
			}
		});
 		});
 	
 	
 	/* 영화관을 선택하면 날짜가 뜹니다. */
 	$(document).on("click",".cinemaSelect",function(){
 		$(this).addClass('act').siblings().removeClass('act');
 		
 		if(time.html().trim() != ""){
 			date.empty();
 			time.empty();
 		}
 		
  		cnum = $(this).attr("title");
  		cname = $(this).text();
  		
  		cnum = cnum.trim();
 		cname = cname.trim();
 		
 		console.log(cnum);
 		console.log(cname);
 		
 		$.ajax({
			data : {
				cinema_loc:loc,
				cinema_num:cnum,
				cinema_name:cname,
				movieInfo_num:mnum
				},
			type : "GET",
			url : "./dateSelect",
			success : function(data) {
				data = data.trim();
				$('#movieDateSelect').html(data);
			}
		}); 
 		});
 	
 	/* 날짜를 선택하면 시간이 떠야겠지요? */
 	 $(document).on("click",".dateSelect",function(){
 		$(this).addClass('act').siblings().removeClass('act');
 		
 		 
  		cdate = $(this).text();
 		cdate = cdate.trim();
 		
  		$.ajax({
			data : {
				timeInfo_date:cdate,
				movieInfo_num:mnum,
				cinema_num:cnum
			},
			type : "GET",
			url : "./timeSelect",
			success : function(data) {
				data = data.trim();
				$('#movieTimeSelect').html(data);
			}
		}); 
 		});
 	
 	/* 시간을 선택해 볼까요 */
 	 	$(document).on("click",".timeSelect",function(){
 		$(this).addClass('act').siblings().removeClass('act');
 		
 		 
  		ctime = $(this).text();
 		ctime = ctime.trim();
 		 
 		});
 	
 	
 	/* 다 선택했으면 seat 컨트롤러로 가볼까요 */
 	 	 $(document).on("click","#btn",function(){

 	 	console.log(mnum);	 
 		console.log(mname);	 
 		console.log(loc);	 
 		console.log(cnum);	 
 		console.log(cname);	 
 		console.log(cdate);	 
 		console.log(ctime);	 
 		
 		
   		$.ajax({
			data : {
				movieInfo_num:mnum,
				movieInfo_name:mname,
				cinema_loc:loc,
				cinema_num:cnum,
				cinema_name:cname,
				timeInfo_date:cdate,
				timeInfo_start:ctime
			},
			type : "GET",
			url : "../seat/seatTest",
			success : function(data) {
				data = data.trim();
				alert("good");
			}
		});  
 		});
 	
 	
 	
</script> 

 </div><!-- total -->
</body>
</html>