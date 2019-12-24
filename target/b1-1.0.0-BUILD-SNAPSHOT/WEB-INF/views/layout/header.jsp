<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div id="htotal">
<div id="head1">
	<c:if test="${member eq null}">
		<div style="float: left;"><a href="${pageContext.request.contextPath}/member/memberLogin"><img alt="" src="${pageContext.request.contextPath}/resources/images/home/5_2.png"></a></div>
		<div style="float: left;"><a href="${pageContext.request.contextPath}/member/memberJoin"><img alt="" src="${pageContext.request.contextPath}/resources/images/home/6_2.png"></a></div>
	</c:if>
	<c:if test="${member ne null }">
		<div class="hname" style="float: left;">${member.name}님</div>
		<div style="float: left;"><a href="${pageContext.request.contextPath}/member/memberLogout"><img alt="" src="${pageContext.request.contextPath}/resources/images/home/7_2.png"></a></div>
		
		<c:if test="${member.grade eq 6}">
		<div style="float: left;"><a href="${pageContext.request.contextPath}/admin/adminmain"><img alt="" src="${pageContext.request.contextPath}/resources/images/home/8_2.png"></a></div>		
		</c:if>
		
		<c:if test="${member.grade ne 6}">
		<div style="float: left;"><a href="${pageContext.request.contextPath}/member/mypage/myPage"><img alt="" src="${pageContext.request.contextPath}/resources/images/home/8_2.png"></a></div>		
		</c:if>
		
	</c:if>
</div>

<div id="head3">
</div>

<div id="head2">
    <div id="head2_1">
	<a href="${pageContext.request.contextPath}">
		<img alt="" src="${pageContext.request.contextPath}/resources/images/header/h1_cgv.png">
	</a>
	</div>

	<div id="head2_2">
	<div><img alt="" src="${pageContext.request.contextPath}/resources/images/header/h2_theater.png"></div>
	<div> 
	<a href="${pageContext.request.contextPath}/movie/movieSelect">
		<img alt="" src="${pageContext.request.contextPath}/resources/images/home/1_2.png">
	</a>
	
	<a href="${pageContext.request.contextPath}/movie/movieList">
	<img alt="" src="${pageContext.request.contextPath}/resources/images/home/2_2.png">
	</a>
	
	<a href="${pageContext.request.contextPath}/cinema/cinemaList">
	<img alt="" src="${pageContext.request.contextPath}/resources/images/home/3_2.png">
	</a>
	
	<a href="${pageContext.request.contextPath}/store/storeList">
		<img alt="" src="${pageContext.request.contextPath}/resources/images/home/4_2.png">
	</a>
	</div>

	</div>
</div>

<div id="head3"></div>

</div>