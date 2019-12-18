<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- <c:forEach items="${result}" var="date" varStatus="status"> 
<li class="dateSelect">${date.timeInfo_date}</li>
</c:forEach>  --%>


<tr class="dateSelect">
<td class="mtd" title="${date.timeInfo_date}">
<div style="margin: 0 auto; width: 100%; text-align: center; font-size: 15px;"> 
<div>2019</div>
<div>12</div>
</div>
<c:forEach items="${result}" var="date" varStatus="status">
<%-- <c:if test="${date.year ne '2018'}">
<div>${date.year}</div>
</c:if> --%>


<div>${date.day}</div>
<%-- <div>${date.timeInfo_date}</div> --%>
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