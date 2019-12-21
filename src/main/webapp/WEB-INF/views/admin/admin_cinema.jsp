<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../layout/jquery.jsp" />

<link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/layout/header.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/movie/movieSelect_admin.css" rel="stylesheet">

<link href="${pageContext.request.contextPath}/resources/css/design/set2.css" rel="stylesheet" >
<link href="${pageContext.request.contextPath}/resources/css/design/demo.css" rel="stylesheet" >

<link href="${pageContext.request.contextPath}/resources/css/select/selectList.css" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/select/style.css">

<style>
	body #cdawrap {
		--cda-top: 15px;
		--cda-background: transparent;
		--cda-text-color: #333;
		--cda-border-color: rgba(0,0,0,0.4);
		--cda-sp-color: #999;
	}
</style>


</head>
<body>
<div id="total">
<header>
</header>

<section>
<div id="sec">


<!--  -->
<!-- <div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="./admin_cinema">Cinema 추가</a>
  <a href="./admin_time">Time 추가</a>
  <a href="#">Clients</a>
  <a href="#">Contact</a>
</div>

<div id="menubar">
<h2>Animated Sidenav Example</h2>
<p>Click on the element below to open the side navigation menu.</p>
<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; MENU</span>
</div> -->

<div id = "secTitle">
<br>
<h1>관리자 모드 (새로 개관한 극장을 추가하기)</h1>
</div>
	

<!--  -->
<div id="sec1">
<div class="wrapper typo">영화관 지역
  <div class="list">
  <span class="placeholder">select</span>
    <ul class="list__ul">
      <li><a href="">서울</a></li>
      <li><a href="">경기</a></li>
      <li><a href="">인천</a></li>
      <li><a href="">강원</a></li>
      <li><a href="">대전/충청</a></li>
      <li><a href="">대구</a></li>
      <li><a href="">부산/울산</a></li>
      <li><a href="">경상</a></li>
      <li><a href="">광주/전라/제주</a></li>
    </ul>
  </div>
</div>
</div>


<div id="d2" style="float: left;">

<div>
<span class="input input--chisato">
		<input class="input__field input__field--chisato" type="text" id="input1" />
		<label class="input__label input__label--chisato" for="input-14" style="padding-top: 5px;">
			<span class="input__label-content input__label-content--chisato" data-content="새로 개관할 극장명">새로 개관할 극장명</span>
		</label>
</span>
</div>

<div>
<span class="input input--chisato">
		<input class="input__field input__field--chisato" type="number" id="input2" value="15441122" />
		<label class="input__label input__label--chisato" for="input2" style="padding-top: 5px;">
			<span class="input__label-content input__label-content--chisato" data-content="극장 전화번호">극장 전화번호</span>
		</label>
</span>
</div>


<!-- 주소 -->
<div> 
<span class="input input--chisato">
		<input class="input__field input__field--chisato input3" type="text" id="sample5_address" placeholder="주소를 검색하세요" readonly="readonly" />
		<label class="input__label input__label--chisato" for="sample5_address" style="padding-top: 5px;">
			<span class="input__label-content input__label-content--chisato" data-content="극장 주소">극장 주소</span>
		</label>
</span>
</div>

<div>
<span class="input input--chisato">
		<input class="input__field input__field--chisato" type="number" id="input4" />
		<label class="input__label input__label--chisato" for="input4" style="padding-top: 5px;">
			<span class="input__label-content input__label-content--chisato" data-content="극장 사진 URL">극장 사진 URL</span>
		</label>
</span>
</div>


<div id="fbtn">
<form action="./adminCinemaInsert" id="frm" method="post">
<input type="button" id="btn" value="추가">
<input type="hidden" id="t1" readonly="readonly" name="cinema_loc"><br>
<input type="hidden" id="t2" readonly="readonly" name="cinema_name"><br>
<input type="hidden" id="t3" readonly="readonly" name="cinema_tel" value="15441122"><br>
<input type="hidden" id="t4" readonly="readonly" name="cinema_add"><br>
<input type="hidden" id="t5" readonly="readonly" name="cinema_image"><br>
</form>

</div>

</div> <!-- d2 -->


<div style="float: left; margin-top: 250px;"> 
<div>
<input type="button" onclick="sample5_execDaumPostcode()" value="주소 검색"><br>
</div>
</div>


<div id="m1">
<div id="map"></div>
</div>




