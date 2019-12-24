<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 그 이상의 감동 CGV</title>
<c:import url="../layout/jquery.jsp" />
<c:import url="../layout/bootStrap.jsp" />
</head>
<body>

	<div class="container">
		<h2>Store Write Form</h2>
		<form class="form-horizontal" action="storeWrite" method="post" enctype="multipart/form-data">
			<div class="form-group">
				<label class="control-label col-sm-2" for="store_name">상품명:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="store_name" placeholder="상품명을 입력하세요" name="store_name">
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="store_price">상품가격:</label>
				<div class="col-sm-10">
					<input type="number" class="form-control" id="store_price" style="IME-MODE:disabled;" placeholder="상품가격을 입력하세요" name="store_price">
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
						<option value="1">1.패키지</option>
						<option value="2">2.영화관람권</option>
						<option value="3">3.콤보</option>
						<option value="4">4.팝콘</option>
						<option value="5">5.음료</option>
						<option value="6">6.스낵</option>
					</select>
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="store_img">상품이미지:</label>
				<div class="col-sm-10">
					<input type="file" class="form-control" id="store_img" name="file"> <!-- controller에서 MultipartFile file로 받으니까 name도 file로 해줘야함 -->
				</div>
				
				<div class="select_img"><img alt="" src=""></div>	
				
				<script type="text/javascript">
				$('#store_img').change(function() {
						if(this.files && this.files[0]){
							var reader = new FileReader;
							reader.onload = function(data) {
								$('.select_img img').attr("src", data.target.result).width(300);
							}
							reader.readAsDataURL(this.files[0]);
						}
					});
				</script>
				
			</div>
			
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-info" value="등록">
				</div>
			</div>
		</form>
	</div>
	
<script type="text/javascript">
</script>	
</body>
</html>