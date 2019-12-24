<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link
	href="${pageContext.request.contextPath}/resources/css/member/join.css"
	rel="stylesheet">
<title>VueJS/VeeValidate Signup form Built with Bulma CSS</title>

<!-- Bulma CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.7.1/css/bulma.min.css" />

<!-- Material Icons -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Playfair+Display:700i,900i|Work+Sans:300,400,500,700"
	rel="stylesheet">
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Amarante');
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
	outline: none;
	-webkit-font-smoothing: antialiased;
	-webkit-text-size-adjust: 100%;
	-ms-text-size-adjust: 100%;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}
html {
	overflow-y: scroll;
}
tr input[type="text"] {
	border: none;
}
input[type="button"] {
	background: #ffffff;
	border: transparent;
	box-shadow: 0px 0px 2px 0px #a6a6a6;
}
button {
	background: transparent;
	border: transparent;
	box-shadow: 0px 0px 2px 0px #a6a6a6;
}
body {
	background: #eee url('https://i.imgur.com/eeQeRmk.png');
	/* https://subtlepatterns.com/weave/ */
	font-family: Helvetica, Arial, sans-serif;
	font-size: 62.5%;
	line-height: 1;
	color: #585858;
	padding: 22px 10px;
	padding-bottom: 55px;
}
::selection {
	background: #5f74a0;
	color: #fff;
}
::-moz-selection {
	background: #5f74a0;
	color: #fff;
}
::-webkit-selection {
	background: #5f74a0;
	color: #fff;
}
br {
	display: block;
	line-height: 1.6em;
}
article, aside, details, figcaption, figure, footer, header, hgroup,
	menu, nav, section {
	display: block;
}
ol, ul {
	list-style: none;
}
input, textarea {
	-webkit-font-smoothing: antialiased;
	-webkit-text-size-adjust: 100%;
	-ms-text-size-adjust: 100%;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	outline: none;
}
blockquote, q {
	quotes: none;
}
blockquote:before, blockquote:after, q:before, q:after {
	content: '';
	content: none;
}
strong, b {
	font-weight: bold;
}
table {
	border-collapse: collapse;
	border-spacing: 0;
}
img {
	border: 0;
	max-width: 100%;
}
h1 {
	font-family: 'Amarante', Tahoma, sans-serif;
	font-weight: bold;
	font-size: 3.6em;
	line-height: 1.7em;
	margin-bottom: 10px;
	text-align: center;
}
/** page structure **/
#wrapper {
	display: block;
	width: 80%;
	background: #fff;
	margin: 0 auto;
	padding: 10px 17px;
	-webkit-box-shadow: 2px 2px 3px -1px rgba(0, 0, 0, 0.35);
}
#keywords {
	margin: 0 auto;
	font-size: 1.2em;
	margin-bottom: 15px;
}
#keywords thead {
	cursor: pointer;
	background: #c9dff0;
}
#keywords thead tr th {
	font-weight: bold;
	padding: 12px 30px;
	padding-left: 42px;
}
#keywords thead tr th span {
	padding-right: 20px;
	background-repeat: no-repeat;
	background-position: 100% 100%;
}
#keywords thead tr th.headerSortUp, #keywords thead tr th.headerSortDown
	{
	background: #acc8dd;
}
#keywords thead tr th.headerSortUp span {
	background-image: url('https://i.imgur.com/SP99ZPJ.png');
}
#keywords thead tr th.headerSortDown span {
	background-image: url('https://i.imgur.com/RkA9MBo.png');
}
#keywords tbody tr {
	color: #555;
}
#keywords tbody tr td {
	text-align: center;
	padding: 15px 10px;
}
#keywords tbody tr td.lalign {
	text-align: left;
}
.new_tr {
	background: #f5f5f5;
}
.selecter {
	margin-bottom: 10px;
}
.gender input[type="text"] {
	width: 40px;
}
.grade input[type="text"] {
	width: 50px;
}
.grade_point input[type="text"] {
	width: 30px;
}
.insert {
	background-color: #ccc; 	
}
</style>
</head>

