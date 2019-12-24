<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<div id = "timeTable"><H1>상영시간표</H1></div>
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

<form action="../movie/movieSelect" method="get" class="frm" >
<input type="hidden" name="movieInfo_name" value="${time.movieInfo_title}">
<button class="myBtn2" style="float: left; background-color: transparent;"><span class="showTime">${time.timeInfo_start}</span></button>
</form>

<c:if test="${status.count % 5 == 0}">
</div>
</c:if>

</c:forEach>
</div>

