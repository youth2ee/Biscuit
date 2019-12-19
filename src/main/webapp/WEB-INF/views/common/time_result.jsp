<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%-- <c:forEach items="${result}" var="time"> 
<tr class="timeSelect mtd">
<td class="mtd1" style="width: 50px;" title="${time.timeInfo_end}">${time.timeInfo_start}</td>

<!-- 여기에 좌석 수를 넣어야 한다. -->
<c:forEach items="${seatList}" var="seat" varStatus="status">
<c:if test="${time.timeInfo_start eq seat.timeInfo_start}">


<c:if test="${seat.seatCount ge 195}">
<td class="mtime2 soldout">매진</td>
</c:if>


<c:if test="${seat.seatCount ne 195}">
<td class="mtime2">${seat.seatCount} / 195</td>
</c:if>


</c:if>

</c:forEach>

</tr>
</c:forEach>  --%>

<!-- ************************************************* -->
<tr class="mtd">
<td class="mtd1">
<c:forEach items="${result}" var="time" varStatus="status"> 
<c:if test="${status.count % 5 == 1}"> 
<div style="clear: both; color: #b54d15; font-weight:bolder; padding: 5px;">${time.theater_name}관</div>
</c:if>

<table class="ttable" style="float: left;"> 

<tr class="tstr" id="${time.theater_num}"><td class="timeSelect" id="${time.theater_name}"  title="${time.timeInfo_end}" style="width: 56px; text-align: center; border: 1px solid gray; font-weight: bolder;">${time.timeInfo_start}</td></tr>


<!-- 여기에 좌석 수를 넣어야 한다. -->
<c:forEach items="${seatList}" var="seat">
<c:if test="${time.timeInfo_start eq seat.timeInfo_start && time.theater_num eq seat.theater_num}">

<c:if test="${seat.seatCount ge 195}">
<tr><td style="width: 56px; text-align: center; color: aqua;">매진</td></tr>
</c:if>

<c:if test="${seat.seatCount ne 195}">
<tr><td style="width: 56px; text-align: center; color: aqua;">${seat.seatCount} / 195</td></tr>
</c:if>

</c:if>
</c:forEach>
</table>
</c:forEach> 
</td>
</tr>

<!-- ************************************************* -->

<%-- <c:forEach items="${result}" var="time" varStatus="status"> 
<c:if test="${status.count % 5 == 1}"> 
<tr><td colspan="2">${time.theater_name}관</td></tr>
</c:if>

<tr class="timeSelect mtd">

<td class="mtd1" style="width: 50px;" title="${time.timeInfo_end}">${time.timeInfo_start}</td>

<!-- 여기에 좌석 수를 넣어야 한다. -->
<c:forEach items="${seatList}" var="seat">
<c:if test="${time.timeInfo_start eq seat.timeInfo_start && time.theater_num eq seat.theater_num}">

<c:if test="${seat.seatCount ge 195}">
<td class="mtime2 soldout">매진</td>
</c:if>

<c:if test="${seat.seatCount ne 195}">
<td class="mtime2">${seat.seatCount} / 195</td>
</c:if>

</c:if>
</c:forEach>

</tr>
</c:forEach>  --%>