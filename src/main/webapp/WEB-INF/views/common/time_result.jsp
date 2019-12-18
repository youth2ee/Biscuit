<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<c:forEach items="${result}" var="time"> 
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
</c:forEach> 
