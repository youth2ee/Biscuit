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
								<strong class="product_info_name">${cartList.store_name}</strong>
								<span class="product_info_note">${cartList.store_note}</span>
							</a>
							<div class="product_info_onePrice_wrap">
								<span class="product_info_onePrice">
									<fmt:formatNumber value="${cartList.store_price}" pattern="###,###,###" />
								</span>
							</div>
							<div class="product_info_amount_wrap">
								<span class="product_info_count">${cartList.cart_amount}</span>
								<a href="#none" class="btn_amount_plus">+</a>
								<a href="#none" class="btn_amount_minus">-</a>
								<a href="#none" class="btn_amount_change">변경</a>
							</div>
							<span class="product_info_price"></span>
							<script type="text/javascript">
								$('.btn_amount_plus').click(function() {
									
								});
							</script>
							
							<div class="product_info_btn_wrap">
								<a href="#none">바로구매</a>
							</div>
							<a href="#" class="btn_product_del">삭제</a>
						</li>
					</c:forEach>
				</ul>
				
				<a href="#none" class="btn_del_selected">
					선택 상품 삭제
				</a>
				
				<table class="cart_total_price_wrap">
					<colgroup>
						<col style="width:30%">
						<col style="width:36%">
						<col style="width:34%">
					</colgroup>
					<thead>
						<tr>
							<th>총 상품 금액</th>
							<th>할인 금액</th>
							<th>총 결제 예정 금액</th>
						</tr>
					</thead>
					
					<tbody>
						<tr>
							<td>
								<strong>
									<span id="sales_price">1234</span>
								</strong>
							</td>
							<td class="cart_calculator">
								<strong>
									<span id="total_discount">5678</span>
								</strong>
							</td>
							<td>
								<strong class="cart_total_price">
									<span id="total_price">910112</span>
								</strong>
							</td>
						</tr>
					</tbody>
				</table>
				
				<div class="btn_wrap">
					<a href="#none" class="btn_buy">결제하기</a>
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