<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../layout/bootStrap.jsp" />
</head>
<body>

<h1>Movie Select</h1>
<%-- ${movieTitle}
${movieLoc}
${movieCinema} --%>

<div style="height: 500px; width: 300px; overflow: scroll; float: left;">
<c:forEach items="${movieTitle}" var="title">
	${title.movieInfo_title} <br><br>
</c:forEach>
</div>

<div style="height: 500px; width: 300px; overflow: scroll; float: left;">
<ul>
<c:forEach items="${movieLoc}" var="loc">
<%-- 	<input type="text" value="${loc.cinema_loc}" readonly="readonly" class="loc"> --%>
	<li class="loc">${loc.cinema_loc}
		<input type="hidden" value="${loc.cinema_num}">
	</li>
	
</c:forEach>
</ul>
</div> 

<%-- <div style="height: 500px; width: 300px; overflow: scroll; float: left;">
<c:forEach items="${movieLoc}" var="loc">
	<button id="${loc.cinema_loc}" class="ad">${loc.cinema_loc}</button>
</c:forEach>
</div> --%>



<button id="btn">click</button>

<div style="height: 500px; width: 300px; overflow: scroll; float: left;">
<c:forEach items="${movieCinema}" var="cinema">
	${cinema.cinema_name} <br><br>
</c:forEach>
</div>




 <script type="text/javascript">
 

 
 	$(document).on("click",".loc",function(){
 		var loc = $(this).text();
 		loc = loc.trim();
 		alert(loc);
 		
 		$.ajax({
 			data : encodeURI(params),
			data : {
				cinema_loc : loc
			},
			type : "GET",
			url : "./locSelect",
			success : function(data) {
				data = data.trim();
				alert(data);
			}
		});
 		
 		
 		
 		});
 	
 
 
/*  	$('#btn').click(function() {
		$.ajax({
			data : {
				cinema_loc : loc
			},
			type : "GET",
			url : "./locSelect",
			success : function(data) {
				data = data.trim();
				alert(data);
			}
		});
	});  */
	

</script> 


</body>
</html>