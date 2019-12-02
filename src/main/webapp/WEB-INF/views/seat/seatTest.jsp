<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
input[type="checkbox"] { /* 실제 체크박스는 화면에서 숨김 */
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0
}

.bookable { /*예매가능*/
	width: 25px;
	height: 25px;
	text-align: center;
	background-color: salmon;
	font-size: 14px;
}

.booking { /*선택한자리*/
	width: 25px;
	height: 25px;
	text-align: center;
	background-color: yellow;
	font-size: 14px;
}

.booked { /*예매불가*/
	width: 25px;
	height: 25px;
	text-align: center;
	background-color: aqua;
	font-size: 14px;
}

.over {
	background: blue;
}
</style>
</head>
<body>
	<h2>Test</h2>
	<div id="Select">
		<h3>성인 관람객 수 선택</h3>
		<c:forEach begin="1" end="5" var="i">
			<label for="adult${i}"><input type="radio" name="adult"
				id="adult${i}" onchange="setDisplay()" value="${i}">${i}</label>
		</c:forEach>
		<h3>미성년자 관람객 수 선택</h3>
		<c:forEach begin="1" end="5" var="i">
			<label for="kid${i}"><input type="radio" name="kid"
				id="kid${i}" onchange="setDisplay()" value="${i}">${i}</label>
		</c:forEach>
	</div>
	<input type="text" id="count" name="peopleCount">
	<input type="text" id="seatCount">
	<div id="seatSelect">
		<h3>좌석 선택</h3>
		<table style="border: 1px;">
			<c:forEach begin="1" end="6" var="i">
				<tr>
					<td><c:if test="${i eq 1}">
							<c:set value="A" var="test"></c:set>
						</c:if> <c:if test="${i eq 2}">
							<c:set value="B" var="test"></c:set>
						</c:if> <c:if test="${i eq 3}">
							<c:set value="C" var="test"></c:set>
						</c:if> <c:if test="${i eq 4}">
							<c:set value="D" var="test"></c:set>
						</c:if> <c:if test="${i eq 5}">
							<c:set value="E" var="test"></c:set>
						</c:if> <c:if test="${i eq 6}">
							<c:set value="F" var="test"></c:set>
						</c:if> ${test}</td>
					<c:forEach begin="1" end="15" var="j">
						<td class="bookable"><label for="seat${(i-1)*15 + j}"><input
								type="checkBox" class="seat" name="${test}${j}"
								id="seat${(i-1)*15 + j}" value="${test}${j}">${j}</label></td>
						<c:if test="${j eq 5}">
							<td><p>test</p></td>
						</c:if>
						<c:if test="${j eq 10}">
							<td><p>test</p></td>
						</c:if>
					</c:forEach>
				</tr>
			</c:forEach>
		</table>
	</div>
	<button id="btn">check</button>
	<script type="text/javascript">
		var seatCount = 0; // 선택 좌석 수
		$("#seatSelect").hide();
		$(function() { // 구매가능한 좌석만 호버
			$('td').mouseover(function() {
				if (this.className == 'bookable')
					$(this).addClass('over');
			});
			$('.bookable').mouseout(function() {
				$(this).removeClass('over');
			});

		});
		$("input:checkbox[class='seat']").change(
						function() { // 선택 좌석 취소 시 경고창
							var countAdult = $('input[name="adult"]:checked')
									.val();
							if (countAdult == null)
								countAdult = 0;
							countAdult = Number(countAdult);
							var countKid = $('input[name="kid"]:checked').val();
							if (countKid == null)
								countKid = 0;
							countKid = Number(countKid);

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
							if ($("input:checkbox[class='seat']:checked").length == countAdult
									+ countKid) {
								$("input:checkbox[class='seat']").not(
										":checked").parents("td").attr('class',
										'booked');
							} else if ($("input:checkbox[class='seat']:checked").length < countAdult
									+ countKid) {
								$("input:checkbox[class='seat']").not(
										":checked").parents("td").attr('class',
										'bookable');
							} else if ($("input:checkbox[class='seat']:checked").length > countAdult
									+ countKid) {
								// 인원수 보다 많은 좌석 선택시 좌석 취소 요청
								alert('이미 선택하신 좌석을 취소하고 선택해주십시오.');
								$(this).parents("td").attr('class', 'booked');
								this.checked = false;
							}
							$("#seatCount").val($("input:checkbox[class='seat']:checked").length);
						});

		function setDisplay() {
			if ($('input:radio[name=adult]').is(':checked')
					|| $('input:radio[name=kid]').is(':checked')) {
				$("#seatSelect").show();
			}
			var countAdult = $('input[name="adult"]:checked').val();
			if (countAdult == null)
				countAdult = 0;
			countAdult = Number(countAdult);
			var countKid = $('input[name="kid"]:checked').val();
			if (countKid == null)
				countKid = 0;
			countKid = Number(countKid);
			$("#count").val(countAdult + countKid);
		}

		$("#btn")
				.click(
						function() {
							var adultCount = 0; // 성인 관객 수
							var kidCount = 0; // 아이 관객 수
							var peopleCount = 0 // 성인 + 아이 관객 수
							var seatCount = 0 // 좌석 정보를 담는 배열의 크기
							var seatNum = new Array(); // 선택 된 좌석 번호를 담는 배열

							var seatLength = $("input:checkbox[class='seat']:checked").length // 선택된 좌석의 개수
							$("#seatCount").val(seatLength);

							for (var i = 1; i < 6; i++) {
								if ($("input:radio[id=adult" + i + "]").is(
										":checked") == true) {
									adultCount = i; // 성인 관객 수 계산
									alert("성인 관객 수 : " + adultCount);
								}
								if ($("input:radio[id=kid" + i + "]").is(
										":checked") == true) {
									kidCount = i; // 아이 관객 수 계산
									alert("아이 관객 수 : " + kidCount);
								}
							}

							peopleCount = adultCount + kidCount; // 관객 수 계산

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
											"input:checkbox[id=seat"
													+ seatNum[i] + "]").attr(
											'disabled', true);
								}
								var pay = kidCount * 8000 + adultCount * 10000;
								alert("금액 : " + pay + "원");
								alert("좌석 선택 완료");

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