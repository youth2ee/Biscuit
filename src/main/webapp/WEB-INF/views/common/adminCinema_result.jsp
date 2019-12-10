<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 



<c:forEach items="${cinemaList}" var="cinema">
<li class="bb">${cinema.cinema_name}</li>
</c:forEach>

    
    
    