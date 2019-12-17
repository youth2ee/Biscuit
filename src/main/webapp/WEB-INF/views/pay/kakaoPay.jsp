<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../layout/jquery.jsp" />
<style type="text/css">
#btn{
	cursor:pointer;	
}
</style>
</head>
<body>
	<form action="kakaoPay" method="post" id="frm">
		<img src="../resources/images/pay/pay_icon.png" id="btn">
	</form>
	<script type="text/javascript">
			$("#frm").submit();
	</script>
</body>
</html>