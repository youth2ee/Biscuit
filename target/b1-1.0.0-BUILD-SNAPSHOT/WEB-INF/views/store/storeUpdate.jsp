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
		<h2>Store Update Form</h2>
		<form class="form-horizontal" action="storeUpdate" method="post" enctype="multipart/form-data">
			
			<input type="hidden" value="${update.store_num}" class="form-control" id="store_num" name="store_num">
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="store_name">상품명:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="store_name" value="${update.store_name}" name="store_name">
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="store_price">상품가격:</label>
				<div class="col-sm-10">
					<input type="number" class="form-control" id="store_price" value="${update.store_price}" name="store_price">
				</div>
			</div>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="store_note">상품구성:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="store_note" value="${update.store_note}" name="store_note">
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
			<script type="text/javascript">
				$('#store_package').val(${update.store_package});
			</script>
			
			<div class="form-group">
				<label class="control-label col-sm-2" for="store_img">상품이미지:</label>
				<div class="col-sm-10">
					<input type="file" class="form-control" id="store_img" name="file">
				</div>
				
				<div class="select_img">
					<img alt="" src="../resources/upload/store/${update.store_img}">
					<input type="hidden" name="store_img" value="${update.store_img}">
					<input type="hidden" name="store_thumbimg" value="${update.store_thumbimg}">
				</div>	
				
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
					<button type="button" id="btn_back" class="btn btn-danger">취소</button>
					<input type="submit" class="btn btn-info" value="등록">
					
					<script type="text/javascript">
						$('#btn_back').click(function() {
							history.back();
							//location.href = "storeSelect?store_num=" + ${update.store_num} + "&&store_package=" + ${update.store_package};
						});
					</script>
				</div>
			</div>
		</form>
	</div>

</body>
</html>