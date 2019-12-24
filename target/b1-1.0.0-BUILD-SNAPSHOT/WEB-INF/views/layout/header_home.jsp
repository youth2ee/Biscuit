<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<div id="header">
	<div id="head">
	
		<div id="h1">
		<a href="./"> <img alt="CGV" src="./resources/images/home/CGV_BI2.png"> </a>
		</div>

		<div id="h12">
		<div id="h2">
		<c:if test="${member eq null}">
			<div class="himg"><a href="./member/memberLogin"><img alt="" src="./resources/images/home/5_2.png"></a></div>
			<div class="himg"><a href="./member/memberJoin"><img alt="" src="./resources/images/home/6_2.png"></a></div>
		</c:if>
		
		<c:if test="${member ne null }">
		    <div class="himg hname">${member.name}님</div>
			<div class="himg"><a href="./member/memberLogout"><img alt="" src="./resources/images/home/7_2.png"></a></div>
		
		<c:if test="${member.grade eq 6}">
		<div class="himg"><a href="./admin/adminmain"><img alt="" src="./resources/images/home/8_2.png"></a></div>	
		</c:if>
		
		<c:if test="${member.grade ne 6}">
			<div class="himg"><a href="./member/mypage/myPage"><img alt="" src="./resources/images/home/8_2.png"></a></div>	
		</c:if>
			
		</c:if>

		
		
		</div>
		
		<div id="h3">
		<div class="himg2"><a href="./movie/movieSelect"><img alt="" src="./resources/images/home/1_2.png"></a></div>
		<div class="himg2"><a href="./movie/movieList"><img alt="" src="./resources/images/home/2_2.png"></a></div>
		<div class="himg2"><a href="./cinema/cinemaList"><img alt="" src="./resources/images/home/3_2.png"></a></div>
		<div class="himg2"><a href="./store/storeList"><img alt="" src="./resources/images/home/4_2.png"></a></div>
		</div>
		</div>
		
	</div>
</div>