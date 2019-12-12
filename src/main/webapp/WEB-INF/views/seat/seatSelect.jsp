<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>


<c:import url="../layout/jquery.jsp" />
<link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/layout/header.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/seat/seatSelect.css" rel="stylesheet">

<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

<header>
<c:import url="../layout/header.jsp"></c:import>
</header>

<section> 
<div id="sec"> 
	<div id="hole"></div>
	<form action="./seatSelect" method="post" id="frm">
	
	<div id="title">
<%-- 	<c:forEach items="${seats}" var="seats">
		${seats.seat_name}
	</c:forEach> --%>
	
		인원/좌석 선택
		
	</div>
	<div id="Select_wrap">
		<div id="Select">
		<div id="st1"></div>
			<div class="selectInnerWrap">
				<div class="selecter1">
					<h3>성인</h3>
					<div class="radio-group">
					<c:forEach begin="0" end="5" var="i">
						<input type="radio" name="adult" id="adult${i}" onchange="setDisplay()" value="${i}"><label for="adult${i}">${i}</label>
					</c:forEach>
					</div>
				</div>
				
				<div class="selecter2">
					<h3>청소년</h3>
					<div class="radio-group">
					<c:forEach begin="0" end="5" var="i">
						
						<input type="radio" name="teen" id="teen${i}" onchange="setDisplay()" value="${i}"><label for="teen${i}">${i}</label>
					</c:forEach>
					</div>
				</div>
		</div>
	</div>
	<div id="seatSelect">
		<div id="st2"><img alt="" src="../resources/images/seat/ss2.png"></div>
		<strong id = "screen">Screen</strong>
		<table>
			<c:forEach begin="1" end="13" var="i">
				<tr>
					<td><c:if test="${i eq 1}">
							<c:set value="A" var="seatInit"></c:set>
						</c:if> <c:if test="${i eq 2}">
							<c:set value="B" var="seatInit"></c:set>
						</c:if> <c:if test="${i eq 3}">
							<c:set value="C" var="seatInit"></c:set>
						</c:if> <c:if test="${i eq 4}">
							<c:set value="D" var="seatInit"></c:set>
						</c:if> <c:if test="${i eq 5}">
							<c:set value="E" var="seatInit"></c:set>
						</c:if> <c:if test="${i eq 6}">
							<c:set value="F" var="seatInit"></c:set>
						</c:if><c:if test="${i eq 7}">
							<c:set value="G" var="seatInit"></c:set>
						</c:if><c:if test="${i eq 8}">
							<c:set value="H" var="seatInit"></c:set>
						</c:if><c:if test="${i eq 9}">
							<c:set value="I" var="seatInit"></c:set>
						</c:if><c:if test="${i eq 10}">
							<c:set value="J" var="seatInit"></c:set>
						</c:if><c:if test="${i eq 11}">
							<c:set value="K" var="seatInit"></c:set>
						</c:if><c:if test="${i eq 12}">
							<c:set value="L" var="seatInit"></c:set>
						</c:if><c:if test="${i eq 13}">
							<c:set value="M" var="seatInit"></c:set>
						</c:if>${seatInit}</td>
					<c:forEach begin="1" end="15" var="j">
						<td class="bookable"><label for="seat${(i-1)*15 + j}">
						<input type="checkBox" class="seat" name="${seatInit}${j}"id="seat${(i-1)*15 + j}" value="${seatInit}${j}">&nbsp${j}&nbsp</label></td>
						 <c:if test="${j eq 4}">
							<td> </td>
						</c:if>
						<c:if test="${j eq 11}">
							<td> </td>
						</c:if>
					</c:forEach>
				</tr>
			</c:forEach>
		</table>
	</div>
	<div id="right-wrap">
		<img alt="" id="poster" src="../resources/images/seat/frozen.jpg">
		<h4>영화제목 : ${movieInfo_name} </h4>
		<h4>영화관 : ${cinema_loc} ${cinema_name} </h4>
		<h4>시작 시간 : ${timeInfo_start}</h4>
		<div class="price_wrap"> 
			<input type="text" id="price" name="price" readonly="readonly">원
		</div>
		<div id="btnSelect">
	</div>
	<div id="next_button">
	<!-- <input type="button" id="btn" value="check"> -->
		<a href="#" style="color: white" id="btn">결제하기<!-- <img id="btn" alt="" src="../resources/images/seat/seatm.png"> -->
		</a>
	</div>
	</div>
	<input type="text" id="movieInfo_name" name="movieInfo_name" value="${movieInfo_name}">
	<input type="text" id="cinema_num" name="cinema_num" value="${cinema_num}">
	<input type="text" id="cinema_loc" name="cinema_loc" value="${cinema_loc}">
	<input type="text" id="cinema_name" name="cinema_name" value="${cinema_name}">
	<input type="text" id="timeInfo_start" name="timeInfo_start" value="${timeInfo_start}">
	<input type="text" id="movieInfo_num" name="movieInfo_num" value="${movieInfo_num}">
	<input type="text" id="theater_num" name="theater_num" value="${theater_num}">
	<input type="text" id="seat_name" name="seat_name">
	<input type="text" id="count" name="count">
	<input type="text" id="seatCount" name="seatCount">
	<input type="text" id="price" name="price">
	

	</div>
	
	</form>
	
