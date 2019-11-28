<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 	
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
		height: 645px;
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
		padding-top: 20px;
	}
</style>
</head>
<body>
	<div id="cgvWrap">
		<!-- Header -->
		<header></header>
		<!-- Container -->
		<div id="container">
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
						<li class="active" id="Rank_0">
							<a href="#"></a>
						</li>
						<li class="active" id="Rank_1">
							<a href="#"></a>
						</li>
						<li class="active" id="Rank_2">
							<a href="#"></a>
						</li>
						<li class="active" id="Rank_3">
							<a href="#"></a>
						</li>
						<li class="active" id="Rank_4">
							<a href="#"></a>
						</li>
						<li class="active" id="Rank_5">
							<a href="#"></a>
						</li>
						<li class="active" id="Rank_6">
							<a href="#"></a>
						</li>
						<li class="active" id="Rank_7">
							<a href="#"></a>
						</li>
						<li class="active" id="Rank_8">
							<a href="#"></a>
						</li>
						<li class="active" id="Rank_9">
							<a href="#"></a>
						</li>
					</ol>
				</div>
			</div>
		</div>
	</div>

<script type="text/javascript">
	var today = new Date().toISOString().substr(0, 10).replace('T', '');
	today = today.replace('-', '');
	today = today.replace('-', '');
	//alert(today);
	today = today.trim();
	
	$.ajax({
		type: "GET",
		url: "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json",
		data: {
			key: "ff19a9e93f90f4687f3c084727cb65bc",
			targetDt: "20191126"
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