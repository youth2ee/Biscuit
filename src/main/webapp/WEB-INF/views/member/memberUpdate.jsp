<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="../layout/jquery.jsp" />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<body>
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
		<input type="submit" id="signIn" value="회원가입">
	</form>
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