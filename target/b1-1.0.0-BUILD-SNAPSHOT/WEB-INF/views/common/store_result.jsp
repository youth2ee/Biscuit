<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:forEach items="${list}" var="list" varStatus="loop">
	
<%-- 	<c:choose>
	<c:when test="${loop.index%3==0 and !loop.isFirst() and !loop.isLast()}">
		</ul>
		<ul class="product_molist topline">
	</c:when>
	</c:choose>
	 --%>
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
				<input type="hidden" value="${list.store_name}" id="input_sname${list.store_num}">
				<span class="desc">
					<strong class="price">
						<fmt:formatNumber value="${list.store_price}" pattern="###,###,###" />
						<span class="won">원</span>
						<input type="hidden" value="${list.store_price}" id="input_sprice${list.store_num}">
					</strong>
				</span>
			</span>
		</a>
		
		<input type="hidden" value="${list.store_num}" class="input_num">
		<input type="hidden" value="1" id="input_camount${list.store_num}">
		
		<div class="hover_wrap"></div>
		<a class="btn_category_product_cart">장바구니</a>
		
		<div class="hover_wrap hover_wrap2"></div>
		<a class="btn_category_product_buy" id="btn_buy${list.store_num}">바로구매</a>
		
		<script type="text/javascript">
			$('#btn_buy'+${list.store_num}).click(function() {
				$('#input_sname'+${list.store_num}).attr("name", "sname");
				$('#input_sprice'+${list.store_num}).attr("name", "sprice");
				$('#input_camount'+${list.store_num}).attr("name", "camount");
			});	
		</script>
	</li>
</c:forEach>