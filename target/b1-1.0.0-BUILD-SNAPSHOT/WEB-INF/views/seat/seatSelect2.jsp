<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>


<c:import url="../layout/jquery.jsp" />
<link href="${pageContext.request.contextPath}/resources/css/reset.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/layout/header.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/seat/seatSelect.css"
	rel="stylesheet">

<meta charset="UTF-8">
<title>영화 그 이상의 감동 CGV</title>

</head>
<body>

	<header>
		<c:import url="../layout/header.jsp"></c:import>
	</header>

	<section>
		<div id="sec">
			<div id="hole"></div>
			<form action="./seatSelect2" method="post" id="frm">

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
										<input type="radio" name="adult" id="adult${i}"
											onchange="setDisplay()" value="${i}">
										<label for="adult${i}">${i}</label>
									</c:forEach>
								</div>
							</div>

							<div class="selecter2">
								<h3>청소년</h3>
								<div class="radio-group">
									<c:forEach begin="0" end="5" var="i">

										<input type="radio" name="teen" id="teen${i}"
											onchange="setDisplay()" value="${i}">
										<label for="teen${i}">${i}</label>
									</c:forEach>
								</div>
							</div>
							<input type="checkbox" style="width: 30px; height: 30px;"
								id="allClick">
						</div>
					</div>
					<div id="seatSelect">
						<div id="st2">
							<img alt="" src="../resources/images/seat/ss2.png">
						</div>
						<strong id="screen">Screen</strong>
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
										</c:if> <c:if test="${i eq 7}">
											<c:set value="G" var="seatInit"></c:set>
										</c:if> <c:if test="${i eq 8}">
											<c:set value="H" var="seatInit"></c:set>
										</c:if> <c:if test="${i eq 9}">
											<c:set value="I" var="seatInit"></c:set>
										</c:if> <c:if test="${i eq 10}">
											<c:set value="J" var="seatInit"></c:set>
										</c:if> <c:if test="${i eq 11}">
											<c:set value="K" var="seatInit"></c:set>
										</c:if> <c:if test="${i eq 12}">
											<c:set value="L" var="seatInit"></c:set>
										</c:if> <c:if test="${i eq 13}">
											<c:set value="M" var="seatInit"></c:set>
										</c:if>${seatInit}</td>
									<c:forEach begin="1" end="15" var="j">
										<td class="bookable"><label for="seat${(i-1)*15 + j}">
												<input type="checkBox" class="seat" name="${seatInit}${j}"
												id="seat${(i-1)*15 + j}" value="${seatInit}${j}">&nbsp${j}&nbsp
										</label></td>
										<c:if test="${j eq 4}">
											<td></td>
										</c:if>
										<c:if test="${j eq 11}">
											<td></td>
										</c:if>
									</c:forEach>
								</tr>
							</c:forEach>
						</table>
					</div>
					<div id="right-wrap">
						<img alt="" id="poster" src="${poster}">
						<h4>영화제목 : ${movieInfo_name}</h4>
						<h4>영화관 : ${cinema_loc} ${cinema_name}</h4>
						<h4>시작 시간 : ${timeInfo_start}</h4>
						<div class="price_wrap">
							<input type="text" id="price" name="price" readonly="readonly">원
						</div>
						<div id="btnSelect"></div>
						<div id="next_button">
							<!-- <input type="button" id="btn" value="check"> -->
							<a href="#" style="color: white" id="btn">결제하기<!-- <img id="btn" alt="" src="../resources/images/seat/seatm.png"> -->
							</a>
						</div>
					</div>
					<input type="hidden" id="movieInfo_name" name="movieInfo_name"
						value="${movieInfo_name}"> <input type="hidden"
						id="cinema_num" name="cinema_num" value="${cinema_num}"> <input
						type="hidden" id="cinema_loc" name="cinema_loc"
						value="${cinema_loc}"> <input type="hidden"
						id="cinema_name" name="cinema_name" value="${cinema_name}">
					<input type="hidden" id="timeInfo_start" name="timeInfo_start"
						value="${timeInfo_start}"> <input type="hidden"
						id="timeInfo_date" name="timeInfo_date" value="${timeInfo_date}">
					<input type="hidden" id="movieInfo_num" name="movieInfo_num"
						value="${movieInfo_num}"> <input type="hidden"
						id="theater_num" name="theater_num" value="${theater_num}">
					<input type="text" id="seat_name" name="seat_name">
				</div>

			</form>

		</div>
	</section>


	<!-- footer -->
	<footer></footer>




	<script type="text/javascript">
		$("#allClick").click(function() {
			$(".seat").prop("checked",true);
			$(".seat").change(function() { // 선택 좌석 취소 시 경고창
				alert('test');
				var seat_name = "";
				for(var i = 0; i < $("input:checkbox[class='seat']").length; i++){
					if ($("input:checkbox[id=seat" + i + "]").is(":checked") == true) {
						seat_name = seat_name + $("input:checkbox[id=seat" + i + "]").val();
						$("#seat_name").val(seat_name);
						if($("input:checkbox[class='seat']:checked").length > 1){ // 복수 선택시 , 추가 (Controller에서 ,기준으로 자름)
								seat_name = seat_name + ",";
							}
						}
					}
				if($("input:checkbox[class='seat']:checked").length == 0)
					$("#seat_name").val('');
				});
		});
		
		$("#next_button").click(function() {
			$("#frm").submit()
		});
	</script>
</body>
</html>