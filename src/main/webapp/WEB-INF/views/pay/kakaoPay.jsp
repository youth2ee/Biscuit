<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 그 이상의 감동 CGV</title>
<c:import url="../layout/jquery.jsp" />
<style type="text/css">
#btn{
	cursor:pointer;	
}
</style>
</head>
<body>
	<form action="kakaoPay" method="post" id="frm">
		<input type="hidden" value="${count}" name="quantity">
		<input type="hidden" value="${price}" name="total_amount">
	</form>
	<script type="text/javascript">
			$("#frm").submit();
	</script>
</body>
</html>