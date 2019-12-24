<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 그 이상의 감동 CGV</title>
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
<form action="../pay/marketPay" id="frm" method="post">
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
							<input type="hidden" value="${select.store_name}" name="sname">
							
							<div class="info">
								<strong class="price">
									<fmt:formatNumber value="${select.store_price}" pattern="###,###,###" />
									<span class="won">원</span>
									<input type="hidden" value="${select.store_price}" name="sprice">
								</strong>
							</div>
<!-- ------------------------------------------ -->							
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
<!-- ------------------------------------------ -->							
							<div class="quantity">
								<a href="javascript:void(0)" class="aMinus"><img alt="수량감소" src="../resources/images/store/btn_quantity_minus.jpg"></a>
								<input type="text" class="numCount" value="${param.camount}" readonly="readonly" name="camount">
								<a href="javascript:void(0)" class="aPlus"><img alt="수량증가" src="../resources/images/store/btn_quantity_plus.jpg"></a>
							</div>
							
							<div class="total">
								<strong>총 상품 금액</strong>
								<em>
									<span class="totalPrice">
										<fmt:formatNumber value="${select.store_price}" pattern="###,###,###" />
									</span>
									원
								</em>
							</div>
							
							<script type="text/javascript">
							if('${param.camount}' == ""){
							$('.numCount').val(1);
								
							}
							
							
								//,찍어주는 정규식 함수
								function addComma(price) {
								  var regexp = /\B(?=(\d{3})+(?!\d))/g;
								  return price.toString().replace(regexp, ',');
								}
								
								//수량 감소
								$('.aMinus').click(function() {
									var num = $('.numCount').val();
									var minusNum = num - 1;
									var price = ${select.store_price};
									
									if(minusNum <= 0){
										$('.numCount').val(1);
									}else {
										$('.numCount').val(minusNum);
										price = ${select.store_price} * minusNum;
									}
									
									price = addComma(price);
									$('.totalPrice').text(price);
								});
								
								//수량 증가
								$('.aPlus').click(function() {
									var num = $('.numCount').val();
									num++;
									$('.numCount').val(num);
									
									var price = ${select.store_price} * num;
									price = addComma(price);
									$('.totalPrice').text(price);
								});
								
							</script>
<!-- ------------------------------------------ -->							
							<div class="btn_wrap">
								<a href="./storeList?store_package=${select.store_package}" class="btn_list">상품 리스트</a>
								<a href="#" class="btn_cart">장바구니</a>
								<!-- <a class="btn_buy">구매하기</a> -->
								<button type="button" class="btn_buy">구매하기</button>
							</div>
						</div>
<!-- ------------------------------------------ -->
					</div>
				</div>
			</div>
		</div>
	</div>
	</form>
<!-- ------------------------------------------ -->
<!-- modal -->
	<div class="confirmLayer">
		<div class="confirm_wrap">
			<div class="header">
				<h3>장바구니 담기</h3>
				<div class="close">
					<img alt="닫기" src="../resources/images/store/close-line_white.png">
				</div>
			</div>
			<div class="content">
				<p>장바구니에 상품이 정상적으로 담겼습니다.</p>
			</div>
			<div class="footer">
				<a href="cartList" class="btn_cartList">장바구니 이동</a>
				<button class="btn_remove">쇼핑 계속하기</button>
			</div>
		</div>
	</div>
</section>

<script type="text/javascript">
	//모달 창 띄우기(장바구니)
	function modal() {
		$('.confirmLayer').css("display", "block");
		
		$('.close').click(function() {
			$('.confirmLayer').css("display", "none");
		});
		
		$('.btn_remove').click(function() {
			$('.confirmLayer').css("display", "none");
		});
		
		$(document).click(function(event) {
			$('.confirmLayer').css("display", "none");
		});
	}
	
	//장바구니 버튼 클릭했을 때
	$('.btn_cart').click(function() {
		var store_num = ${select.store_num}
		//alert(store_num);
		var cart_amount = parseInt($('.numCount').val());
		//alert(cart_amount);
		
		$.ajax({
			url: "cartSelect",
			type: "POST",
			//async: false,
			data: { store_num : store_num },
			success: function(data) {
				//alert(data.result);
				//동일 상품 존재 O - Update
				if(data.result == 1){
					//alert(data.cart_num);
					
					var confirm_val = confirm("장바구니에 동일한 상품이 존재합니다.\n수량을 변경하시겠습니까?");
					
					if(confirm_val){
						var cart_num = data.cart_num;
						cart_amount = cart_amount + data.cart_amount;
						//alert(cart_amount);
						
						$.ajax({
							url: "cartUpdate",
							type: "POST",
							//async: false,
							data: {
								cart_amount: cart_amount,
								cart_num: cart_num
							},
							success: function(result) {
								//alert(result);
								if(result == 1){
									modal();
								}else {
									alert("수량 변경 실패");
								}
							},
							error: function() {
								alert("에러");
							}
						});
					}
				//동일 상품 존재 X - Insert
				}else if(data.result == 2){
					$.ajax({
						url: "cartInsert",
						type: "POST",
						//async: false,
						data: {
							store_num: store_num,
							cart_amount: cart_amount
						},
						success: function(result2) {
							if(result2 == 1){
								modal();
							}else {
								alert("카트 등록 실패");
							}	
						},
						error: function() {
							alert("에러");
						}
					});
				//로그인 X
				}else{
					var confirm_val = confirm("로그인이 필요한 서비스입니다.\n로그인 페이지로 이동하시겠습니까?");
					if(confirm_val){
						location.href = "../member/memberLogin";
						//이동후에 로그인하면 다시 원래 페이지로 돌아오는 방법이 없을까?
					}
				}
				$('.numCount').val("1");
			},
			error: function() {
				alert("에러");
			}
		});
	});
	
	//구매하기 버튼 눌렀을 때
	$('.btn_buy').click(function() {
		$('#frm').submit();
	});
</script>

<footer>
</footer>

</body>
</html>