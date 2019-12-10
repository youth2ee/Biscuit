<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<form id="frm" action="./memberJoin" method="post">
		<div class="container">
  			<h2>Vertical (basic) form</h2>
   			 <div class="form-group">
     		 <label for="id">아이디</label>
     		 <input type="text" class="form-control" id="id" placeholder="Enter id" name="id">
     		 <div id="idCheck"> </div>
    	</div>
	    <div class="form-group">
	      <label for="pw">비밀번호</label>
	      <input type="password" class="form-control" id="pw" placeholder="Enter password" name="pw">
	    </div>
	    <div class="form-group">
	      <label for="name">이름</label>
	      <input type="text" class="form-control" id="name" placeholder="Enter name" name="name">
	    </div>
	      <div class="form-group">
	      <label for="email">이메일</label>
	      <input type="text" class="form-control" id="email" placeholder="Enter email" name="email">
	    </div>
    	<div id="addressSearch" >
   			 <div class="form-group">
				<label for="post">우편번호</label> 
				<input type="text" class="form-control" id="post" name="post" readonly="readonly">
				<label for="address">주소</label> 
				<input type="text" class="form-control" id="address" readonly="readonly" name="address">
			</div>
   		</div>
	     <div class="form-group">
	      <label for="id">생일</label>
	      <input type="date" class="form-control" id="birth" name="birth">
	    </div>
   		<div class="form-group">
   			 남<input type="radio" name="gender" id="gender" value="M"> 
   			 여<input type="radio" name="gender" id="gender" value="F">
    	</div>
   		<div class="form-group">
     		 <label for="phone">전화번호</label>
     		 <input type="text" class="form-control" id="phone" name="phone">
   		</div>
	    <button type="submit" class="btn btn-default">Submit</button>
	</div>
	
	</form>
	<script type="text/javascript">
		var isIdCheck = false;
		$("#id").blur(function() {
			var id = $('#id').val();
			$.get("./idCheck?id=" + id, function(data) {
				data = data.trim();
				if (data == 1) {
					if (id == "") {
						alert("아이디를 입력하세요")
					} else {
						$("#idCheck").html("사용가능한 아이디입니다.");
						idCheck = true;
					}
				} else {
					$("idCheck").empty();
					/* $("#checkId").css("color","red"); */
					$("#idCheck").html("이미 사용중인 아이디입니다.");
					//$('#id').focus();
					isIdCheck = false;
				}
			});
		});
		$("#addressSearch input[type='text']").click(function() {
			new daum.Postcode({
				oncomplete : function(data) {
					$("#post").val(data.zonecode);
					$("#address").val(data.address);
				}
			}).open();
		});
		$("#signIn").click(function() {
			$("#frm").submit();
		});
	</script>
</body>
</html>