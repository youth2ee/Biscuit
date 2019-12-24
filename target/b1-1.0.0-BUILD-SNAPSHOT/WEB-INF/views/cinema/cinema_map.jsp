<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>영화 그 이상의 감동 CGV</title>
    
</head>
<body>


<script>

var xhr = new XMLHttpRequest(); 
var url = 'http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_json.jsp?collection=kmdb_new&nation=대한민국'); /*URL*/ 
var queryParams = '?' + encodeURIComponent('ServiceKey=KDJKT151128Z9OMAQ0II'); /*Service Key*/ 
queryParams += '&' + encodeURIComponent('val001') + '=' + encodeURIComponent('2018')); /*상영년도*/ 
queryParams += '&' + encodeURIComponent('val002') + '=' + encodeURIComponent('01')); /*상영월*/ 
xhr.open('GET', url + queryParams); 

xhr.onreadystatechange = function () { 
	if (this.readyState == 4) { 
	alert('Status: '+this.status+'Headers: '+JSON.stringify(this.getAllResponseHeaders())+'Body: '+this.responseText); } 
	}; 

xhr.send('');




</script>
</body>
</html>
