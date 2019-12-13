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
<img alt="" src="http://file.koreafilm.or.kr/thm/02/00/05/35/tn_DPF019295.jpg">
<div style="width: 70%; margin: 0 auto; padding-top: 30px;">



<c:forEach items="${movieList}" var="mlist" varStatus="status">

<div style="float: left; width: 20%; background-color: red;">${mlist.movieInfo_title} </div>
<img alt="" src="${mlist.movieInfo_poster}">

<c:if test="${status.index %5 == 0}">
<br><br>
</c:if>


</c:forEach>

<div style="float: left;  width: 20%; background-color: orange;">b</div>
<div style="float: left;  width: 20%; background-color: yellow;">c</div>
<div style="float: left;  width: 20%; background-color: green;">c</div>
<div style="float: left;  width: 20%; background-color: blue;">e</div>

</div>

				
	<%-- 
					<ol class="officeRank rounded-list">
					<c:forEach begin="0" end="9" var="i">
						<li class="active" id="Rank_${i}">
							<a href="#"></a>
						</li>
					</c:forEach>
					</ol>
 --%>
				
	


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
		$.each(data.boxOfficeResult.dailyBoxOfficeList, function(i, m) {
			//$('#Rank_'+i+' a').append("<span class=\"office_cell\">"+m.rank+"</span><span class=\"office_cell\">"+m.rankOldAndNew+"</span><span class=\"office_cell\">"+m.rankInten+"</span><span class=\"office_cell\">"+m.movieNm+"</span>");
			$('#Rank_'+i+' a').append(m.movieNm);
		});
	}
});



</script>

</body>
</html>