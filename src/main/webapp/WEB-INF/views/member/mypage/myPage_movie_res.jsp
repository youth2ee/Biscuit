<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 그 이상의 감동 CGV</title>
<c:import url="../../layout/jquery.jsp" />
<link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/layout/header.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/member/mypage.css" rel="stylesheet">
<style type="text/css">
a{
	font-family: 'Noto Sans KR', sans-serif;
}
</style>
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
<div class="mmain" style="color: white; background-color: #3b3b3b; padding-top: 10px; padding-bottom: 10px; color: black; padding-left: 10px;"><a href="./myPage_movie_res" style="color: white;" >예매내역</a></div>
<div class="mmain"><a href="./myPage_movie_heart">내가 찜한 영화</a></div>
<div class="mmain"><a href="./myPage_movie_star">내가 준 평점</a></div>
<div class="mmain"><a href="./myPage_member_update">회원정보수정</a></div>
</div>
</div>

<div class="mycontext">


<div id="tboxmain" style="margin-top: 70px; width: 1200px;">

<c:forEach items="${newestVOs}" var="newestVO">
<div class="tbox"><div class="tbox_text">최신 예매내역</div>
<div class="newestBookPoster" >
			<img alt="" src="${newestVO.movieInfo_poster}">
		</div>
		<div class="newestBookInfo" style="margin-left: 55px;">
			<span>${newestVO.movieInfo_title}<br></span>
			<span>CGV ${newestVO.cinema_name}점 </span>
			<span>${newestVO.theater_name}관<br></span>
			<span>${newestVO.book_date}<!-- 이거 예매한 날짜 말고 상영 날짜로 바꿔야함 (디비손봐야함) --><br></span>
			<span>${newestVO.timeInfo_start}<br><br></span>
		</div>
</div>
 </c:forEach>


</div>

</div>

</div>

</div>
</section>

<footer></footer>

</body>
</html>