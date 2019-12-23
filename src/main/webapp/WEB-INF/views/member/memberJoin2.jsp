<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="../layout/jquery.jsp" />
<meta name='viewport' content='width=device-width, initial-scale=1'>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/member/util.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/member/main.css">
<meta charset="UTF-8">
<title>영화 그 이상의 감동 CGV</title>
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
		<input type="hidden" value="1" name="curPage" id="curPage"> <select
			name="kind">
			<option id="kI" value="kI">아이디</option>
			<option id="kN" value="kN">이름</option>
		</select> <input type="text" name="search" value="${pager.search}">

		<button id="searchBtn">검색</button>
		<div class="limiter">
			<div class="container-table100">
				<div class="wrap-table100">
					<div class="table">
						<table class="table table-hover" id="memberManage">
							<thead>
								<tr class="row header">
									<th class="cell h_id">ID</th>
									<th class="cell h_pw">PassWord</th>
									<th class="cell h_name">Name</th>
									<th class="cell h_email">Email</th>
									<th class="cell h_post">Post</th>
									<th class="cell h_address">Address</th>
									<th class="cell h_phone">Phone</th>
									<th class="cell h_birth">Birth</th>
									<th class="cell h_gender">Gender</th>
									<th class="cell h_grade">Grade</th>
									<th class="cell h_grade_point">GradePoint</th>
									<th class="cell h_signIn_date">SignIn</th>
									<th class="cell h_update">Update</th>
									<th class="cell h_delete">Delete</th>
								</tr>
							</thead>
							<c:forEach items="${members}" var="member" varStatus="status">
								<c:set var="i" value="1"></c:set>
								<tbody>
									<tr class="row">
										<td class="cell"><input type="text" value="${member.id}"
											class="id" id="id${status.index}" readonly="readonly"></td>
										<td class="cell"><input type="text" value="${member.pw}"
											class="pw" id="pw${status.index}"></td>
										<td class="cell"><input type="text" class="name"
											value="${member.name}" id="name${status.index}"></td>
										<td class="cell"><input type="text" class="email"
											value="${member.email}" id="email${status.index}"></td>
										<td class="cell"><input type="text" class="post"
											value="${member.post}" id="post${status.index}"></td>
										<td class="cell"><input type="text" class="address"
											value="${member.address}" id="address${status.index}"></td>
										<td class="cell"><input type="text" class="phone"
											value="${member.phone}" id="phone${status.index}"></td>
										<td class="cell"><input type="text" class="birth"
											value="${member.birth}" id="birth${status.index}"
											readonly="readonly"></td>
										<td class="cell"><input type="text" class="gender"
											value="${member.gender}" id="gender${status.index}"></td>
										<td class="cell"><input type="text" class="grade"
											value="${member.grade}" id="grade${status.index}"></td>
										<td class="cell"><input type="text" class="grade_point"
											value="${member.grade_point}" id="grade_point${status.index}"></td>
										<td class="cell"><input type="text" class="signIn_date"
											value="${member.signIn_date}" id="signIn_date${status.index}"
											readonly="readonly"></td>
										<td class="cell"><input type="button"
											id="btn${status.index}" value="수정" class="${status.index}"></td>
										<td class="cell"><input type="button"
											id="delete${status.index}" value="탈퇴" class="${status.index}"></td>
									</tr>
								</tbody>
							</c:forEach>
							<tbody id="addMember">
							</tbody>
						</table>
						<input type="hidden" name="id" id="id"> <input
							type="hidden" name="pw" id="pw"> <input type="hidden"
							name="name" id="name"> <input type="hidden" name="email"
							id="email"> <input type="hidden" name="post" id="post">
						<input type="hidden" name="address" id="address"> <input
							type="hidden" name="phone" id="phone"> <input
							type="hidden" name="birth" id="birth"> <input
							type="hidden" name="gender" id="gender"> <input
							type="hidden" name="grade" id="grade"> <input
							type="hidden" name="grade_point" id="grade_point"> <input
							type="hidden" name="signIn_date" id="signIn_date"> <input
							type="button" id="add" value="추가">

						<div
							style="width: 100%; margin: 0 auto; text-align: center; padding-top: 10px;">
							<ul class="pagination"
								style="margin: 0 auto; text-align: center;">

								<c:if test="${pager.curBlock gt 1}">
									<li><span id=${pager.startNum - 1} class="list">이전</span></li>
								</c:if>

								<c:forEach begin="${pager.startNum}" end="${pager.lastNum}"
									step="1" var="i">
									<li><span id="${i}" class="list">${i}</span></li>
								</c:forEach>

								<c:if test="${pager.curBlock lt pager.totalBlock}">
									<li><span id="${pager.lastNum + 1}" class="list">다음</span></li>
								</c:if>

							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
	<script type="text/javascript">
		var kind = '${pager.kind}';
		if (kind == '') {
			kind = "kI";
		}
		$("#" + kind).prop("selected", true);

		$("#add")
				.click(
						function() { // 회원추가 (1)
							$("#add").hide();
							var rowItem = "<tr class='new_tr row'>";
							rowItem += '<td class="cell"><input type="text" id="id${fn:length("${member}")}" class="id" ></td>';
							rowItem += '<td class="cell"><input type="text" id="pw${fn:length("${member}")}" class="pw"></td>';
							rowItem += '<td class="cell"><input type="text" id="name${fn:length("${member}")}" class="name"></td>';
							rowItem += '<td class="cell"><input type="text" id="email${fn:length("${member}")}" class="email"></td>';
							rowItem += '<td class="cell"><input type="text" id="post${fn:length("${member}")}" class="post"></td>';
							rowItem += '<td class="cell"><input type="text" id="address${fn:length("${member}")}" class="address"></td>';
							rowItem += '<td class="cell"><input type="text" id="phone${fn:length("${member}")}" class="phone"></td>';
							rowItem += '<td class="cell"><input type="text" id="birth${fn:length("${member}")}" class="birth"></td>';
							rowItem += '<td class="cell"><input type="text" id="gender${fn:length("${member}")}" class="gender"></td>';
							rowItem += '<td class="cell"><input type="text" id="grade${fn:length("${member}")}" value="5" class="grade"></td>';
							rowItem += '<td class="cell"><input type="text" id="grade_point${fn:length("${member}")}" value="0" class="grade_point"></td>';
							rowItem += '<td colspan = "2" class="cell"><input type="text" id="signIn_date${fn:length("${member}")}" value="2019-12-10" class="signIn_date"></td>';
							rowItem += '<td colspan="2"><input type="button" id="addMemberBtn" value="추가" class="${fn:length("${member}")}"></td>';
							$('#addMember').append(rowItem);
						});

		$(document).on(
				"click",
				"#addMemberBtn",
				function() { // 회원 추가 (2)
					for (var i = 0; i < '${fn:length("${member}")}'; i++) {
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

			$("#delete" + i).click(
					function() { // 회원 탈퇴 처리
						$("#id").val($("#id" + $(this).attr('class')).val());
						if (confirm($("#id").val() + " 회원을 탈퇴시킵니다.")) {
							location.href = "./memberManagementDelete?id="
									+ $("#id").val();
						}
					});

		}
	</script>
</body>
</html>