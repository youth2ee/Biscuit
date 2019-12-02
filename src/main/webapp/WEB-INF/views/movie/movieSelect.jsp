<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../layout/bootStrap.jsp" />
<style type="text/css">

a{
color: black;
text-decoration: none;
}


a:hover{
color: red;
text-decoration: none;
}





</style>


</head>
<body>

<h1>Movie Select</h1>

<!-- 영화제목 선택 -->
<div style="height: 500px; width: 300px; overflow: scroll; float: left;">
<ul style="list-style: none; cursor: pointer;">
<c:forEach items="${movieTitle}" var="title">
<li class="movietitle" title="${title.movieInfo_num}"><a class="amt">${title.movieInfo_title}</a></li>
</c:forEach>
</ul>
</div>

<!-- 영화 지역선택 -->
<div style="height: 500px; width: 300px; overflow: scroll; float: left;">
<ul style="list-style: none; cursor: pointer;">
<c:forEach items="${movieLoc}" var="loc">
<li class="loc">${loc.cinema_loc}</li>
</c:forEach>
</ul>
</div> 

<!-- 영화 지역에 따른 영화관 선택 -->
<div style="height: 500px; width: 300px; overflow: scroll; float: left;">
<ul style="list-style: none; cursor: pointer;" id="cinemaNameSelect">
</ul>
</div> 

<!-- 날짜선택  -->
<div style="height: 500px; width: 300px; overflow: scroll; float: left;">
<ul style="list-style: none; cursor: pointer;" id="movieDateSelect"></ul>
</div> 

<!-- 시간선택  -->
<div style="height: 500px; width: 300px; overflow: scroll; float: left;">
<ul style="list-style: none; cursor: pointer;" id="movieTimeSelect"></ul>
</div> 








 <script type="text/javascript">
 	var mnum = ""; //영화번호	
 	var mname = ""; //영화이름
 	var loc = ""; //영화지역
 	var cnum = ""; //영화관번호
 	var cname = ""; //영화관이름 
 	
 
 	/* 클릭한 영화명 기억하기 */
 	$(document).on("click", ".movietitle", function() {
 		$(this).attr("color","yellow");
 		
 		mnum = $(this).attr("title");
		mnum = mnum.trim();
		
		mname = $(this).text();
		mname = mname.trim();
	});
 	
 	
 	
 
 	/* 영화 지역을 클릭하면 영화관선택하기 */
 	$(document).on("click",".loc",function(){
 		loc = $(this).text();
 		loc = loc.trim();

 		$.ajax({
			data : {cinema_loc:loc},
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
  		cnum = $(this).attr("title");
  		cname = $(this).text();
  		cnum = cnum.trim();
 		cname = cname.trim();
 		
 		$.ajax({
			data : {
				cinema_num:cnum,
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
  		var cdate = $(this).text();
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
				alert("a");
				$('#movieTimeSelect').html(data);
			}
		}); 
 		});
 	
 	
</script> 


</body>
</html>