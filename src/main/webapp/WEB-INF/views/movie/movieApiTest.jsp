<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<!-- <script type="text/javascript">
var xhr = new XMLHttpRequest();
var url = 'http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_json.jsp?collection=kmdb_new&nation=대한민국';
var queryParams = '?ServiceKey="KDJKT151128Z9OMAQ0II';/*Service Key*/
		queryParams += '&' + encodeURIComponent('val001') + '=' + encodeURIComponent('2018'); /*상영년도*/
 		queryParams += '&' + encodeURIComponent('val002') + '=' + encodeURIComponent('01');
xhr.open('GET', url + queryParams); xhr.onreadystatechange = function () { if (this.readyState == 4) { alert('Status: '+this.status+'Headers: '+JSON.stringify(this.getAllResponseHeaders())+'Body: '+this.responseText); } }; xhr.send('');
</script> -->
<!-- <script type="text/javascript">

$.ajax({
	type: "GET",
	url: "http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_json.jsp",
	data:{
		ServiceKey: "A1876262RUTFUBSX3O2",
		listCount: 10,
		releaseDts : "20191101"
	},
	success: function(data) {
		console.log(data.KRW);
	}
});

</script> -->
</body>
</html>