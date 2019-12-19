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

<h1>myPage_member_update</h1>

<div id="tboxmain">

<div class="container">
	
		<form action="#">
			<div class="form-group">
				<label for="id">Id:</label> 
				<input type="text" class="form-control" id="id" name="id" value="${member.id}" readonly="readonly">
			</div>

			<div class="form-group">
				<label for="pw">Password:</label> 
				<input type="password" class="form-control" id="pw" name="pw">
			</div>

			<div class="form-group">
				<label for="name">Name:</label> 
				<input type="text" class="form-control" id="name" name="name" value="${member.name}" readonly="readonly">
			</div>

			<div class="form-group">
				<label for="email">Email:</label> 
				<input type="text" class="form-control" id="email" name="email" value="${member.email}" readonly="readonly">
			</div>

			<div class="form-group">
				<label for="birth">Birth:</label> 
				<input type="text" class="form-control" id="birth" name="birth" value="${member.birth}" readonly="readonly">
			</div>

			<div class="form-group">
				<label for="gender">Gender: </label> 
				<input type="text" class="form-control" id="gender" name="gender" value="${member.gender}" readonly="readonly">
			</div>
			
			<div style="padding: 15px 0;">
				<input type="button" id="del" class="btn btn-default" value="회원탈퇴">
				<input type="button" id="up" class="btn btn-default" value="회원정보 수정">
			</div>

		</form>
	</div> 

	<script type="text/javascript">
		$("#del").click(function() {
			location.href = "../memberDelete";
		});

		$("#up").click(function() {
			location.href = "../memberUpdate";
		});
	</script>




</div>

</div>

</div>

</div>
</section>

<footer></footer>


</body>
</html>