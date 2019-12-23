<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Noto+Serif+KR&display=swap" rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/error/error.css"
	rel="stylesheet">
	<link
	href="${pageContext.request.contextPath}/resources/css/layout/header.css"
	rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/css/layout/footer.css" rel="stylesheet">
	
<link href="${pageContext.request.contextPath}/resources/css/reset.css"
	rel="stylesheet">
</head>
<body>
<header>
			<c:import url="../layout/header.jsp" />
		</header>
	<div class="wrapper">
		<div class="popcorn">
			<img class="age" alt="" src="${pageContext.request.contextPath}/resources/images/error/popcorni.png">
		</div>
		<div class="text">
			<div><span class="errorText">500</span></div>
			<h1>요청하신 페이지를 찾을 수 없습니다.</h1>
			<p class="errorText2">다른 경로를 이용해주세요.</p>
			<p class="gotoMain"><a href="./" class="gotoMainText">메인으로</a></p>
			
		</div>
	</div>
	<footer style="margin-top: 200px;">
			<c:import url="../layout/footer.jsp" />
		</footer>
	
</body>
</html>