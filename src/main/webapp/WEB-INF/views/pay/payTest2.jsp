<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	payTest
	Test2
	
	<script type="text/javascript">
		$.ajax({
			type: "POST",
			url: "https://kapi.kakao.com/v1/payment/approve",
			headers: {Authorization: "KakaoAK cd0f72b5c9fb64cd830bdaaab8fabc83"},
			data:{
				"cid": "TC0ONETIME",
				"tid": "", // payTest에서 넘겨줌
				"partner_order_id": "0710",
				"partner_user_id": "test",
				"pg_token":"" // payTest에서넘겨줌
			},
				success: function(data){
				alert(data.quantity);
			}
		});
		
	</script>
</body>
</html>