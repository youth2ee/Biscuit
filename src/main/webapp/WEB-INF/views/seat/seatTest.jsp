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
</head>
<body>
	<h2>Test</h2>
	<div id="Select">
	<h3>성인 관람객 수 선택</h3>
		<c:forEach begin="1" end="5" var="i">
					<label for="adult${i}"><input type="radio" name="adult" id="adult${i}" onchange="setDisplay()" value="${i}">${i}</label>
		</c:forEach>
	<h3>미성년자 관람객 수 선택</h3>
		<c:forEach begin="1" end="5" var="i">
					<label for="kid${i}"><input type="radio" name="kid" id="kid${i}" onchange="setDisplay()" value="${i}">${i}</label>
		</c:forEach> 
	</div>
	<input type="text" id="count">
	<input type="text" id="seatCount">
	<div id="seatSelect">
		<h3>좌석 선택</h3>
		<table>
			<c:forEach begin="1" end="5" var="i">
				<tr>
					<td><c:if test="${i eq 1}">
							<td>A</td>
						</c:if> <c:if test="${i eq 2}">
							<td>B</td>
						</c:if> <c:if test="${i eq 3}">
							<td>C</td>
						</c:if> <c:if test="${i eq 4}">
							<td>D</td>
						</c:if> <c:if test="${i eq 5}">
							<td>E</td>
						</c:if> <c:if test="${i eq 6}">
							<td>F</td>
						</c:if></td>
					<c:forEach begin="1" end="15" var="j">
						<td><label for="seat${(i-1)*15 + j}"><input type="checkBox" name="seat" id="seat${(i-1)*15 + j}" >${j}</label></td>
					</c:forEach>
				</tr>
			</c:forEach>
		</table> 
	</div>
	<button id="btn">check</button>
	<script type="text/javascript">
		var seatCount = 0; // 선택 좌석 수
		$("#seatSelect").hide();
		function setDisplay() {
			if($('input:radio[name=adult]').is(':checked') ||$('input:radio[name=kid]').is(':checked')){
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
			$("#count").val(countAdult+countKid);
		}
		
		$("#btn").click(function() {
			var adultCount = 0; // 성인 관객 수
			var kidCount = 0; // 아이 관객 수
			var peopleCount = 0 // 성인 + 아이 관객 수
			var seatCount = 0 // 좌석 정보를 담는 배열의 크기
			var seatNum = new Array(); // 선택 된 좌석 번호를 담는 배열
			var seatLength = $("input:checkbox[name='seat']:checked").length // 선택된 좌석의 개수
			$("#seatCount").val(seatLength);
			
			for (var i = 1; i < 6 ; i++){
				if($("input:radio[id=adult"+i+"]").is(":checked") == true){
						adultCount = i; // 성인 관객 수 계산
					alert("성인 관객 수 : "+adultCount);
				}
				if($("input:radio[id=kid"+i+"]").is(":checked") == true){
					kidCount = i; // 아이 관객 수 계산
					alert("아이 관객 수 : "+kidCount);
				}
			}
			
			peopleCount = adultCount + kidCount; // 관객 수 계산
			
			for (var i = 1; i < $("input:checkbox[name='seat']").length + 1; i++) {
				if ($("input:checkbox[id=seat"+i+"]").is(":checked") == true) {  
					seatNum[seatCount] = i; // 선택된 좌석의 번호를 넣음  
					seatCount++;// 좌석이 선택 되어 있을 경우 seatCount 수 증가
				}
			}
			if(seatLength == peopleCount && peopleCount != 0){ // 관객 수와 선택 좌석 수가 같을 경우 (예매 가능)
				for (var i = 0; i <seatCount; i++) {
					$("input:checkbox[id=seat"+seatNum[i]+"]").attr('disabled', true);
				}
					var pay = kidCount*8000+adultCount*10000;
					alert("금액 : "+pay+"원");
					alert("좌석 선택 완료");
					
			} else if(seatLength > peopleCount) { // 선택 좌석 수가 관객 수 보다 많을 경우
				alert("인원 수 보다 좌석 수가 더 많습니다.");
			} else if(seatLength < peopleCount) { // 선택 좌석 수가 관객 수 보다 적을 경우
				alert("좌석 수 보다 인원 수가 더 많습니다."); 
			} else if (seatLength == 0 && peopleCount != 0){ // 좌석을 선택하지 않은 경우
				alert("좌석을 선택 하세요.")
			} else if (peopleCount == 0) {
				alert("관객 수를 선택 하세요.")
			}
			

		});
	</script>
</body>
</html>