<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 	

<link rel="stylesheet" href="owlcarousel/owl.carousel.min.css">
<link rel="stylesheet" href="owlcarousel/owl.theme.default.min.css">
<script src="jquery.min.js"></script>
<script src="owlcarousel/owl.carousel.min.js"></script>

<style type="text/css">
	*{
		margin: 0;
		padding: 0;
	}
	ol, ul, li {
		list-style: none;
	}
	a{
		color: black;
		text-decoration: none;
	}
	#cgvwrap{
		background-color: #fdfcf0;
		width: 100%;
		height: 2000px;
	}
	#boxOffice{
		position: absolute;
		top: 0;
		left: 0;
		width: 315px;
		/* height: 645px; */
		overflow: hidden;
		background-color: #fff;
	}
	#officeTop{
		height: 153px;
   	 	text-align: center;
    	background: #2a2e33;
	}
	#officeTop h2 {
		padding: 50px 0 27px;
	}
	#officeCont {
		padding: 20px 30px;
	}
	#officeCont li {
		margin: 10px 0;
	}
</style>
</head>
<body>
	<div id="cgvWrap">
		<!-- Header -->
		<header></header>
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
			<!-- ------------------------------------------ -->
			<!-- carousel -->
			<div class="owl-carousel">
			  <div> Your Content </div>
			  <div> Your Content </div>
			  <div> Your Content </div>
			  <div> Your Content </div>
			  <div> Your Content </div>
			  <div> Your Content </div>
			  <div> Your Content </div>
			</div>
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
			key: "ff19a9e93f90f4687f3c084727cb65bc",
			targetDt: yesterDate
		},
		success: function(data) {
			$.each(data.boxOfficeResult.dailyBoxOfficeList, function(i, m) {
				$('#Rank_'+i+' a').html("<h3>"+(i+1)+". "+m.movieNm+"</h3>");
			});
		}
	});
</script>

</body>
</html>