<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../layout/jquery.jsp" />
</head>
<body>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<form id="frm" action="./memberJoin" method="post">
		<label for="id">아이디 <input type="text" name="id" id="id"></label><br>
		<p id="idCheck"></p>
		<label for="pw">비밀번호 <input type="text" name="pw" id="pw"></label><br>
		<label for="pwCheck">비밀번호 확인<input type="text" id="pwCheck"></label><br>
		<label for="name">이름<input type="text" name="name" id="name"></label><br>
		<label for="email">이메일 <input type="text" name="email" id="email"></label><br>
		<div id="addressSearch">
			<label for="post">우편번호<input type="text" name="post" id="post" readonly="readonly"></label><br>
			<label for="address">주소<input type="text" name="address" id="address" readonly="readonly"></label><br>
		</div>
		<label for="birth">생일 <input type="date" name="birth" id="birth"></label><br>
		<label for="gender">남<input type="radio" name="gender" id="gender" value="M">
							여<input type="radio" name="gender" id="gender" value="F">
		</label><br>
		<label for="phone">전화번호 <input type="text" name="phone" id="phone"></label><br>
		<input type="button" id="signIn" value="회원가입">
	</form>

	<script type="text/javascript">
		var idCheck = false;
		$("#id").blur(function() {
			var id = $('#id').val();
			$.get("./idCheck?id=" + id, function(data) {
				if (data == 1) {
					if (id == "") {
						alert("아이디를 입력하세요")
					} else {
						$("#idCheck").html("사용가능한 아이디입니다."+data);
						isIdCheck = true;
					}
				} else {
					$("#idCheck").empty();
					/* $("#checkId").css("color","red"); */
					$("#idCheck").html("이미 사용중인 아이디입니다."+data);
					//$('#id').focus();
					isIdCheck = false;
				}
			});
		});
		$("#addressSearch input[type='text']").click(function() {
			   new daum.Postcode({
			        oncomplete: function(data) {
			           $("#post").val(data.zonecode);
			           $("#address").val(data.address);
			        }
			    }).open();
		});	
		$("#signIn").click(function() {
			$("#frm").submit();
		});
	</script>
</body>
</html>