<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 	
<link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/store/storeSelect.css" rel="stylesheet">
</head>
<body>

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
							<div class="quantity"></div>
							<div class="total"></div>
							<div class="btn_wrap"></div>
						</div>
<!-- ------------------------------------------ -->
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>