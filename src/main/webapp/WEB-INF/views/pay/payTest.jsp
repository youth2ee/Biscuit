<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	payTest
	Test
	<button id="btn">테스트</button>
	<script type="text/javascript">
		$("#btn").click(function() {
			$.ajax({
				type: "POST",
				url: "https://kapi.kakao.com/v1/payment/ready",
				headers: {Authorization: "KakaoAK cd0f72b5c9fb64cd830bdaaab8fabc83"},
				data:{
					"cid": "TC0ONETIME",
					"partner_order_id": "0710",
					"partner_user_id": "test",
					"item_name" : "테스트",
					"quantity": 1,
					"total_amount": 1,
					"tax_free_amount":1,
					"approval_url":"http://localhost/b1/",
					"cancel_url":"http://localhost/b1/",
					"fail_url":"http://localhost/b1/"
				},
					success: function(data){
					alert(data.tid);
				},
					error: function(data) {
						alert(data);
					}
			});
		});
		
		
	</script>
</body>
</html>