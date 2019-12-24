<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 그 이상의 감동 CGV</title>
<c:import url="../../layout/jquery.jsp" />
<%-- <c:import url="../layout/bootStrap.jsp" /> --%>
<link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/layout/header.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/member/mypage.css" rel="stylesheet">

</head>
<body>

<header>
<c:import url="../../layout/header.jsp" />
</header>

<section>
<div class="mypagewrap"> 

<div id="test">

<div class="mymenu">
<div class="menutitle">
<a href="./myPage"><img alt="" src="../../resources/images/mypage/mypage.png"></a>
</div>

<div class="menumain"> 
<div class="mmain"><a href="./myPage_movie_res">예매내역</a></div>
<div class="mmain"><a href="./myPage_movie_heart">내가 찜한 영화</a></div>
<div class="mmain"><a href="./myPage_movie_star">내가 준 평점</a></div>
<div class="mmain"><a href="./myPage_member_update">회원정보수정</a></div>
</div>
</div>

<div class="mycontext">
<div id="bricks" style="background-image: url('../../resources/images/cinema/bricks.jpg');" >

<div id="binfoimg" style="background-image: url('../../resources/images/mypage/mycgv_info.gif'); float: left;"> 
<div id="binfolevel"> 
<div style="font-size: 20px; font-weight: bolder;">${member.name}님</div>
<div>고객님의 등급은 <span style="color: blue; font-weight: bold;">${member.grade}</span>입니다.</div>
</div>
<span style="position: absolute; margin-left: 40px; margin-top: 20px;">현재 포인트는 <span style="color: blue; font-weight: bold;">${member.grade_point}</span>점 입니다.</span>
</div>

<div style="float: left;">
<img id="pacoimg" alt="" src="../../resources/images/mypage/w3.png">
</div>
</div>


<div id="tboxmain">

<div class="tbox"><div class="tbox_text">최신 예매내역</div>
	<div class = "newestBookWrap">
<c:if test="${!empty newestBook}">
		<div class="newestBookPoster" >
			<img alt="" src="${newestBook.movieInfo_poster}">
		</div>
		<div class="newestBookInfo">
		<input type="hidden" name="bookCheck" id="bookCheck">
			<span>${newestBook.movieInfo_title}<br></span>
			<span>CGV ${newestBook.cinema_name}점 </span>
			<span>${newestBook.theater_name}관<br></span>
			<span>${newestBook.book_date}<!-- 이거 예매한 날짜 말고 상영 날짜로 바꿔야함 (디비손봐야함) --><br></span>
			<span>${newestBook.timeInfo_start}<br><br></span>
			<span class="canceled"></span>
			<%-- <!-- 상영 일자가 오늘 날짜 이후일 경우 별점주러가기로, 이전일경우 예매취소로 바꾸기 (날짜비교 쉬움)-->
			<c:if test="${isCancel eq 0 && compare eq 0}">
				<button><span id="bookCancle">예매 취소<span></button>
			</c:if>
			<c:if test="${isCancel eq 0 && compare eq 1}">
				<button><span id="goToStar">별점 주기<span></button>
			</c:if> --%>
		</div>
	</c:if>
	<c:if test="${empty newestBook}">
		<div>예매하신 내역이 없습니다.</div>
	</c:if>
	</div>
</div>
<!-- <div class="tbox">최신 구매내역</div>
<div class="tbox">위시리스트</div>
 -->

</div>

</div>

</div>

</div>
</section>

<footer></footer>


<script type="text/javascript">
	$("#bookCancle").click(function() {
		/* 폼태그로 넘길 것인지 상담 해 봐야 함  
			폼태그로 넘길 시에는 버튼 클릭시 action 변경 되도록 구현
		*/
		var check = confirm('정말로 취소하겠습니까?');
		if(check){
			
		}
	});
	$("#goToStar").click(function(){
		location.href="../../movie/movieList";
	});

</script>
</body>
</html>