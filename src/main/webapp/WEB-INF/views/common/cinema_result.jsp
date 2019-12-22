<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<c:forEach items="${result}" var="cinema" varStatus="status">

<tr class="cinemaSelect">

<c:if test="${check[status.index] eq '1'}">
	<td class="mcinema mtd2 check" title="${cinema.cinema_num}">${cinema.cinema_name}</td>
</c:if>
<c:if test="${check[status.index] eq '0'}">
	<td class="mcinema mtd2 noncheck" title="${cinema.cinema_num}">${cinema.cinema_name}</td>
</c:if>


<!-- <td class="mtd mtd1"> -->


<%-- <c:forEach items="${selectResult}" var="select" varStatus="status2"> 

<c:if test="${cinema.cinema_name eq select.cinema_name}">
<img alt="" src="../resources/images/movieSelect/ch.png">
<div class="yooza"></div>
</c:if>

</c:forEach> --%>

<!-- </td> -->


</tr>
 
</c:forEach> 



