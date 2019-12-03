<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!--  -->
<c:forEach items="${result}" var="cinema" varStatus="status">
<li class="cinemaSelect" title="${cinema.cinema_num}">${cinema.cinema_name}</li>

<%--  <c:if test="${cinema.cinema_num eq 1"> 
	${selectResult[status.index].movieInfo_num}
	${selectResult[status.index].cinema_num}
	${selectResult[status.index].theater_num}
 </c:if>  --%>
 
<%-- <c:choose>
 <c:when test="${selectResult[status.index].cinema_name eq '강남'}"> a </c:when>
 
</c:choose>  --%>
<%-- 	${selectResult[status.index].movieInfo_num}
	${selectResult[status.index].cinema_num}
	${selectResult[status.index].theater_num} --%>


</c:forEach>




<!-- selectmovie값과 일치하면 color를 주자 -->



		
		
		