<div id="sec8">
<form action="./adminCinemaInsert" id="frm" method="post">
<input type="hidden" id="t1" readonly="readonly" name="cinema_loc"><br>
<input type="hidden" id="t2" readonly="readonly" name="cinema_name"><br>
<input type="hidden" id="t3" readonly="readonly" name="cinema_tel" value="15441122"><br>
<input type="hidden" id="t4" readonly="readonly" name="cinema_add"><br>
<input type="button" id="btn" value="추가">
</form>
</div>





</div><!-- sec -->
</section>

<footer>
</footer>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c385975a519fabb671122b6c7f825767&libraries=services"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>

    <script>
   		function openNav() {
    	  document.getElementById("mySidenav").style.width = "250px";
    	}
    	function closeNav() {
    	  document.getElementById("mySidenav").style.width = "0";
    	}
    
   	var loc = "";
   	var cname = ""; //영화관명
   	var cadd = ""; //영화관 주소
   	var ctel = ""; //영화관 전화번호
    	
    	
   	console.clear();
    var el = {};
    $('.placeholder').on('click', function (ev) {
      $('.placeholder').css('opacity', '0');
      $('.list__ul').toggle();
    });
     $('.list__ul a').on('click', function (ev) {
       ev.preventDefault();
       var index = $(this).parent().index();
       $('.placeholder').text( $(this).text() ).css('opacity', '1');
       console.log($('.list__ul').find('a').eq(index).html());
       
       loc = $('.list__ul').find('a').eq(index).html();
       $('#t1').val(loc);
       $('#t2').val("");
       $('#input1').val("");
       $('#t3').val("");
       $('#input2').val("15441122");
       $('#t4').val("");
       $('#sample5_address').val("주소를 검색하세요");
       $('#t5').val("");
       $('#input4').val("");
       
       $('.list__ul').find('li').eq(index).prependTo('.list__ul');
       $('.list__ul').toggle();   
       
     });
    $('select').on('change', function (e) {
      // Set text on placeholder hidden element
      $('.placeholder').text(this.value);
      // Animate select width as placeholder
      $(this).animate({width: $('.placeholder').width() + 'px' });
      
    });
    
    /* 주소 */
 var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
            level: 5 // 지도의 확대 레벨
        };
    //지도를 미리 생성
    var map = new daum.maps.Map(mapContainer, mapOption);
    //주소-좌표 변환 객체를 생성
    var geocoder = new daum.maps.services.Geocoder();
    //마커를 미리 생성
    var marker = new daum.maps.Marker({
        position: new daum.maps.LatLng(37.537187, 127.005476),
        map: map
    });
    function sample5_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = data.address; // 최종 주소 변수
				console.log(addr);
				cadd = addr;
				$('#t4').val(cadd);
                
				
                // 주소 정보를 해당 필드에 넣는다.
                document.getElementById("sample5_address").value = addr;
                // 주소로 상세 정보를 검색
                geocoder.addressSearch(data.address, function(results, status) {
                    // 정상적으로 검색이 완료됐으면
                    if (status === daum.maps.services.Status.OK) {
                        var result = results[0]; //첫번째 결과의 값을 활용
                        // 해당 주소에 대한 좌표를 받아서
                        var coords = new daum.maps.LatLng(result.y, result.x);
                        // 지도를 보여준다.
                        mapContainer.style.display = "block";
                        map.relayout();
                        // 지도 중심을 변경한다.
                        map.setCenter(coords);
                        // 마커를 결과값으로 받은 위치로 옮긴다.
                        marker.setPosition(coords)
                    }
                });
            }
        }).open();
    }
    /* 주소끝  */
    
        $('#input1').blur(function() {
 		console.log($(this).val());
 		cname = $(this).val().trim();
 		
 		$('#t2').val(cname); 		
 		 $('#t3').val("");
 	       $('#input2').val("15441122");
 	       $('#t4').val("");
 	       $('#sample5_address').val("주소를 검색하세요");
 	       $('#t5').val("");
 	       $('#input4').val("");
        });
    
        $('#input2').blur(function() {
     		console.log($(this).val());
     		ctel = $(this).val().trim();
     		$('#t3').val(ctel);
     		$('#t4').val("");
     		$('#sample5_address').val("주소를 검색하세요");
            $('#t5').val("");
            $('#input4').val("");
            });
        
    
	   $('#btn').on('click', function() {
		   if($('#t1').val() != "" && $('#t2').val() != "" &&  $('#t3').val() != "" && $('#t4').val() != ""){
		   $('#frm').submit();			   
		   } else {
			alert("정확한 값을 입력하세요.")
		   }
		   
	  	}); 
    
    
    
    </script>



</div>
</body>
</html>