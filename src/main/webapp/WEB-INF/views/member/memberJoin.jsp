<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
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

</head>

<body>
	<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<form id="frm" action="./memberJoin" method="post">
		<div class="skewed-bg">
			<section class="section" id="app">
				<div class="container">
					<div class="columns is-paddingless is-radiusless form-wrapper">
						<div
							class="column is-one-fifth has-background-brand has-text-white">
							<div class="form-heading-container is-paddingless is-radiusless">
								<h1
									class="is-size-large has-text-weight-bold is-cursive is-rotated-minus-ninty form-heading">CGV</h1>
							</div>
						</div>
						<div class="column has-text-black form-container">
							<div class="column form-header">
								<h2
									class="has-text-weight-bold title is-paddingless is-marginless">New
									User?</h2>
								<p class="has-text-weight-light caption">Use the form below
									to create your account.</p>
							</div>
							<div class="column">
								<div class="columns">
									<div class="column">
										<div class="field">
											<label class="label">ID<b> *</b></label>
											<div class="control">
												<input type="text" id="id" placeholder="Enter id" name="id">
												<div id="idCheck"></div>
											</div>
										</div>
										<div class="field">
											<label class="label">Password<b> *</b></label>
											<div class="control">
												<input type="password" id="pw" placeholder="Enter password"
													name="pw">
												
											</div>
										</div>
										<div class="form-group">
											<label class="label">Password Check</label>
											<div class="control">
												<input type="password" id="pwConfirm">
												<div id="pwConfirmCheck"></div>
											</div>
										<div id="pwCheck" class="pwCheck"></div></div>

										<div class="field">
											<label class="label">Phone<b> *</b></label>
											<div class="control">
												<input type="text" id="phone" name="phone">
												<div id="pwConfirmCheck"></div>
											</div>
										</div>
										<div class="field">
											<label class="label">Email<b> *</b></label>
											<div class="control">
												<input type="text" id="email" placeholder="Enter email"
													name="email">
												<div id="emailCheck"></div>
											</div>
										</div>
									</div>
									<div class="column">
										<div class="field">
											<label class="label">Name<b> *</b></label>
											<div class="control has-icons-right">
												<input type="text" id="name" name="name"> <span
													class="icon is-small is-right"> </span>
												<div id="nameCheck"></div>
											</div>
											<div class="field">
												<label class="label">Birth<b> *</b></label>
												<div class="control has-icons-right">
													<input type="date" class="form-control" id="birth"
														name="birth">
													<div id="birthCheck"></div>
												</div>

											</div>
											<div class="field">
												<label class="label">Gender<b> *</b></label>
												<div class="control gender-container">
													<label class="custom-radio">Male<input type="radio"
														name="gender" id="gender" value="M" checked="checked">
														<span class="checkmark"></span>
													</label> <label class="custom-radio">Female <input
														type="radio" name="gender" id="gender" value="F">
														<span class="checkmark"></span>
													</label>
												</div>
											</div>
											<div id="addressSearch">
												<div class="field">
													<label class="label">Post</label>
													<div class="control">
														<input type="text" class="form-control" id="post"
															name="post" readonly="readonly">
													</div>
												</div>
												<div class="field">
													<label class="label">Address</label>
													<div class="control">
														<input type="text" class="form-control" id="address"
															readonly="readonly" name="address">
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="column form-footer">
									<div class="columns">
										<div class="column login-link">
											Have an account? <a href="./memberLogin"
												class="is-link has-text-brand">Login</a>
										</div>
										<div class="column">
											<div class="field">
												<div class="control">
													<button type="button" style="background-color: #e71a0f;" id="signIn"
														class="button has-text-white has-background-brand is-cursive is-radiusless is-size-5 btn-signup">Complete
														SignUp</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</form>
	<script type="text/javascript">
		var isIdCheck = false;
		var isEmailCheck = false;
		$("#id").blur(function() {
			var id = $('#id').val();
			$.get("./idCheck?id=" + id, function(data) {
				data = data.trim();
				if (data == 1) {
					if (id == "") {
						$("#idCheck").html("아이디를 입력하세요.");
					} else {
						$("#idCheck").html("사용가능한 아이디입니다.");
						idCheck = true;
					}
				} else {
					$("#idCheck").html("이미 사용중인 아이디입니다.");
					isIdCheck = false;
				}
			});
		});
		$("#email").blur(function() {
			var email = $('#email').val();
			$.get("./emailCheck?email=" + email, function(data) {
				data = data.trim();
				if (data == 1) {
					if (email == "") {
						$("#emailCheck").html("이메일을 입력하세요.");
					} else {
						$("#emailCheck").html("사용가능한 이메일입니다.");
						emailCheck = true;
					}
				} else {
					$("#emailCheck").html("이미 사용중인 이메일입니다.");
					isEmailCheck = false;
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
		$("#pw").blur(function() {
			if ($("#pw").val() == "") {
				$("#pwCheck").html= "비밀번호를 입력하세요.";
			} else if ($("#pw").val().length < 4) {
				$("#pwCheck").html = "4자리 이상 입력하세요.";
			} else {
				$("#pwCheck").html = "";
			}
		});
		$("#pw").change(function() {
			$("#pwConfirm").val("");
			$("#pwConfirmCheck").html = "";
		});
		$("#pwConfirm").blur(
				function() {
					if ($("#pw").val() != $("#pwConfirm").val()) {
						$("#pwConfirmCheck").html = "비밀번호가 일치하지 않습니다.";
					} else {
						$("#pwConfirmCheck").html = "사용 가능한 비밀번호 입니다.";
					}
				})
		$("#name").blur(function() {
			if ($("#name").val() == "")
				$("#nameCheck").html = "이름을 입력하세요.";
			else
				$("#nameCheck").html = "";
		});
		$("#signIn").click(
				function() {
					if ($("#pw").val() == $("#pwConfirm").val()
							&& isEmailCheck == true && isIdCheck == true
							&& $("#phone").val() != ""
							&& $("#birth").val() != ""
							&& $("#name").val() != "")
						$("#frm").submit();
					else
						alert("필수 항목을 모두 작성 하십시오");
				});
	</script>


</body>

</html>