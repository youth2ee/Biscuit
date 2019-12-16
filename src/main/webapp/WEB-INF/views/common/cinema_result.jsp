<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%-- <c:forEach items="${result}" var="cinema" varStatus="status">

<tr class="cinemaSelect">
<td class="mcinema mtd2" title="${cinema.cinema_num}">${cinema.cinema_name}</td>

<td class="mtd mtd1">
<c:forEach items="${selectResult}" var="select" varStatus="status2"> 

<c:if test="${cinema.cinema_name eq select.cinema_name}">
<img alt="" src="../resources/images/movieSelect/ch.png">
</c:if>

</c:forEach>
</td>


</tr>
 
</c:forEach> --%>

<!--  -->
<c:forEach items="${result}" var="cinema" varStatus="status">

<tr class="cinemaSelect">
<td class="mcinema mtd2" title="${cinema.cinema_num}">
<c:forEach items="${selectResult}" var="select" varStatus="status2"> 

<c:forEach items="${result}" var="cinema2" varStatus="status3">

<%-- <c:if test="${cinema.cinema_name eq select.cinema_name}">
<div style="color: blue;">${cinema.cinema_name}</div>
</c:if> --%>

<c:if test="${status.index eq status3.index}"> 
${status.index}
${status3.index}

<c:if test="${cinema.cinema_name eq select.cinema_name}">
<div style="color: blue;">${cinema.cinema_name}</div>
</c:if>


<div style="color: red;">${cinema.cinema_name}</div>


<%if(${cinema.cinema_name} == {select.cinema_name}){
	
}
%>

</c:if>
</c:forEach>

</c:forEach>

</td>

<%-- <td class="mtd mtd1">
<c:forEach items="${selectResult}" var="select" varStatus="status2"> 

<c:if test="${cinema.cinema_name eq select.cinema_name}">
<img alt="" src="../resources/images/movieSelect/ch.png">
</c:if>

<c:if test="${cinema.cinema_name ne select.cinema_name}">
1
</c:if>

</c:forEach>
</td>
 --%>

</tr>
 
</c:forEach>

		
		
