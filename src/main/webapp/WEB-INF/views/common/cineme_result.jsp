<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!--  -->
<c:forEach items="${result}" var="cinema" varStatus="status">
<li class="cinemaSelect" title="${cinema.cinema_num}">${cinema.cinema_name}</li>

<%--  <c:if test="${cinema.cinema_num eq selectResult[status.index].cinema_num"> 
	${selectResult[status.index].movieInfo_num}
	${selectResult[status.index].cinema_num}
	${selectResult[status.index].theater_num}

 </c:if>  --%>


</c:forEach>




<!-- selectmovie값과 일치하면 color를 주자 -->



		
		
		
