<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 



<c:forEach items="${cinemaList}" var="cinema">
<li><a href="">${cinema.cinema_name}</a></li>
</c:forEach>

    
    
    