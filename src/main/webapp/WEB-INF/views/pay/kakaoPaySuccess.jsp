<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	결제 성공
	
	<p>결제일시 : ${pay.approved_at}</p>
	<p>주문번호 : ${pay.partner_order_id}</p>
	<p>상 품 명  : ${pay.item_name}</p>
	<p>상품수량 : ${pay.quantity}</p>
	<p>결제금액 : ${pay.amount.total}</p>
	<p>결제방법 : ${pay.payment_method_type}</p> 
</body>
</html>