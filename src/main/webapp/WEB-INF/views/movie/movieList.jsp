<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../layout/jquery.jsp" />
<link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/layout/header.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/movie/movieList.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/home.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/design/card.css" rel="stylesheet">



</head>
<body>

<!-- header -->
<header>
<c:import url="../layout/header.jsp"></c:import>
</header>

<!-- section -->
<section>
<!-- api -->
<!-- <img alt="" src="http://file.koreafilm.or.kr/thm/02/00/05/35/tn_DPF019295.jpg"> -->
<div id="poster">


<c:forEach items="${movieList}" var="mlist" varStatus="status">

<div class="posterOne">
<img class="pimg" alt="" src="${mlist.movieInfo_poster}"><br>
<div class="pcontext">

<div class="ptitle">
<div class="page">
<c:choose>
<c:when test="${mlist.movieInfo_grade eq '전체 관람가'}">
<img class="age" alt="" src="../resources/images/movieSelect/m1.png"></c:when>
<c:when test="${mlist.movieInfo_grade eq '12세 관람가'}">
<img  class="age" alt="" src="../resources/images/movieSelect/m2.png"></c:when>
<c:when test="${mlist.movieInfo_grade eq '15세 관람가'}">
<img  class="age" alt="" src="../resources/images/movieSelect/m3.png"></c:when>
<c:when test="${mlist.movieInfo_grade eq '청소년 관람불가'}">
<img  class="age" alt="" src="../resources/images/movieSelect/m4.png"></c:when>
</c:choose>
</div>

<div class="pname">
${mlist.movieInfo_title}
</div>

</div>

<div class="ptext">
개봉일 : ${mlist.movieInfo_date}<br>
상영시간  : ${mlist.movieInfo_time}분<br>
평점 : ${mlist.movieInfo_star}<br>
</div>
</div>
</div>


<c:if test="${(status.index+1)%5 == 0}">
<div class="posterDiv"></div>
</c:if>


</c:forEach>

</div>

<%-- 				<ol class="officeRank rounded-list">
					
					<c:forEach begin="0" end="9" var="i">
						<li class="active" id="Rank_${i}">
						</li>
					</c:forEach>

					</ol>
  --%>


<!-- modal -->

<div class="card">
  <div class="thumb">
  <img class="pimg" alt="" src="http://file.koreafilm.or.kr/thm/02/00/05/35/tn_DPF019295.jpg">
  </div>
  <div class="infos">
    <h2 class="title">new york city<span class="flag"><img  class="age" alt="" src="../resources/images/movieSelect/m4.png"></span></h2>
    <h3 class="date">november 2 - 4</h3>
    <h3 class="seats">seats remaining: 2</h3>
    <p class="txt">
      Join us for our Live Infinity Session in
      beautiful New York City. This is a 3 day
      intensive workshop where you'll learn
      how to become a better version of...
    </p>
    <h3 class="details">event details</h3>
  </div>
</div>
<div class="card">
  <div class="thumb">
  <img class="pimg" alt="" src="http://file.koreafilm.or.kr/thm/02/00/05/35/tn_DPF019295.jpg">
  </div>
  <div class="infos">
    <h2 class="title">new york city<span class="flag"><img  class="age" alt="" src="../resources/images/movieSelect/m4.png"></span></h2>
    <h3 class="date">november 2 - 4</h3>
    <h3 class="seats">seats remaining: 2</h3>
    <p class="txt">
      Join us for our Live Infinity Session in
      beautiful New York City. This is a 3 day
      intensive workshop where you'll learn
      how to become a better version of...
    </p>
    <h3 class="details">event details</h3>
  </div>
</div>


</section>

<!-- footer -->
<footer></footer>

<script type="text/javascript">
/* //어제 날짜 구하기
var nowDate = new Date();
var yesterDate = nowDate.getTime() - (1*24*60*60*1000);
nowDate.setTime(yesterDate);

var yesterYear = nowDate.getFullYear();
var yesterMonth = nowDate.getMonth() +1;
var yesterDay = nowDate.getDate();

if(yesterMonth < 10){ yesterMonth = "0"+ yesterMonth; }
if(yesterDay < 10){ yesterDay = "0" + yesterDay; }

var yesterDate = yesterYear + "" + yesterMonth + "" + yesterDay;
yesterDate = yesterDate.trim();
//alert(yesterDate);
////////////////////////////////////////////////////////////////

$.ajax({
	type: "GET",
	url: "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json",
	async: false,
	data: {
		key: "${key}",
		targetDt: yesterDate
	},
	success: function(data) {
		$.each(data.boxOfficeResult.dailyBoxOfficeList, function(m) {
			/* //$('#Rank_'+i+' a').
			append("<span class=\"office_cell\">"+
					m.rank+"</span><span class=\"office_cell\">"+
					m.rankOldAndNew+"</span><span class=\"office_cell\">"+
					m.rankInten+"</span><span class=\"office_cell\">"+
					m.movieNm+"</span>"); */
		/* 	$('#a').append(m.movieNm);
			$('#b').append(m.audiAcc); */
			
	 		
			
	/* 		$('#a').append('<div id="rank'+i+'">'+m.movieNm+'</div>');
			$('#b').append('<div id="count'+i+'">'+m.audiAcc+'</div>'); */
			
	/* 		for (var i = 1; i < 11; i++) {
			$("#frm").append('<input type="text" name="movieInfo_name'+i+'" value="'+m.movieNm+'">');
			$("#frm").append('<input type="text" name="movie_count'+i+'" value="'+m.audiAcc+'">');
			
			if(i == 10){
				$("#frm").submit();
			}
			
			}
 */
		
			
/* 	
		});
	}
}); */
 

/* modal */



</script>

</body>
</html>