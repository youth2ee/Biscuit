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
#tboxmain {
    width: 1052px;
    background-color: #fdfcf0;
    height: 830px;
}
input[type="text"],input[type="password"]{
    width: 250px;
    padding: 15px;
    background-color: transparent;
    border-bottom: solid #e71a0f 2px;
   }
.tboxmain{
    background-color: #fdfcf0;
    }
.form-group{
	margin-top: 15px;
}
input[type="button"]{
    border-radius: 2px;
    width: 290px;
    height: 45px;
    background: #ee3224;
    color: white;

}

</style>
</head>

<body>
<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
<div class="mmain"  style="background-color: #3b3b3b; padding-top: 10px; padding-bottom: 10px; color: black; padding-left: 10px;" ><a  style="color: white;"  href="./myPage_member_update">회원정보수정</a></div>
</div>
</div>

<div class="mycontext">

<div id="tboxmain">

<div class="container">
		<form action="myPage_member_update" method="post" id="frm">
			<div class="wrap">
				<div class="form-group">
					<label for="id">아이디</label><br> 
					<input type="text" class="form-control" id="id" name="id" value="${member.id}" readonly="readonly">
				</div>
	
				<div class="form-group">
					<label for="pw">비밀번호</label> <br>
					<input type="password" class="form-control" id="pw" name="pw">
				</div>
	
				<div class="form-group">
					<label for="name">이름</label> <br> 
					<input type="text" class="form-control" id="name" name="name" value="${member.name}">
				</div>
	
				<div class="form-group">
					<label for="email">이메일</label> <br> 
					<input type="text" class="form-control" id="email" name="email" value="${member.email}" readonly="readonly">
				</div>
				<div class="form-group">
					<label for="email">연락처</label> <br> 
					<input type="text" class="form-control" id="phone" name="phone" value="${member.phone}">
				</div>
				<div class="form-group" id="addressSearch">
					<label for="post">우편번호</label> <br> 
					<input type="text" class="form-control" id="post" name="post" value="${member.post}" readonly="readonly">
				</div>
	
				<div class="form-group">
					<label for="address">주소 </label><br> 
					<input type="text" class="form-control" id="address" name="address" value="${member.address}" readonly="readonly">
				</div>
				<div style="padding: 15px 0;">
					<input type="button" id="up" class="btn btn-default" value="회원정보 수정"> <br>
					<br>
					<!-- <input type="button" id="del" class="btn btn-default" value="회원탈퇴"> -->
				</div>
				<input type="hidden" value="${member.gender}">
				<input type="hidden" value="${member.birth}">
			</div>
		</form>
	</div> 

	<script type="text/javascript">
		$("#del").click(function() {
			location.href = "../memberDelete";
		});

		$("#addressSearch input[type='text']").click(function() {
			new daum.Postcode({
				oncomplete : function(data) {
					$("#post").val(data.zonecode);
					$("#address").val(data.address);
				}
			}).open();
		});
		$('#up').click(
				function() {
					if ($('#pw').val() != ''&& $('#phone').val() != '' && $('#name').val() != '')
						$('#frm').submit();
					else
						alert('필수 항목을 모두 작성 하십시오');
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