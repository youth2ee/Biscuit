<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
input[type="text"] {
	border: none;
}

.new_tr {
	background: #f5f5f5;
}
</style>
</head>
<body>
	memberManagement
	<form method="post" action="./memberManagement" id="frm">
		<table class="table table-hover" id="memberManage">
			<thead>
				<tr>
					<th>ID</th>
					<th>PassWord</th>
					<th>Name</th>
					<th>Email</th>
					<th>Post</th>
					<th>Address</th>
					<th>Phone</th>
					<th>Birth</th>
					<th>Gender</th>
					<th>Grade</th>
					<th>GradePoint</th>
					<th>SignIn</th>
					<th>Update</th>
					<th>Delete</th>
				</tr>
			</thead>
			<c:forEach items="${members}" var="member" varStatus="status">
				<c:set var="i" value="1"></c:set>
				<tbody>
					<tr>
						<td><input type="text" value="${member.id}"
							id="id${status.index}" readonly="readonly"></td>
						<td><input type="text" value="${member.pw}"
							id="pw${status.index}"></td>
						<td><input type="text" value="${member.name}"
							id="name${status.index}"></td>
						<td><input type="text" value="${member.email}"
							id="email${status.index}"></td>
						<td><input type="text" value="${member.post}"
							id="post${status.index}"></td>
						<td><input type="text" value="${member.address}"
							id="address${status.index}"></td>
						<td><input type="text" value="${member.phone}"
							id="phone${status.index}"></td>
						<td><input type="text" value="${member.birth}"
							id="birth${status.index}" readonly="readonly"></td>
						<td><input type="text" value="${member.gender}"
							id="gender${status.index}"></td>
						<td><input type="text" value="${member.grade}"
							id="grade${status.index}"></td>
						<td><input type="text" value="${member.grade_point}"
							id="grade_point${status.index}"></td>
						<td><input type="text" value="${member.signIn_date}"
							id="signIn_date${status.index}" readonly="readonly"></td>
						<td><input type="button" id="btn${status.index}" value="수정"
							class="${status.index}"></td>
						<td><input type="button" id="delete${status.index}"
							value="탈퇴" class="${status.index}"></td>
					</tr>
				</tbody>
			</c:forEach>
			<tbody id="addMember">
			</tbody>
		</table>
		<input type="hidden" name="id" id="id"> <input type="hidden"
			name="pw" id="pw"> <input type="hidden" name="name" id="name">
		<input type="hidden" name="email" id="email"> <input
			type="hidden" name="post" id="post"> <input type="hidden"
			name="address" id="address"> <input type="hidden"
			name="phone" id="phone"> <input type="hidden" name="birth"
			id="birth"> <input type="hidden" name="gender" id="gender">
		<input type="hidden" name="grade" id="grade"> <input
			type="hidden" name="grade_point" id="grade_point"> <input
			type="hidden" name="signIn_date" id="signIn_date"> <input
			type="button" id="add" value="추가">
	</form>
	<script type="text/javascript">
	
			$("#add").click(function() { // 회원추가 (1)
				$("#add").hide();
				var rowItem = "<tr class='new_tr'>";
				rowItem += '<td><input type="text" id="id${fn:length("${member}")}" ></td>';
				rowItem += '<td><input type="text" id="pw${fn:length("${member}")}"></td>';
				rowItem += '<td><input type="text" id="name${fn:length("${member}")}"></td>';
				rowItem += '<td><input type="text" id="email${fn:length("${member}")}"></td>';
				rowItem += '<td><input type="text" id="post${fn:length("${member}")}"></td>';
				rowItem += '<td><input type="text" id="address${fn:length("${member}")}"></td>';
				rowItem += '<td><input type="text" id="phone${fn:length("${member}")}"></td>';
				rowItem += '<td><input type="text" id="birth${fn:length("${member}")}"></td>';
				rowItem += '<td><input type="text" id="gender${fn:length("${member}")}"></td>';
				rowItem += '<td><input type="text" id="grade${fn:length("${member}")}" value="5"></td>';
				rowItem += '<td><input type="text" id="grade_point${fn:length("${member}")}" value="0"></td>';
				rowItem += '<td><input type="text" id="signIn_date${fn:length("${member}")}" value="2019-12-10"></td>';
				rowItem += '<td colspan="2"><input type="button" id="addMemberBtn" value="추가" class="${fn:length("${member}")}"></td>';
				$('#addMember').append(rowItem);
			});
				
			
			$(document).on("click","#addMemberBtn",function(){ // 회원 추가 (2)
				for (var i = 0;i < '${fn:length("${member}")}';i++){
					$("#id").val($("#id"+$(this).attr('class')).val());
					$("#pw").val($("#pw"+$(this).attr('class')).val());
					$("#name").val($("#name"+$(this).attr('class')).val());
					$("#email").val($("#email"+$(this).attr('class')).val());
					$("#post").val($("#post"+$(this).attr('class')).val());
					$("#address").val($("#address"+$(this).attr('class')).val());
					$("#phone").val($("#phone"+$(this).attr('class')).val());
					$("#birth").val($("#birth"+$(this).attr('class')).val());
					$("#gender").val($("#gender"+$(this).attr('class')).val());
					$("#grade").val($("#grade"+$(this).attr('class')).val());
					$("#grade_point").val($("#grade_point"+$(this).attr('class')).val());
					$("#signIn_date").val($("#signIn_date"+$(this).attr('class')).val());
					}
				/* if($("#id").val() != null && $("#pw").val() != null && $("#name").val() != null && $("#email").val() != null && $("#phone").val() != null && $("#birth").val() != null && $("#gender").val() != null)
				{
				 	$("#frm").attr("action", "./memberManagementAdd");
					$("#frm").submit(); 
				} else {
					alert('모든 항목에 값을 입력해야합니다.');
				} */
			});
			for (var i = 0;i < '${fn:length("${member}")}';i++){ // 회원정보 수정
			
				$("#btn"+i).click(function() {
					$("#id").val($("#id"+$(this).attr('class')).val());
					$("#pw").val($("#pw"+$(this).attr('class')).val());
					$("#name").val($("#name"+$(this).attr('class')).val());
					$("#email").val($("#email"+$(this).attr('class')).val());
					$("#post").val($("#post"+$(this).attr('class')).val());
					$("#address").val($("#address"+$(this).attr('class')).val());
					$("#phone").val($("#phone"+$(this).attr('class')).val());
					$("#birth").val($("#birth"+$(this).attr('class')).val());
					$("#gender").val($("#gender"+$(this).attr('class')).val());
					$("#grade").val($("#grade"+$(this).attr('class')).val());
					$("#grade_point").val($("#grade_point"+$(this).attr('class')).val());
					$("#signIn_date").val($("#signIn_date"+$(this).attr('class')).val());
					$("#frm").submit();
				});
				
				$("#delete"+i).click(function() { // 회원 탈퇴
					alert($(this).attr('class'));
					$("#id").val($("#id"+$(this).attr('class')).val());
					location.href = "./memberManagementDelete?id="+	$("#id").val();
				});
				
			}
 		</script>
</body>
</html>