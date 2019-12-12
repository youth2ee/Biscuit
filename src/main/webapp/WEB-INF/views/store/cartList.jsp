<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 	
<link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/layout/header.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/store/cartList.css" rel="stylesheet">
</head>
<body>
<!-- header -->
<header>
	<c:import url="../layout/header.jsp" />
</header>
<!-- section -->
<section>
	<div id="container">
		<div id="contents">
			<div class="cart_step_wrap">
				<ul class="cart_step_unit">
					<li class="step1 active">
						<span>STEP 01</span>
						<strong>장바구니</strong>
					</li>
					<li class="step2">
						<span>STEP 02</span>
						<strong>결제하기</strong>
					</li>
					<li class="step3">
						<span>STEP 03</span>
						<strong>결제완료</strong>
					</li>
				</ul>
			</div>
			
			<div class="cart_list_wrap">
				<p class="cart_all_wrap">
					<input type="checkbox" id="checkbox_all" class="custom_checkbox_all" checked="checked">
					<label for="checkbox_all">
						전체선택
					</label>
					<strong class="checkbox_name">상품명</strong>
					<strong class="checkbox_price">판매금액</strong>
					<strong class="checkbox_amount">수량</strong>
					<strong class="checkbox_total">구매금액</strong>
					<strong class="checkbox_select">선택</strong>
				</p>
				<ul class="cart_list_style">
					<c:forEach items="${cartList}" var="cartList">
						<li id="cart_item_idx_${cartList.cart_num}">
							<input type="checkbox" class="cart_checkbox" value="${cartList.cart_num}" checked="checked">
							<label for="checkbox${cartList.cart_num}"></label>
							<a href="storeSelect?store_num=${cartList.store_num}" class="product_info_img">
								<img alt="${cartList.store_name}" src="../resources/upload/store/th/${cartList.store_thumbimg}">
							</a>
							<div></div>
							<div></div>
							<span></span>
							<div></div>
						</li>
					</c:forEach>
				</ul>
				<a href="#none" class="btn_del_selected">
				</a>
				<table class="cart_total_price_wrap">
				</table>
				<div class="btn_wrap">
				</div>
			</div>
		</div>
	</div>
</section>
<!-- footer -->
<footer>
</footer>
</body>
</html>