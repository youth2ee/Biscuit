<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- <c:forEach items="${result}" var="date" varStatus="status"> 
<li class="dateSelect">${date.timeInfo_date}</li>
</c:forEach>  --%>


<tr>
	<td class="datetd" style="padding-left: 5px;">
		<div style="margin: 0 auto; width: 50px; text-align: center;">
			<div style="font-size: 11px; color: #666666;">2019</div>
			<div style="font-size: 30px; color: #666666;">12</div>
		</div> 
		<c:forEach items="${result}" var="date" varStatus="status">
		
		<c:if test="${date.week eq '일' || date.week eq '수'}">
		<div class="dateSelect" id="${date.timeInfo_date}" style="color: red;">${date.day} ${date.week}</div>
		</c:if>
		
		<c:if test="${date.week eq '토'}">
		<div class="dateSelect" id="${date.timeInfo_date}" style="color: blue;">${date.day} ${date.week}</div>
		</c:if>
		
		<c:if test="${date.week eq '월' || date.week eq '화' || date.week eq '목' || date.week eq '금'}">
		<div class="dateSelect" id="${date.timeInfo_date}">${date.day} ${date.week}</div>
		</c:if>
		
		
		</c:forEach>
	</td>
</tr>



<%-- <c:forEach items="${result}" var="date" varStatus="status">
<div class="swiper-slide sbox">${date.day}</div>
</c:forEach>  --%>





<%-- <c:forEach items="${result}" var="date" varStatus="status">
<tr class="dateSelect">
<td class="mtd" title="${date.timeInfo_date}">
${date.timeInfo_date}
<%-- ${date.day} --%>
<%-- <div class="tnum" style="display: none;">${theater_num}</div>
<div class="tname" style="display: none;">${theater_name}</div> --%>
<%--</td>
</tr>
</c:forEach>  --%>