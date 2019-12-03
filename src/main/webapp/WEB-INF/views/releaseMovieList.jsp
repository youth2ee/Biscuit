<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 	
</head>
<body>

	<div id="releaseCont">
		<ol class="releaseRank">
			<c:forEach begin="0" end="9" var="i">
				<li class="active" id="Rank_${i}">
					<a href="#"></a>
				</li>
			</c:forEach>
		</ol>
	</div>


<script type="text/javascript">
	//내일 날짜 구하기
	
	//한 달 전 날짜 구하기
	var nowDate = new Date();
	var monthDate = nowDate.getTime() + (30*24*60*60*1000);
	nowDate.setTime(monthDate);
	
	var monthYear = nowDate.getFullYear();
	var monthMonth = nowDate.getMonth() +1;
	var monthDay = nowDate.getDate();
	
	if(monthMonth < 10){ monthMonth = "0"+ monthMonth; }
	if(monthDay < 10){ monthDay = "0" + monthDay; }
	
	var monthDate = monthYear + "" + monthMonth + "" + monthDay;
	monthDate = monthDate.trim();
	//alert(monthDate);
	
	$.ajax({
		type: "GET",
		url: "http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieList.json",
		data: {
			key: "ff19a9e93f90f4687f3c084727cb65bc",
			openStartDt: "20191201",
			openEndDt: "20191231"
		},
		success: function(data) {
			//var a = data.movieListResult.movieList[0].movieNm;
			console.log(data);
			//$.each(data.boxOfficeResult.dailyBoxOfficeList, function(i, m) {
			//	$('#Rank_'+i+' a').html("<h3>"+(i+1)+". "+m.movieNm+"</h3>");
			//});
		}
	});
</script>
</body>
</html>