<body>
	<form method="get" action="./memberManagement" id="frm">
		<div id="wrapper">
			<h1>Member</h1>
			<div class="selecter">
				<input type="hidden" value="1" name="curPage" id="curPage">
				<select name="kind">
					<option id="kI" value="kI">아이디</option>
					<option id="kN" value="kN">이름</option>
				</select> <input type="text" name="search" value="${pager.search}">
				<button id="searchBtn">검색</button>
				<input
					type="button" id="add" value="추가">
			</div>
			<div id = 'tableWrap' style="overflow: auto; height: 800px; padding-bottom: 15px; padding-left: 1px;">
				<table id="keywords" cellspacing="0" cellpadding="0">
					<thead>
						<tr>
							<th><span>ID</span></th>
							<th><span>PassWord</span></th>
							<th><span>Name</span></th>
							<th><span>Email</span></th>
							<th><span>Post</span></th>
							<th><span>Address</span></th>
							<th><span>Phone</span></th>
							<th><span>Birth</span></th>
							<th><span>Gender</span></th>
							<th><span>Grade</span></th>
							<th><span>GradePoint</span></th>
							<th><span>SignIn</span></th>
							<th><span>Update</span></th>
							<th><span>Delete</span></th>
						</tr>
					</thead>
					<tbody id="addMember">
					</tbody>
					<tbody>
						<c:forEach items="${members}" var="member" varStatus="status">
							<c:set var="i" value="1"></c:set>
							<tr>
								<td class="lalign"><input type="text" value="${member.id}"
									class="id" id="id${status.index}" readonly="readonly"></td>
								<td><input type="text" value="${member.pw}" class="pw"
									id="pw${status.index}"></td>
								<td><input type="text" class="name" value="${member.name}"
									id="name${status.index}"></td>
								<td><input type="text" class="email"
									value="${member.email}" id="email${status.index}"></td>
								<td><input type="text" class="post" value="${member.post}"
									id="post${status.index}"></td>
								<td><input type="text" class="address"
									value="${member.address}" id="address${status.index}"></td>
								<td><input type="text" class="phone"
									value="${member.phone}" id="phone${status.index}"></td>
								<td><input type="text" class="birth"
									value="${member.birth}" id="birth${status.index}"
									readonly="readonly"></td>
								<td><input type="text" class="gender"
									value="${member.gender}" id="gender${status.index}"></td>
								<td><input type="text" class="grade"
									value="${member.grade}" id="grade${status.index}"></td>
								<td><input type="text" class="grade_point"
									value="${member.grade_point}" id="grade_point${status.index}"></td>
								<td><input type="text" class="signIn_date"
									value="${member.signIn_date}" id="signIn_date${status.index}"
									readonly="readonly"></td>
								<td><input type="button" id="btn${status.index}" value="수정"
									class="${status.index}"></td>
								<td><input type="button" id="delete${status.index}"
									value="탈퇴" class="${status.index}"></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<input type="hidden" name="id" id="id"> <input type="hidden"
					name="pw" id="pw"> <input type="hidden" name="name"
					id="name"> <input type="hidden" name="email" id="email">
				<input type="hidden" name="post" id="post"> <input
					type="hidden" name="address" id="address"> <input
					type="hidden" name="phone" id="phone"> <input type="hidden"
					name="birth" id="birth"> <input type="hidden" name="gender"
					id="gender"> <input type="hidden" name="grade" id="grade">
				<input type="hidden" name="grade_point" id="grade_point"> <input
					type="hidden" name="signIn_date" id="signIn_date"> 

			</div>
		</div>
	</form>
	<script type="text/javascript">
		var kind = '${pager.kind}';
		if (kind == '') {
			kind = "kI";
		}
		$("#" + kind).prop("selected", true);
		$("#add").click(function() { // 회원추가 (1)
							$("#add").hide();
							var rowItem = "<tr class='new_tr row'>";
							rowItem += '<td class="cell"><input type="text" id="id${fn:length("${member}")}" class="id"  placeholder="아이디"></td>';
							rowItem += '<td class="cell"><input type="text" id="pw${fn:length("${member}")}" class="pw"  placeholder="비밀번호"></td>';
							rowItem += '<td class="cell"><input type="text" id="name${fn:length("${member}")}" class="name" placeholder="이름"></td>';
							rowItem += '<td class="cell"><input type="text" id="email${fn:length("${member}")}" class="email" placeholder="이메일"></td>';
							rowItem += '<td class="cell"><input type="text" id="post${fn:length("${member}")}" class="post" placeholder="우편번호"></td>';
							rowItem += '<td class="cell"><input type="text" id="address${fn:length("${member}")}" class="address" placeholder="주소"></td>';
							rowItem += '<td class="cell"><input type="text" id="phone${fn:length("${member}")}" class="phone" placeholder="전화번호"></td>';
							rowItem += '<td class="cell"><input type="text" id="birth${fn:length("${member}")}" class="birth" placeholder="생일"></td>';
							rowItem += '<td class="cell"><input type="text" id="gender${fn:length("${member}")}" class="gender" placeholder="성별"></td>';
							rowItem += '<td class="cell"><input type="text" id="grade${fn:length("${member}")}" value="5" class="grade"></td>';
							rowItem += '<td class="cell"><input type="text" id="grade_point${fn:length("${member}")}" value="0" class="grade_point"></td>';
							rowItem += '<td class="cell"><input type="text" id="signIn_date${fn:length("${member}")}" value="Default" class="signIn_date" readonly="readonly"></td>';
							rowItem += '<td colspan="2"><input type="button" id="addMemberBtn" value="추가" class="${fn:length("${member}")}" style="width: 74%;"></td>';
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
				alert('${fn:length("${members}")}');
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
			$("input[type='text']").focus(function() {
				$(this).addClass('insert');
			});
			$("input[type='text']").blur(function() {
				$(this).removeClass('insert');
			});
		}
	</script>
</body>
</html>