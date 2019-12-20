<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>common result</title>
</head>
<body>

<script type="text/javascript">
 	var result = confirm("${msg}");
 	if(result){
 		
 		location.href="${path1}";
 	}else {
 		location.href="${path2}?camount=${param.camount}";
 	}
</script>

</body>
</html>