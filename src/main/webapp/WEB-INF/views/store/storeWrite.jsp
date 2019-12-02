<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:import url="../layout/bootStrap.jsp" />
</head>
<body>

	<div class="container">
		<h2>Store Write Form</h2>
		<form class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group">
				<label class="control-label col-sm-2" for="store_name">상품명:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="store_name" placeholder="상품명을 입력하세요" name="store_name">
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="store_price">상품가격:</label>
				<div class="col-sm-10">
					<input type="number" class="form-control" id="store_price" placeholder="상품가격을 입력하세요" name="store_price">
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="store_note">상품구성:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="store_note" placeholder="상품구성을 입력하세요" name="store_note">
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="store_package">패키지번호:</label>
				<div class="col-sm-10">
					<select class="form-control" id="store_package" name="store_package">
						<option>1.패키지</option>
						<option>2.영화관람권</option>
						<option>3.콤보</option>
						<option>4.팝콘</option>
						<option>5.음료</option>
						<option>6.스낵</option>
					</select>
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="store_img">상품이미지:</label>
				<div class="col-sm-10">
					<input type="file" class="form-control" id="store_img" name="store_img">
					
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-info">Submit</button>
				</div>
			</div>
		</form>
	</div>


</body>
</html>