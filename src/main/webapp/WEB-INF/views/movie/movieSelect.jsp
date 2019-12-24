<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 그 이상의 감동 CGV</title>
<c:import url="../layout/jquery.jsp" />

<link href="${pageContext.request.contextPath}/resources/css/reset.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/layout/header.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/movie/movieSelect.css"
	rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/layout/footer.css" rel="stylesheet">

</head>
<body>
	<div id="total">

		<!-- HEADER -->
		<header>
			<c:import url="../layout/header.jsp" />
		</header>

		<!-- SECTION -->
		<section>
			<div id="sec">

				<!-- date -->
				<div>
					<div class="swiper-container">
						<div class="swiper-wrapper">
						</div>
						<!-- Add Pagination -->
						<div class="swiper-pagination"></div>
					</div>
				</div>
				<!-- date 끝 -->


				<div id="secMidTitle">
					<div class="dname">
						<img alt="" src="../resources/images/movieSelect/ms1.png">
					</div>
					<div class="divc">
						<img alt="" src="../resources/images/movieSelect/ms2.png">
					</div>
					<div class="divT">
						<img alt="" src="../resources/images/movieSelect/ms3.png">
					</div>
					<div class="divT2">
						<img alt="" src="../resources/images/movieSelect/ms4.png">
					</div>
				</div>


				<div id="secMain">

					<!-- 받아온 영화제목 -->
					<c:if test="${not empty movieInfo_name}">
						<input type="hidden" value="${movieInfo_name}" id="selectMovieName">
					</c:if>

					<!-- 영화제목 선택 -->
					<div class="sname s">
						<table class="sul">
							<c:forEach items="${movieTitle}" var="title">
								<tr class="movietitle">
									<td class="mtd1">
									<c:choose>
											<c:when test="${title.movieInfo_grade eq '전체 관람가'}">
												<img class="age" alt=""
													src="../resources/images/movieSelect/m1.png">
											</c:when>
											<c:when test="${title.movieInfo_grade eq '12세 관람가'}">
												<img class="age" alt=""
													src="../resources/images/movieSelect/m2.png">
											</c:when>
											<c:when test="${title.movieInfo_grade eq '15세 관람가'}">
												<img class="age" alt=""
													src="../resources/images/movieSelect/m3.png">
											</c:when>
											<c:when test="${title.movieInfo_grade eq '청소년 관람불가'}">
												<img class="age" alt=""
													src="../resources/images/movieSelect/m4.png">
											</c:when>
										</c:choose></td>

									<td class="mtitle mtd" title="${title.movieInfo_num}">${title.movieInfo_title}</td>

								</tr>
							</c:forEach>
						</table>
					</div>


					<!-- 영화 지역선택 -->
					<div class="s s1">
						<table class="sul" id="theaterNameSelect">
							<c:forEach items="${movieLoc}" var="loc">
								<tr class="loc">
									<td class="mtd">${loc.cinema_loc}</td>
								<tr>
							</c:forEach>
						</table>
					</div>



					<!-- 영화 지역에 따른 영화관 선택 -->
					<div class="s3 s2">
						<table class="sul" id="cinemaNameSelect">
						</table>
					</div>


					<!-- 날짜선택  -->
					<div class="s s4">
					<img class="corn3" alt="" src="../resources/images/movieSelect/pop_cornT.png">
						<table class="sul" id="movieDateSelect">
						</table>
					</div>


					<!-- 시간선택  -->
					<div class="s s5">
					<img class="corn4" alt="" src="../resources/images/movieSelect/pop_corn_D.png">
						<table class="sul" id="movieTimeSelect">
						</table>
					</div>

					<form action="../member/movieLogin" id="frm" method="post">
						 <img id="btn" alt="" src="../resources/images/movieSelect/seat.png"> 
					</form>


				</div>
			</div>
		</section>

		<footer>
			<c:import url="../layout/footer.jsp" />
		</footer>



	<script type="text/javascript">
 	var sname = ""; //선택된 영화 제목
 	sname = $('#selectMovieName').val();

 	var mnum = ""; //영화번호	
 	var mname = ""; //영화이름
 	var loc = ""; //영화지역
 	var cnum = ""; //영화관번호
 	var cname = ""; //영화관이름 
 	var cdate = ""; //날짜
 	var ctime = ""; //시간
 	var cendtime = ""; //끝시간
 	var tnum = ""; //상영관번호
 	var tname = ""; //상영관이름
 	
 	var theater = $("#theaterNameSelect");
 	var cinema = $("#cinemaNameSelect");
	var date = $("#movieDateSelect");
 	var time = $("#movieTimeSelect");
 	
 	$(document).ready(function() {
 		
 		$.each($('.mtitle'), function(i,e){
 			
			if($(this).text().trim() == sname){
				
				var position = $(this).position();
				var offset = $(this).offset();

 	 	 		$(this).closest('.movietitle').addClass('act');
				
 	 	 		mnum = $(this).attr('title');
 	 	 		mname = $(this).text();

 	 	 		console.log(mnum);
 	 	 		console.log(mname);
 	 	 		
 	 	 		var pos = 0;
 	 	 		pos = Number(position.top);
				pos = pos + 14
				
				$(this).closest('.sname').scrollTop(pos);

 	 	 	}
 		});

 	 	
 	});
 	

 
 	/* 클릭한 영화명 기억하기 */
 	$(document).on("click", ".movietitle", function() {
 		$(this).addClass('act').siblings().removeClass('act');
 		$(this).siblings().find('.mtitle').removeClass('act');
 		
 		if(theater.html().trim() != ""){
 			theater.find(".act").removeClass('act');
 			cinema.empty();
 			date.empty();
 			time.empty();
 			$('#year').css("display", "none");
 		}
		
		mnum = $(this).find(".mtitle").attr("title");
		mnum = mnum.trim();
		
		mname = $(this).find(".mtitle").text();
		mname = mname.trim();
		
		console.log(mname);
	});
 	
 	/* 영화 지역을 클릭하면 영화관선택하기 */
 	$(document).on("click",".loc",function(){
 		$(this).addClass('act').siblings().removeClass('act');
 		
 		if(date.html().trim() != ""){
 			theater.siblings().removeClass('act');
 			cinema.empty();
 			date.empty();
 			time.empty();
 			$('#year').css("display", "none");
 		}
 	
 		loc = $(this).children().text();
 		loc = loc.trim();
 		
 		console.log(loc);
 		
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
				$('.noncheck').addClass('noncheck').addClass('soldout');
		}
 		});
 	});
 	
 	/* 영화관을 선택하면 날짜가 뜹니다. */
 	$(document).on("click",".cinemaSelect",function(){
 		$(this).addClass('act').siblings().removeClass('act');
 		$('#year').css("display", "inline");
 		
 		
 		if(time.html().trim() != "" || date.html().trim() != ""){
 			date.empty();
 			time.empty();
 			$('#year').css("display", "none");
 		}

  		cnum = $(this).find(".mcinema").attr("title");
  		cname = $(this).find(".mcinema").text();
  		
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
 		 
 		 cdate = $(this).attr('id');
 		 cdate = cdate.trim();
 		 
 		console.log(cdate);
 	 	console.log(cdate);
 		console.log(mnum);
 		console.log(cnum);

 		
  		$.ajax({
			data : {
				movieInfo_num:mnum,
				cinema_num:cnum,
				timeInfo_date:cdate
			},
			type : "GET",
			url : "./timeSelect",
			success : function(data) {
				
				data = data.trim();
				$('#movieTimeSelect').html(data);	

		 		$.each($('.mtime2'), function(i,e){
		 			
		 			var ftime = $(this).parent().siblings('.tstr').find('.timeSelect').text()
		 			
	
		 			if(cdate == '19/12/24'){
		 				
		 				if(ftime == '08:00' || ftime == '11:00' || ftime == '14:00'){
		 					$(this).parent().siblings('.tstr').find('.timeSelect').addClass('soldout'); 
		 					$(this).text("상영종료");
		 				}
		 			}
		 			
		 			//alert($(this).parent().siblings('.tstr').find('.timeSelect').text());
		 			
					if($(this).text() == '매진'){
						$(this).parent().siblings('.tstr').find('.timeSelect').addClass('soldout'); 
					}
		 		});

			}
		}); 
 		});
 	
 	/* 시간을 선택해 볼까요 */
 	 	$(document).on("click",".timeSelect",function(){
 	 	$(this).addClass('act').closest('.ttable').siblings().find('.timeSelect').removeClass('act');
 	 		
  		ctime = $(this).text(); 
 		ctime = ctime.trim();
 		
 		cendtime = $(this).attr('title'); 
 		cendtime = cendtime.trim(); 
 		
 		tname = $(this).attr('id'); 
 		tname = tname.trim(); 
 		
 		tnum = $(this).closest('.tstr').attr('id');
  
 		
 		console.log(ctime);
 		console.log(cendtime);
 		console.log(tname);
 		console.log(tnum);
 		
 		}); 
 	


 	/* 다 선택했으면 seat 컨트롤러로 가볼까요 */
 	$(document).on("click","#btn",function(){
            
       if (mnum != "" && mname != "" && loc != "" && cnum != "" && cname != "" && cdate != "" && ctime != "") {
   
    	  
          console.log("check");
          console.log(mnum);    
          console.log(mname);    
          console.log(loc);    
          console.log(cnum);    
          console.log(cname);    
          console.log(cdate);    
          console.log(ctime);  
          console.log(cendtime);  
          console.log(tnum);
          console.log(tname);
       
           $("#frm").append('<input type="hidden" name="movieInfo_num" value="'+mnum+'">');
           $("#frm").append('<input type="hidden" name="movieInfo_name" value="'+mname+'">');
           $("#frm").append('<input type="hidden" name="cinema_loc" value="'+loc+'">');
           $("#frm").append('<input type="hidden" name="cinema_num" value="'+cnum+'">');
           $("#frm").append('<input type="hidden" name="cinema_name" value="'+cname+'">');
           $("#frm").append('<input type="hidden" name="timeInfo_date" value="'+cdate+'">');
           $("#frm").append('<input type="hidden" name="timeInfo_start" value="'+ctime+'">');
           $("#frm").append('<input type="hidden" name="timeInfo_end" value="'+cendtime+'">');
           $("#frm").append('<input type="hidden" name="theater_num" value="'+tnum+'">');
           $("#frm").append('<input type="hidden" name="theater_name" value="'+tname+'">');
         
           $("#frm").submit(); 
      } else {
         alert("영화를 바르게 선택해주세요");
      }
       
       });
 	
</script>

	</div>
	<!-- total -->
</body>
</html>