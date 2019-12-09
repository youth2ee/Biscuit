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
<link href="${pageContext.request.contextPath}/resources/css/store/storeSelect.css" rel="stylesheet">
</head>
<body>
<header>
	<c:import url="../layout/header.jsp"></c:import>
</header>
<section>
	<div id="container">
		<div id="content">
			<div class="detailtop_wrap">
				<div class="detail_inner">
					<div class="product_box">
<!-- ------------------------------------------ -->
						<div class="product_left">
							<div class="product_img">
								<img alt="${select.store_name}" src="../resources/upload/store/${select.store_img}">
							</div>
						</div>
<!-- ------------------------------------------ -->
						<div class="product_right">
							<h2 class="detail_title">${select.store_name}</h2>
							<div class="info">
								<strong class="price">
									<fmt:formatNumber value="${select.store_price}" pattern="###,###,###" />
									<span class="won">원</span>
								</strong>
							</div>
							
							<table border="1" class="table_info">
								<tbody>
									<tr id="store_note">
										<th>상품 구성</th>
										<td>
											<ul class="table_store_note">
												<li>
													${select.store_note}
												</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th class="last">구매 제한</th>
										<td class="last">
											<ul class="table_store_note">
												<li>
													제한 없음
												</li>
											</ul>
										</td>
									</tr>
								</tbody>
							</table>
							
							<div class="quantity">
								<a href="javascript:void(0)" class="aMinus"><img alt="수량감소" src="../resources/images/store/btn_quantity_minus.jpg"></a>
								<input type="text" class="numCount" value="1" readonly="readonly">
								<a href="javascript:void(0)" class="aPlus"><img alt="수량증가" src="../resources/images/store/btn_quantity_plus.jpg"></a>
							</div>
							
							<div class="total">
								<strong>총 상품 금액</strong>
								<em>
									<span class="totalPrice">
										<fmt:formatNumber value="${select.store_price}" pattern="###,###,###" />
										<%-- ${select.store_price} --%>
									</span>
									원
								</em>
							</div>
							
							<script type="text/javascript">
								//,찍어주는 정규식 함수
								function addComma(price) {
								  var regexp = /\B(?=(\d{3})+(?!\d))/g;
								  return price.toString().replace(regexp, ',');
								}
							
								$('.aMinus').click(function() {
									var num = $('.numCount').val();
									var minusNum = num - 1;
									
									if(minusNum <= 0){
										$('.numCount').val(num);
									}else {
										$('.numCount').val(minusNum);
										//$('.totalPrice').html(${select.store_price}*parseInt($('.numCount').val()));
									
									}
									
								});
								
							
								$('.aPlus').click(function() {
									var num = $('.numCount').val();
									
									num++;
									$('.numCount').val(num);
									
									alert(num);
								});
							</script>
							
							<div class="btn_wrap">
								<a href="#" class="btn_cart">장바구니</a>
								<a href="#" class="btn_star">찜하기</a>
								<a href="#" class="btn_buy">구매하기</a>
							</div>
						</div>
<!-- ------------------------------------------ -->
					</div>
					<a href="storeUpdate?store_num=${select.store_num}" id="btn_update">수정</a>
					<a href="storeDelete?store_num=${select.store_num}" id="btn_delete">삭제</a>
				</div>
			</div>
		</div>
	</div>
</section>

<footer>
</footer>

</body>
</html>