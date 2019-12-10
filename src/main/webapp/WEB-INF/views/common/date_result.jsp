<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- <c:forEach items="${result}" var="date" varStatus="status"> 
<li class="dateSelect">${date.timeInfo_date}</li>

</c:forEach>  --%>

 <c:forEach items="${result}" var="date" varStatus="status"> 
<tr class="dateSelect"><td class="mtd">${date.timeInfo_date}
<input class="tnum" type="hidden" value="${theater_num}">
</td></tr>
</c:forEach> 

