<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:forEach items="${result}" var="cinema" varStatus="status">

<tr class="cinemaSelect">
<td class="mcinema mtd2" title="${cinema.cinema_num}">
<c:forEach items="${selectResult}" var="select" varStatus="status2"> 

<c:if test="${status.index == status2.index}">

<c:if test="${cinema.cinema_name eq select.cinema_name">
${cinema.cinema_name} checked
</c:if>

<c:if test="${cinema.cinema_name ne select.cinema_name">
<!-- <img alt="" src="../resources/images/movieSelect/ch.png"> -->
${cinema.cinema_name}
</c:if>







</c:if>







<%-- <c:if test="${cinema.cinema_name eq select.cinema_name && status.index == status2.index}">
<!-- <img alt="" src="../resources/images/movieSelect/ch.png"> -->
<div class="yooza">${cinema.cinema_name}</div>
</c:if>

<c:if test="${cinema.cinema_name ne select.cinema_name && status.index == status2.index}">
<!-- <img alt="" src="../resources/images/movieSelect/ch.png"> -->
<div class="yooza">${cinema.cinema_name}</div>
</c:if>
 --%>




</c:forEach>



<%-- 
${cinema.cinema_name}
 --%>
</td>

<td class="mtd mtd1">
<%-- <c:forEach items="${selectResult}" var="select" varStatus="status2"> 
<c:if test="${cinema.cinema_name eq select.cinema_name}">
<img alt="" src="../resources/images/movieSelect/ch.png">
<div class="yooza"></div>
</c:if>
</c:forEach> --%>
</td>


</tr>
 
</c:forEach>

		