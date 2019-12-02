<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:forEach items="${result}" var="cinema"> 

<li class="cinemaSelect" title="${cinema.cinema_num}">${cinema.cinema_name}</li>

<%-- <c:forEach items="${selectResult}" var="choice">
<c:if test="${choice.cinema_num} == ${cinema.cinema_num}">
<div>choice</div>
</c:if>
</c:forEach> --%>

</c:forEach>
<!-- selectmovie값과 일치하면 color를 주자 -->


