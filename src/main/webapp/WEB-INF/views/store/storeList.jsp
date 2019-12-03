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
<link href="${pageContext.request.contextPath}/resources/css/store/storeList.css" rel="stylesheet">
</head>
<body>
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
								<li data-menuid="1" value="1" class>
									<a href="#">패키지</a>
								</li>
								<li data-menuid="2" value="2" class>
									<a href="#">영화관람권</a>
								</li>
								<li data-menuid="3" value="3" class>
									<a href="#">콤보</a>
								</li>
								<li data-menuid="4" value="4" class>
									<a href="#">팝콘</a>
								</li>
								<li data-menuid="5" value="5" class>
									<a href="#">음료</a>
								</li>
								<li data-menuid="6" value="6" class>
									<a href="#">스낵</a>
								</li>
							</ul>
						</div>
					</div>
<!-- --------------------------------------------- -->
					<div class="bg_white"></div>
					<!-- 품목 -->
					<div class="tab_content">
						<div id="cgv_tab1" class="con menuTab menuTab2" style="display:block;">
							<ul class="product_molist">
								<c:forEach items="${list}" var="list">
									<li>
										<a href="./storeSelect?store_num=${list.store_num}">
											<span class="molthum">
												<img alt="${list.store_name}" src="">
											</span>
											<span class="listinfo">
												<span>${list.store_name}</span>
												<span>
													<strong>
														<fmt:formatNumber value="${list.store_price}" pattern="###,###,###" />
														<span>원</span>
													</strong>
												</span>
											</span>
										</a>
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>