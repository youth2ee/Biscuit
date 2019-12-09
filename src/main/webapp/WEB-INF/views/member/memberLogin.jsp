<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h2>Login</h2>
		<form action="./memberLogin" method="post">
			<div class="form-group">
				<label for="id">아이디:</label> <input type="text" id="id" placeholder="Enter id" name="id">
			</div>
			<div class="form-group">
				<label for="pw">비밀번호:</label> <input type="password" id="pw" placeholder="Enter password" name="pw">
			</div>
			<div class="checkbox">
				<label><input type="checkbox" name="remember"> Remember me</label>
			</div>
			<button type="submit" class="btn btn-default">Submit</button>
		</form>
	</div>
</body>
</html>