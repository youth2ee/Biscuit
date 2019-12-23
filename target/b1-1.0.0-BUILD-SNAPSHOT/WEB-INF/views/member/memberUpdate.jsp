<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<meta charset="UTF-8">
<title>영화 그 이상의 감동 CGV</title>
<c:import url="../layout/jquery.jsp" />
<link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/layout/header.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/member/mypage.css" rel="stylesheet">

</head>
<body>

<header>
<c:import url="../layout/header.jsp" />
</header>

<section>
<div class="mypagewrap"> 



<div id="test">

<div class="mymenu">
<div class="menutitle">
<a href="./myPage"><img alt="" src="../resources/images/mypage/mypage.png"></a>
</div>

<div class="menumain"> 
<div class="mmain"><a href="./mypage/myPage_movie_res">예매내역</a></div>
<div class="mmain"><a href="./mypage/myPage_store_res">스토어구매내역</a></div>
<div class="mmain"><a href="./mypage/myPage_movie_heart">내가 찜한 영화</a></div>
<div class="mmain"><a href="./mypage/myPage_movie_star">내가 준 평점</a></div>
<div class="mmain"><a href="./mypage/myPage_cinema">자주가는 영화관</a></div>
<div class="mmain"><a href="./mypage/myPage_member_update">회원정보수정</a></div>
</div>
</div>

<div class="mycontext">

<h1>myPage_member_update</h1>

<div id="tboxmain">

<form id="frm" action="./memberUpdate" method="post">
		<label for="id">아이디 <input type="text" name="id" id="id" value = "${member.id}" readonly="readonly"></label><br>
		<label for="pw">비밀번호 <input type="text" name="pw" id="pw" value="${member.pw}"></label><br>
		<label for="pwCheck">비밀번호 확인<input type="text" id="pwCheck"></label><br>
		<label for="name">이름<input type="text" name="name" value = "${member.name}" id="name" readonly="readonly"></label><br>
		<label for="email">이메일 <input type="text" name="email" value = "${member.email}" id="email"></label><br>
		<div id="addressSearch">
			<label for="post">우편번호<input type="text" name="post"
				id="post" value = "${member.post}"  readonly="readonly"></label><br> 
				<label for="address">주소<input type="text" name="address" id="address" value = "${member.address}" readonly="readonly"></label><br>
		</div>
		<label for="birth">생일 <input type="date" name="birth"id="birth" value = "${member.birth}"></label><br> 
		<label for="gender">남<input type="radio" name="gender" id="gender" value="M"> 
							여<input type="radio" name="gender" id="gender" value="F">
		</label><br> <label for="phone">전화번호 <input type="text"name="phone" id="phone"value = "${member.phone}" ></label><br> 
		<input type="submit" value="업데이트">
	</form>




</div>

</div>

</div>

</div>
</section>

<footer></footer>


<script type="text/javascript">
		$("#addressSearch input[type='text']").click(function() {
			new daum.Postcode({
				oncomplete : function(data) {
					$("#post").val(data.zonecode);
					$("#address").val(data.address);
				}
			}).open();
		});	
	</script>
</body>
</html>