</div>
</section>


<!-- footer -->
<footer></footer>
	
	
	
	
	<script type="text/javascript">
		var seatCount = 0; // 선택 좌석 수
		/* $("#seatSelect").hide(); */
		
		var list = [];
		<c:forEach items="${seats}" var="seat">
		list.push("${seat.seat_name}");
		</c:forEach>
		
		for(var i = 0; i < list.length; i++){ // 이미 예매된 좌석 선택 불가
			for(var j = 1; j < $("input:checkbox[class='seat']").length; j++){
				if(list[i] == $("input:checkbox[id='seat"+j+"']").val()){
					$("input:checkbox[id='seat"+j+"']").parents("td").attr("class","booked");
					$("input:checkbox[id='seat"+j+"']").attr('disabled', true);
				}
			}
		}
		$(function() { // 구매가능한 좌석만 호버
			$('td').mouseover(function() {
				if (this.className == 'bookable')
					$(this).addClass('over');
			});
			$('.bookable').mouseout(function() {
				$(this).removeClass('over');
			});
		});
		
		$("input:checkbox[class='seat']").change(function() { // 선택 좌석 취소 시 경고창
				var seat_name = "";
				for(var i = 0; i < $("input:checkbox[class='seat']").length; i++){
					if ($("input:checkbox[id=seat" + i + "]").is(":checked") == true) {
						seat_name = seat_name + $("input:checkbox[id=seat" + i + "]").val();
						$("#seat_name").val(seat_name);
						if($("input:checkbox[class='seat']:checked").length > 1){ // 복수 선택시 , 추가 (Controller에서 ,기준으로 자름)
								seat_name = seat_name + ",";
							}
						if ($("input:checkbox[class='seat']:checked").length > 0){
							var adultCount = 0; // 성인 관객 수
							var teenCount = 0; // 아이 관객 수
								for(var j = 0; j < 6; j++){
									if ($("input:radio[id=adult" + j + "]").is(":checked") == true) {
										adultCount = j; // 성인 관객 수 계산
									}
									if ($("input:radio[id=teen" + j + "]").is(":checked") == true) {
										teenCount = j; // 아이 관객 수 계산
									}
								}
								var pay = teenCount * 8000 + adultCount * 10000;
								$("#price").val(pay);
							}  
						}
					}
				if($("input:checkbox[class='seat']:checked").length == 0)
					$("#seat_name").val('');
				var countAdult = $('input[name="adult"]:checked').val();
				if (countAdult == null)
					countAdult = 0;
				countAdult = Number(countAdult);
				var countteen = $('input[name="teen"]:checked').val();
				if (countteen == null)
						countteen = 0;
				countteen = Number(countteen);
				if (this.checked == false) { // 체크 해제 했을 경우
					var cancel = confirm(this.value + "의 좌석 취소");
					if (cancel == true) {// 예 선택시 체크 해제
						$(this).parents("td").attr('class','bookable');
					} else { // 아니오 선택시 체크박스에 다시 체크
						this.checked = true;
						$(this).parents("td").attr('class','booking');
					}
				} else { // 체크했을경우
						$(this).parents("td").attr('class', 'booking');
					}
				if ($("input:checkbox[class='seat']:checked").length == countAdult+countteen) {
					$("input:checkbox[class='seat']").not(":checked").parents("td").attr('class','bookend');
					$("input:checkbox[class='seat']").not(":enabled").parents("td").attr('class','booked');
					} else if ($("input:checkbox[class='seat']:checked").length < countAdult + countteen) {
						$("input:checkbox[class='seat']").not(":checked").parents("td").attr('class','bookable');
						$("input:checkbox[class='seat']").not(":enabled").parents("td").attr('class','booked');
						} else if (countAdult+countteen != 0 && $("input:checkbox[class='seat']:checked").length > countAdult+ countteen) {
							// 인원수 보다 많은 좌석 선택시 좌석 취소 요청
							alert('이미 선택하신 좌석을 취소하고 선택해주십시오.');
							$(this).parents("td").attr('class', 'bookend');
							this.checked = false;
						} else if (countAdult+countteen == 0){
							alert('관객 수를 선택 하세요.');
							$(this).parents("td").attr('class', 'bookable');
							this.checked = false;
						}
							$("#seatCount").val($("input:checkbox[class='seat']:checked").length);
						});
		function setDisplay() { // 인원 수 변경시
			if ($('input:radio[name=adult]').is(':checked')
					|| $('input:radio[name=teen]').is(':checked')) {
				$("#seatSelect").show();
			}
			var countAdult = $('input[name="adult"]:checked').val();
			if (countAdult == null)
				countAdult = 0;
			countAdult = Number(countAdult);
			var countteen = $('input[name="teen"]:checked').val();
			if (countteen == null)
				countteen = 0;
			countteen = Number(countteen);
			$("#count").val(countAdult + countteen);
			if($("input:checkbox[class='seat']:checked").is(":checked") == true){ // 체크한 좌석 모두 해제
				$("input:checkbox[class='seat']:checked").parents("td").attr('class','bookable');
				$(".bookend").attr('class','bookable');
				$("input:checkbox[class='seat']:checked").prop("checked",false);
			}
		}	
		$("#btn").click(function() {
							var adultCount = 0; // 성인 관객 수
							var teenCount = 0; // 아이 관객 수
							var peopleCount = 0 // 성인 + 아이 관객 수
							var seatCount = 0 // 좌석 정보를 담는 배열의 크기
							var seatNum = new Array(); // 선택 된 좌석 번호를 담는 배열
							var seatLength = $("input:checkbox[class='seat']:checked").length // 선택된 좌석의 개수
							$("#seatCount").val(seatLength);
							for (var i = 1; i < 6; i++) {
								if ($("input:radio[id=adult" + i + "]").is(
										":checked") == true) {
									adultCount = i; // 성인 관객 수 계산
									//alert("성인 관객 수 : " + adultCount);
								}
								if ($("input:radio[id=teen" + i + "]").is(
										":checked") == true) {
									teenCount = i; // 아이 관객 수 계산
									//alert("아이 관객 수 : " + teenCount);
								}
							}
							peopleCount = adultCount + teenCount; // 관객 수 계산
							for (var i = 1; i < $("input:checkbox[class='seat']").length + 1; i++) {
								if ($("input:checkbox[id=seat" + i + "]").is(
										":checked") == true) {
									seatNum[seatCount] = i; // 선택된 좌석의 번호를 넣음  
									seatCount++;// 좌석이 선택 되어 있을 경우 seatCount 수 증가
								}
							}
							if (seatLength == peopleCount && peopleCount != 0) { // 관객 수와 선택 좌석 수가 같을 경우 (예매 가능)
								for (var i = 0; i < seatCount; i++) {
									$(
										"input:checkbox[id=seat"+ seatNum[i] + "]").attr('disabled', true);
								}
								var pay = teenCount * 8000 + adultCount * 10000;
								$("#price").val(pay);
								alert("금액 : " + pay + "원");
								//alert("좌석 선택 완료");
								$("#frm").submit();
							} else if (seatLength > peopleCount) { // 선택 좌석 수가 관객 수 보다 많을 경우
								alert("인원 수 보다 좌석 수가 더 많습니다.");
							} else if (seatLength < peopleCount) { // 선택 좌석 수가 관객 수 보다 적을 경우
								alert("좌석 수 보다 인원 수가 더 많습니다.");
							} else if (seatLength == 0 && peopleCount != 0) { // 좌석을 선택하지 않은 경우
								alert("좌석을 선택 하세요.")
							} else if (peopleCount == 0) {
								alert("관객 수를 선택 하세요.")
							}
						});
	</script>
</body>
</html>