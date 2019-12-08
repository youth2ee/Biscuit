<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>

<body>

<a href="https://kauth.kakao.com/oauth/authorize?client_id=347369e2dc4b384e957f716bb12eef19&redirect_uri=http://localhost.com/kakaologin&response_type=code">test</a>
<button id="btn">로그인</button>

	<script type="text/javascript">
	$("#btn").click(function() {
		$.ajax({
			type: "GET",
			url: "https://kauth.kakao.com/oauth/authorize?client_id=347369e2dc4b384e957f716bb12eef19&redirect_uri=http://localhost/b1/pay/kakaoLogin&response_type=code",
			success: function(data) {
				console.log(data.Location);
			}
		});
	});
	</script>
	</body>
</html>