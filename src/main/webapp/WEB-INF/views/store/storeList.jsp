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
<link href="${pageContext.request.contextPath}/resources/css/store/storeList.css" rel="stylesheet">
</head>
<body>
<!-- header -->
<header>
	<c:import url="../layout/header.jsp" />
</header>
<!-- section -->
<section>
<form id="frm" method="post" action="../pay/marketPay">
	<div id="container">
		<div id="content">
			<!-- 상단이미지 -->
			<div class="store_top"></div>
			<div class="product_wrap">
				<div class="product_inner">
					<!-- 메뉴바 -->
					<div class="product_index">
						<div class="bg_fixedIndex">
							<ul class="tab_mallmenu">
								<li class="current" data-menuid="cgv_tab1" id="1">
									<span>패키지</span>
								</li>
								<li data-menuid="cgv_tab2" id="2">
									<span>영화관람권</span>
								</li>
								<li data-menuid="cgv_tab3" id="3">
									<span>콤보</span>
								</li>
								<li data-menuid="cgv_tab4" id="4">
									<span>팝콘</span>
								</li>
								<li data-menuid="cgv_tab5" id="5">
									<span>음료</span>
								</li>
								<li data-menuid="cgv_tab6" id="6">
									<span>스낵</span>
								</li>
							</ul>
						</div>
					</div>
<!-- ------------------------------------------------------------------ -->
					<div class="bg_white"></div>
					<!-- 품목 -->
					<div class="tab_content">
						<!-- 패키지 -->
						<div id="cgv_tab1" class="menuTab current">
							<ul class="product_molist">
								<c:import url="../common/store_result.jsp"></c:import>
							</ul>
						</div>
<!-- --------------------------------------------- -->
						<!-- 영화관람권 -->
						<div id="cgv_tab2" class="menuTab">
							<ul class="product_molist product_molist2"></ul>
						</div>
<!-- --------------------------------------------- -->
						<!-- 콤보 -->
						<div id="cgv_tab3" class="menuTab">
							<ul class="product_molist product_molist3"></ul>
						</div>
<!-- --------------------------------------------- -->
						<!-- 팝콘 -->
						<div id="cgv_tab4" class="menuTab">
							<ul class="product_molist product_molist4"></ul>
						</div>
<!-- --------------------------------------------- -->
						<!-- 음료 -->
						<div id="cgv_tab5" class="menuTab">
							<ul class="product_molist product_molist5"></ul>
						</div>
<!-- --------------------------------------------- -->
						<!-- 스낵 -->
						<div id="cgv_tab6" class="menuTab">
							<ul class="product_molist product_molist6"></ul>
						</div>
<!-- --------------------------------------------- -->
					</div>
					
					<button id="myCart">Cart</button>
					<script type="text/javascript">
					 	$('#myCart').click(function() {
							$.ajax({
								url: "cartLoginCheck",
								type: "POST",
								//async: false,
								success: function(data) {
									//alert(data);
									if(data == 0){
										var confirm_val = confirm("로그인이 필요한 서비스입니다.\n로그인 페이지로 이동하시겠습니까?");
										if(confirm_val){
											location.href = "../member/memberLogin";
											//이동후에 로그인하면 다시 원래 페이지로 돌아오는 방법이 없을까?
										}
									}else {
										location.href = "./cartList";
									}
								}
							});
						});
					</script>
					
					<button id="goTop">Top</button>
				<script type="text/javascript">
					$('#goTop').click(function() {
						$('html, body').animate({scrollTop : 0}, 400);
						return false;
					});
				</script>
					
				</div>
			</div>
		</div>
	</div>
	
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
</form>	
</section>
<!-- footer -->
<footer>

</footer>

<script type="text/javascript">
////스크롤 이벤트
	$(window).scroll(function() {
		if($(window).scrollTop() > 730){
			$('.product_index').addClass("sticky");
		}else {
			$('.product_index').removeClass("sticky");
		}
		if($(window).scrollTop() > 50){
			$('#myCart').fadeIn();
			$('#goTop').fadeIn();
		}else {
			$('#myCart').fadeOut();
			$('#goTop').fadeOut();
		}
	});
////모달 창 띄우기(장바구니)
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
/////* 클릭하면 메뉴 탭 및 내용 전환 */////////////
	$('ul.tab_mallmenu li').click(function() {
		var activeTab = $(this).attr('data-menuid');
		
		$('ul.tab_mallmenu li').removeClass('current');
		$('.menuTab').removeClass('current');
		$(this).addClass('current');
		$('#'+activeTab).addClass('current');
		
		/* 클릭하면 해당 메뉴의 내용 불러오기 */
		var store_package = $('ul.tab_mallmenu li.current').attr('id');
		//alert(store_package);
		var tempScrollTop = $(window).scrollTop();
		
		$.ajax({
			type: "GET",
			url: "storeList2",
			async: false,
			data: {
				store_package:store_package
			},
			success: function(data) {
				//console.log(data);
				$(window).scrollTop(tempScrollTop);
				//alert('.product_molist'+activeTab);
				//$('.product_molist'+store_package).empty();
				$('.product_molist'+store_package).html(data);
				
				
			//////장바구니 버튼 클릭했을 때/////////////////
				$('.btn_category_product_cart').click(function() {
					var store_num = $(this).parent().find("input").val();
					//alert(store_num);
					var cart_amount = 1;
					
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
						},
						error: function() {
							alert("에러");
						}
					});
				});
			}
		});
		/****************************************************************/
	});
//////장바구니 버튼 클릭했을 때/////////////////
	$('.btn_category_product_cart').click(function() {
		var store_num = $(this).parent().find('input[class="input_num"]').val();
		//alert(store_num);
		var cart_amount = 1;
		
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
			},
			error: function() {
				alert("에러");
			}
		});
	});
/////////////////////////////
//바로 구매 클릭했을 때
$('.btn_category_product_buy').click(function name() {
	$('#frm').submit();
});
</script>
</body>
</html>