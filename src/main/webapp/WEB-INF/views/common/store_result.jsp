<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:forEach items="${list}" var="list" varStatus="loop">
	
	<c:if test="${loop.index%3==0 and !loop.isFirst() and !loop.isLast()}">
		</ul>
		<ul class="product_molist topline">
	</c:if>
	
	<li>
		<a href="./storeSelect?store_num=${list.store_num}&store_package=${list.store_package}" class="product_btn">
			<span class="molthum">
				<img alt="${list.store_name}" src="../resources/upload/store/th/${list.store_thumbimg}">
			</span>
		
			<span class="listinfo">
				<span class="tit">${list.store_name}</span>
				<span class="desc">
					<strong class="price">
						<fmt:formatNumber value="${list.store_price}" pattern="###,###,###" />
						<span class="won">원</span>
					</strong>
				</span>
			</span>
		</a>
		
		<div class="hover_wrap">
			<img alt="장바구니" src="../resources/images/store/shopping-cart_white.png">
			<!-- <a class="btn_category_product_cart">장바구니</a> -->
		</div>
		<div class="hover_wrap hover_wrap2">
			<a class="btn_category_product_buy">구매하기</a>
		</div>
	</li>
</c:forEach>