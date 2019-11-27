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
	<div id="peopleSelect">
	<h3>성인 관람객 수 선택</h3>
		<c:forEach begin="1" end="5" var="i">
					<input type="radio" name="people" id="people${i}" onchange="setDisplay()">${i}
		</c:forEach>
	<%-- <h3>미성년자 관람객 수 선택</h3>
		<c:forEach begin="1" end="5" var="i">
					<input type="radio" name="kids" id="kids${i}" onchange="setDisplay()">${i}
		</c:forEach> --%>
	</div>
	<div id="seatSelect">
		<h3>좌석 선택</h3>
		<table>
			<c:forEach begin="1" end="5" var="i">
				<tr>
					<c:forEach begin="1" end="10" var="j">
						<td><input type="checkBox" name="seat" id="seat${(i-1)*10 + j}">${(i-1)*10 + j}</td>
					</c:forEach>
				</tr>
			</c:forEach>
		</table> 
	</div>
	<button id="btn">check</button>
	<script type="text/javascript">
		$("#seatSelect").hide();
		function setDisplay() {
			if($('input:radio[name=people]').is(':checked')){
				$("#seatSelect").show();
			}
		}
		$("#btn").click(function() {
			var peopleCount = 0; // 관객 수 
			var seatCount = 0; // 선택 좌석 수
			var seatNum = new Array(); // 선택 된 좌석 번호를 담는 배열
			
			
			for (var i = 1; i < 6 ; i++)
			if($("input:radio[id=people"+i+"]").is(":checked") == true){
				peopleCount = i; // 관객 수 계산
			}
			for (var i = 1; i < 51; i++) {
				if ($("input:checkbox[id=seat"+i+"]").is(":checked") == true ) {  
					seatNum[seatCount] = i; // 선택된 좌석의 번호를 넣음  
					seatCount++;// 좌석이 선택 되어 있을 경우 seatCount 수 증가
				}
			}
			if(seatCount == peopleCount){ // 관객 수와 선택 좌석 수가 같을 경우 (예매 가능)
				for (var i = 0; i < seatNum.length; i++) {
					$("input:checkbox[id=seat"+seatNum[i]+"]").attr('disabled', true);
				}
					alert("예매 완료");
					
			} else if(seatCount > peopleCount) { // 선택 좌석 수가 관객 수 보다 많을 경우
				alert("인원 수 보다 좌석 수가 더 많습니다.");
			} else if(seatCount < peopleCount) { // 선택 좌석 수가 관객 수 보다 적을 경우
				alert("좌석 수 보다 인원 수가 더 많습니다."); 
			} else if (seatCount == 0){ // 좌석을 선택하지 않은 경우
				alert("좌석을 선택 하세요.")
			} else if (peopleCount == 0) {
				alert("관객 수를 선택 하세요.")
			}
			

		});
	</script>
</body>
</html>