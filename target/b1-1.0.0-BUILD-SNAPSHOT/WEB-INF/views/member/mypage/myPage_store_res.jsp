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
<div class="mmain" style="background-color: #3b3b3b; padding-top: 10px; padding-bottom: 10px; color: black; padding-left: 10px;"><a  style="color: white;" href="./myPage_store_res">스토어구매내역</a></div>
<div class="mmain"><a href="./myPage_movie_heart">내가 찜한 영화</a></div>
<div class="mmain"><a href="./myPage_movie_star">내가 준 평점</a></div>
<div class="mmain"><a href="./myPage_member_update">회원정보수정</a></div>
</div>
</div>

<div class="mycontext">

<h1>MyPage - 스토어 구매내역</h1>


<div id="tboxmain">

<div class="tbox">최신 구매내역</div>







</div>

</div>

</div>

</div>
</section>

<footer></footer>


</body>
</html>