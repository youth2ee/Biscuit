<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Login</title>
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
<div class="mmain"><a href="./myPage_store_res">스토어구매내역</a></div>
<div class="mmain"><a href="./myPage_movie_heart">내가 찜한 영화</a></div>
<div class="mmain"><a href="./myPage_movie_star">내가 준 평점</a></div>
<div class="mmain"><a href="./myPage_cinema">자주가는 영화관</a></div>
<div class="mmain"><a href="./myPage_member_update">회원정보수정</a></div>
</div>
</div>

<div class="mycontext">

<h1>myPage_movie_heart</h1>
<h1>${member.id}</h1>


<div id="heartboxmain">

<c:forEach items="${heartList}" var="heart">
<div class="heartbox">
${heart.movieInfo_title}
<img alt="" src="${heart.movieInfo_poster}">
</div>
</c:forEach>

</div>



</div>

</div>

</div>
</section>

<footer></footer>

<!-- <script type="text/javascript">

	$.ajax({
		data : {
			id:id
		},
		type : "GET",
		url : "./locSelect",
		success : function(data) {
			data = data.trim();
			$('#cinemaNameSelect').html(data);
			
			/* $('.check').addClass('act'); */
			$('.noncheck').addClass('noncheck').addClass('soldout');
	}
		});




</script>

 -->

</body>
</html>