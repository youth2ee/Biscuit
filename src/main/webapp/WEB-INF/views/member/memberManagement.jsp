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
tr input[type="text"] {
	border: none;
}

.new_tr {
	background: #f5f5f5;
}
</style>
</head>
<body>
	memberManagement
	<form method="get" action="./memberManagement" id="frm">
		<input type="hidden" value="1" name="curPage" id="curPage">
				<select name="kind">				
					<option id="kI" value="kI">아이디</option>
					<option id="kN" value="kN">이름</option>
				</select>
			
				<input type="text" name="search" value="${pager.search}">
				
				<button id="searchBtn">검색</button>
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
						<td><input type="text" value="${member.id}" id="id${status.index}" readonly="readonly"></td>
						<td><input type="text" value="${member.pw}" id="pw${status.index}"></td>
						<td><input type="text" value="${member.name}" id="name${status.index}"></td>
						<td><input type="text" value="${member.email}" id="email${status.index}"></td>
						<td><input type="text" value="${member.post}" id="post${status.index}"></td>
						<td><input type="text" value="${member.address}" id="address${status.index}"></td>
						<td><input type="text" value="${member.phone}" id="phone${status.index}"></td>
						<td><input type="text" value="${member.birth}" id="birth${status.index}" readonly="readonly"></td>
						<td><input type="text" value="${member.gender}" id="gender${status.index}"></td>
						<td><input type="text" value="${member.grade}" id="grade${status.index}"></td>
						<td><input type="text" value="${member.grade_point}" id="grade_point${status.index}"></td>
						<td><input type="text" value="${member.signIn_date}" id="signIn_date${status.index}" readonly="readonly"></td>
						<td><input type="button" id="btn${status.index}" value="수정" class="${status.index}"></td>
						<td><input type="button" id="delete${status.index}" value="탈퇴" class="${status.index}"></td>
					</tr>
				</tbody>
			</c:forEach>
			<tbody id="addMember">
			</tbody>
		</table>
		<input type="hidden" name="id" id="id"> 
		<input type="hidden" name="pw" id="pw"> 
		<input type="hidden" name="name" id="name">
		<input type="hidden" name="email" id="email"> 
		<input type="hidden" name="post" id="post"> 
		<input type="hidden" name="address" id="address"> 
		<input type="hidden" name="phone" id="phone"> 
		<input type="hidden" name="birth" id="birth"> 
		<input type="hidden" name="gender" id="gender">
		<input type="hidden" name="grade" id="grade"> 
		<input type="hidden" name="grade_point" id="grade_point">
		<input type="hidden" name="signIn_date" id="signIn_date"> 
		<input type="button" id="add" value="추가">
			
			<div style="width: 100%; margin: 0 auto; text-align: center; padding-top: 10px;">
				<ul class="pagination" style="margin: 0 auto; text-align: center;">
					
					<c:if test="${pager.curBlock gt 1}">
						<li><span id=${pager.startNum - 1} class="list">이전</span></li>
					</c:if>
					
					<c:forEach begin="${pager.startNum}" end="${pager.lastNum}" step="1" var="i">
						<li><span id="${i}" class="list">${i}</span></li>
					</c:forEach>

					<c:if test="${pager.curBlock lt pager.totalBlock}">
						<li><span id="${pager.lastNum + 1}" class="list">다음</span></li>
					</c:if>
					
				</ul>
			</div>
	</form>
	<script type="text/javascript">
	
			var kind = '${pager.kind}';
			if (kind == '') {
				kind = "kI";
			}
			$("#"+kind).prop("selected", true);
			
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
						var attr = $(this).attr('class');
						$("#id").val($("#id"+ attr).val());
						$("#pw").val($("#pw"+attr).val());
						$("#name").val($("#name"+attr).val());
						$("#email").val($("#email"+attr).val());
						$("#post").val($("#post"+attr).val());
						$("#address").val($("#address"+attr).val());
						$("#phone").val($("#phone"+attr).val());
						$("#birth").val($("#birth"+attr).val());
						$("#gender").val($("#gender"+attr).val());
						$("#grade").val($("#grade"+attr).val());
						$("#grade_point").val($("#grade_point"+attr).val());
						$("#signIn_date").val($("#signIn_date"+attr).val());
					}
						
					if ($("#id").val() != "" && $("#pw").val() != ""
							&& $("#name").val() != ""
							&& $("#email").val() != ""
							&& $("#phone").val() != ""
							&& $("#birth").val() != ""
							&& $("#gender").val() != "") {
						$("#frm").attr("action", "./memberManagementAdd");
						$("#frm").attr("method", "post");
						$("#frm").submit();
					} else {
						alert("항목을 모두 입력하세요");
					}
				});
		for (var i = 0; i < '${fn:length("${member}")}'; i++) { // 회원정보 수정

			$("#btn" + i).click(function() {
				var attr = $(this).attr('class');
				$("#id").val($("#id" + attr).val());
				$("#pw").val($("#pw" + attr).val());
				$("#name").val($("#name" + attr).val());
				$("#email").val($("#email" + attr).val());
				$("#post").val($("#post" + attr).val());
				$("#address").val($("#address" + attr).val());
				$("#phone").val($("#phone" + attr).val());
				$("#birth").val($("#birth" + attr).val());
				$("#gender").val($("#gender" + attr).val());
				$("#grade").val($("#grade" + attr).val());
				$("#grade_point").val($("#grade_point" + attr).val());
				$("#signIn_date").val($("#signIn_date" + attr).val());
				$("#frm").attr("action", "./memberManagementUpdate");
				$("#frm").attr("method", "post");
				$("#frm").submit();
			});

			$("#delete" + i).click(function() { // 회원 탈퇴 처리
				$("#id").val($("#id" + $(this).attr('class')).val());
				if(confirm($("#id").val() + " 회원을 탈퇴시킵니다.")){
					location.href = "./memberManagementDelete?id="+ $("#id").val();
				}
			});

		}
	</script>
</body>
</html>