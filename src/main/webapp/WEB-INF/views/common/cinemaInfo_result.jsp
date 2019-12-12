<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<c:forEach items="${cinemaInfo}" var="info">
${info.cinema_name}
${info.cinema_tel}
${info.cinema_add}
</c:forEach>

