<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>주소로 장소 표시하기</title>
<c:import url="../layout/jquery.jsp" />
<link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/layout/header.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/cinema/cinemaList.css" rel="stylesheet">



</head>
<body>

<!-- header -->
<header>
<c:import url="../layout/header.jsp"></c:import>
</header>

<!-- section -->
<section>

<div id="bricks" style="background-image: url('../resources/images/cinema/bricks.jpg');">
<!-- cinema 리스트 -->
<div id="cinemaName"  style="background-image: url('../resources/images/cinema/cmain.jpg')">
<table id="cinematable">

<c:forEach items="${locList}" var="loc"> 
<tr>
<td class="loctd">${loc.cinema_loc}</td>
<c:forEach items="${cinemaList}" var="cinema">
<c:if test="${cinema.cinema_loc eq loc.cinema_loc}">
<td class="cinematd">${cinema.cinema_name}</td>
</c:if>
</c:forEach>
</tr>
</c:forEach>

</table>
</div>
</div>




<div id="mid">

<!-- 지도 -->
<div id="map"></div>

<!-- 그 영화관 정보 -->
<div id="minfo" style="background-image: url('http://img.cgv.co.kr/Theater/Theater/2014/1211/CGVgangnam.jpg')">
<div id="minfo_txt"> 
<h1>강남</h1>
<h2>tel</h2>
<h3>address</h3>
</div> 

</div>


</div>







</section>




<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c385975a519fabb671122b6c7f825767&libraries=services,clusterer,drawing"></script>
<script>

/* 어디 영화관 선택할건지 값 보내주기 */
 
/* 1. 지역선택해서 보내주기 */
var cname = ""; //상영관이름
var cadd = ""; //상영관주소
var ctel = ""; //상영관번호
var cimage = ""; //상영관이미지 주소


var cinematable = $("#cinematable");

	$(document).on("click", ".cinematd", function() {
 		/* $(this).addClass('act').siblings().removeClass('act'); */
		
 		console.log(cname);
 		console.log(cadd);
 		
		cname = $(this).text();
		cname = cname.trim();
		
		console.log(cname);
		
 		$.ajax({
			data : {
				cinema_name:cname
			},
			type : "GET",
			url : "./cinemaAdd",
			success : function(data) {
				cadd = data.cinema_add;
				cname = data.cinema_name;
				ctel = data.cinema_tel;
				cimage = data.cinema_image;
				
				$('#minfo_txt').html("");
				$('#minfo_txt').html('<h1>'+cname+'</h1>'+'<h2>'+ctel+'</h2>'+'<h3>'+cadd+'</h3>');
				$('#minfo').css('background-image', 'url('+cimage+')' );
				

				
				/* 3. 지도 띄우기 */
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				    mapOption = {
				        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
				        level: 3 // 지도의 확대 레벨
				    };  

				// 지도를 생성합니다    
				var map = new kakao.maps.Map(mapContainer, mapOption); 

				// 주소-좌표 변환 객체를 생성합니다
				var geocoder = new kakao.maps.services.Geocoder();

				// 주소로 좌표를 검색합니다 제주특별자치도 제주시 첨단로 242
				geocoder.addressSearch(cadd, function(result, status) {
					
				    // 정상적으로 검색이 완료됐으면 
				     if (status === kakao.maps.services.Status.OK) {
				        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

				        // 결과값으로 받은 위치를 마커로 표시합니다
				        var marker = new kakao.maps.Marker({
				            map: map,
				            position: coords
				        });

				        // 인포윈도우로 장소에 대한 설명을 표시합니다
				        var infowindow = new kakao.maps.InfoWindow({
				            content: '<div style="width:150px;text-align:center;padding:6px 0;">'+cname+'CGV</div>'
				        });
				        infowindow.open(map, marker);

				        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
				        map.setCenter(coords);
				    } 
				}); 
				
			},
			error: function() {
				alert("실패");
			}
		
			
			
		});
 		
 		});
	
	/* 초기 지도 띄우기 */
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };  

	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 

	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();

	// 주소로 좌표를 검색합니다 제주특별자치도 제주시 첨단로 242
	geocoder.addressSearch("서울특별시 강남구 강남대로 438", function(result, status) {
		
	    // 정상적으로 검색이 완료됐으면 
	     if (status === kakao.maps.services.Status.OK) {
	        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

	        // 결과값으로 받은 위치를 마커로 표시합니다
	        var marker = new kakao.maps.Marker({
	            map: map,
	            position: coords
	        });

	        // 인포윈도우로 장소에 대한 설명을 표시합니다
	        var infowindow = new kakao.maps.InfoWindow({
	            content: '<div style="width:150px;text-align:center;padding:6px 0;">강남CGV</div>'
	        });
	        infowindow.open(map, marker);

	        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	        map.setCenter(coords);
	    } 
	}); 
	
	



   
</script>
</body>
</html>
