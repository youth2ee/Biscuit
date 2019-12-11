<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- <c:forEach items="${result}" var="date" varStatus="status"> 
<li class="dateSelect">${date.timeInfo_date}</li>

</c:forEach>  --%>

 <c:forEach items="${result}" var="date" varStatus="status">  
<tr class="dateSelect">
<td class="mtd" title="${date.timeInfo_date}">
<%-- ${date.timeInfo_date} --%>
${date.day}
<div class="tnum" style="display: none;">${theater_num}</div>
</td>
</tr>
</c:forEach> 

