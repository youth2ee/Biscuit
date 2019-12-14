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
<img alt="" src="${mlist.movieInfo_poster}"><br>
<div style="padding-top: 10px;">
${mlist.movieInfo_grade}<br>
${mlist.movieInfo_title}<br>
${mlist.movieInfo_time}<br>
${mlist.movieInfo_date}<br>
${mlist.movieInfo_star}<br>
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
				<!-- 
				
				<div id="a"> </div>
				<div id="b"> </div> -->
	
<!-- <form action="./movieAPI" method="post" id="frm">
</form> -->

</section>

<!-- footer -->
<footer></footer>

<script type="text/javascript">
//어제 날짜 구하기
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
		
			
	
		});
	}
});


</script>

</body>
</html>