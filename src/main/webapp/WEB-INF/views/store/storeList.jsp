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
								<li class="current" data-menuid="cgv_tab1" id="1">
									<a href="#">패키지</a>
								</li>
								<li data-menuid="cgv_tab2" id="2">
									<a href="#">영화관람권</a>
								</li>
								<li data-menuid="cgv_tab3" id="3">
									<a href="#">콤보</a>
								</li>
								<li data-menuid="cgv_tab4" id="4">
									<a href="#">팝콘</a>
								</li>
								<li data-menuid="cgv_tab5" id="5">
									<a href="#">음료</a>
								</li>
								<li data-menuid="cgv_tab6" id="6">
									<a href="#">스낵</a>
								</li>
							</ul>
						</div>
					</div>
<!-- ------------------------------------------------------------------ -->
					<div class="bg_white"></div>
					<!-- 품목 -->
					<div class="tab_content">
						<!-- 패키지 -->
						<div id="cgv_tab1" class="menuTab menuTab1 current">
							<ul class="product_molist">
								<c:forEach items="${list}" var="list" varStatus="loop">
									<c:if test="${loop.index%3==0 and !loop.isFirst() and !loop.isLast()}">
										</ul>
										<ul class="product_molist topline">
									</c:if>
									<li>
										<a href="./storeSelect?store_num=${list.store_num}&store_package=${list.store_package}" class="product_btn">
											<span class="molthum">
												<img alt="" src="../resources/upload/store/th/${list.store_thumbimg}">
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
									</li>
								</c:forEach>
							</ul>
						</div>
<!-- --------------------------------------------- -->
						<!-- 영화관람권 -->
						<div id="cgv_tab2" class="menuTab menuTab2">
							<h3>영화관람권</h3>
						</div>
<!-- --------------------------------------------- -->
						<!-- 콤보 -->
						<div id="cgv_tab3" class="menuTab menuTab3">
							<h3>콤보</h3>
						</div>
<!-- --------------------------------------------- -->
						<!-- 팝콘 -->
						<div id="cgv_tab4" class="menuTab menuTab4">
							<h3>팝콘</h3>
						</div>
<!-- --------------------------------------------- -->
						<!-- 음료 -->
						<div id="cgv_tab5" class="menuTab menuTab5">
							<h3>음료</h3>
						</div>
<!-- --------------------------------------------- -->
						<!-- 스낵 -->
						<div id="cgv_tab6" class="menuTab menuTab6">
							<h3>스낵</h3>
						</div>
<!-- --------------------------------------------- -->
					</div>
				</div>
			</div>
		</div>
	</div>
	
<script type="text/javascript">
	/* 클릭하면 메뉴 탭 및 내용 전환 */
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
			url: "storeList",
			/* async: false, */
			data: {
				store_package:store_package
			},
			success: function(data) {
				//console.log(data);
				$(window).scrollTop(tempScrollTop);
			}
		});
		/****************************************************************/
	});
	
</script>
</body>
</html>