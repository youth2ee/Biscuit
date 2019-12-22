<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<div id = "timeTable">상영시간표</div>
<div> 
<c:forEach items="${timelist}" var="time" varStatus="status">


<c:if test="${status.count % 5 == 1}">


<div class="movieInfo">
<div class="mittitle">${time.movieInfo_title} &nbsp</div>
<div class="mitname">${time.theater_name}관</div>
<div class="mitdate">${time.timeInfo_date} &nbsp</div>
</div>
<div class="wrap2">
</c:if>

<span class="showTime">${time.timeInfo_start}</span>

<c:if test="${status.count % 5 == 0}">
</div>
</c:if>

</c:forEach>
</div>
