<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 	
<link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/home.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/layout/header_home.css" rel="stylesheet">


</head>
<body>
	<div id="cgvWrap">
		<!-- Header -->
		<header>
		<c:import url="./layout/header_home.jsp" />
		</header>
		
		
		<!-- Container -->
		<div id="container">
			<!-- boxOffice -->
			<div id="boxOffice">
				<div id="officeTop">
					<h2>
						<img alt="BOX OFFICE" src="./resources/images/home/h2_boxoffice.png">
					</h2>
					<ul class="officeTab">
						<li class="on">
							<a href="#">예매순</a>
						</li>
						<li class>
							<a href="#">평점순</a>
						</li>
					</ul>
				</div>
				
				<div id="officeCont">
					<ol class="officeRank">
						<c:forEach begin="0" end="9" var="i">
							<li class="active" id="Rank_${i}">
								<a href="#"></a>
							</li>
						</c:forEach>
					</ol>
				</div>
			</div>
			<!-- ----------------boxOffice--------------- -->
			<!-- carousel -->
			<!-- <div class="owl-carousel">
			  <div> Your Content </div>
			  <div> Your Content </div>
			  <div> Your Content </div>
			  <div> Your Content </div>
			  <div> Your Content </div>
			  <div> Your Content </div>
			  <div> Your Content </div>
			</div> -->
		</div>
	</div>


<script type="text/javascript">
$(document).ready(function(){
	 $(".owl-carousel").owlCarousel();
});

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
				$('#Rank_'+i+' a').append("<span class=\"office_cell\">"+m.rank+"</span><span class=\"office_cell\">"+m.rankOldAndNew+"</span><span class=\"office_cell\">"+m.rankInten+"</span><span class=\"office_cell\">"+m.movieNm+"</span>");
			});
		}
	});
</script>

</body>
</html>