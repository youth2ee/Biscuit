<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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


<div style="height: 500px; width: 300px; overflow: scroll; float: left;">
<c:forEach items="${movieTitle}" var="title">
${title.movieInfo_title}<br>
</c:forEach>
</div>

<div style="height: 500px; width: 300px; overflow: scroll; float: left;">
<ul style="list-style: none;">
<c:forEach items="${movieLoc}" var="loc">
<li class="loc">${loc.cinema_loc}</li>
</c:forEach>
</ul>
</div> 

<div style="height: 500px; width: 300px; overflow: scroll; float: left;">
<ul style="list-style: none;" id="cinema_name"></ul>
</div> 






 <script type="text/javascript">

 	$(document).on("click",".loc",function(){
 		var loc = $(this).text();
 		loc = loc.trim();
 		//alert(loc);

 	
 		$.ajax({
			data : {cinema_loc:loc},
			type : "GET",
			url : "./locSelect",
			success : function(data) {
				data = data.trim();
				$('#cinema_name').html(data);
				
			}
		});

 		});
 	
 

</script> 


</body>
</html>