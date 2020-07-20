<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tSignup</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<title>SB Admin 2 - Register</title>
	
	<!-- Custom fonts for this template-->
	<link href="<%=request.getContextPath() %>/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
		type="text/css">
	<link
		href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
		rel="stylesheet">
	
	<!-- Custom styles for this template-->
	<link href="<%=request.getContextPath() %>/resources/css/sb-admin-2.min.css" rel="stylesheet">
	<script type="text/javascript">
		function doit() {
		 	var form = {id:$("#exampleId").val()};
			console.log(form);
			$.ajax({
				url : "idcheck",
				type : "post",
				data : form,
				success : function(data){
					console.log(data);
					if(data != ""){
						alert("중복된 아이디 입니다");
					}else if(data == ""){
						alert("사용가능한 아이디 입니다");
 					}
				}
			})
 		}
	</script>
	<script type="text/javascript">
		function dooit(){
			var id = document.getElementById("exampleId").value;
			var pw = document.getElementById("examplePw").value;
			var pwchk = document.getElementById("examplePwchk").value;
			var age = document.getElementById("exampleAge").value;
			var name = document.getElementById("exampleName").value;
			var email = document.getElementById("exampleEmail").value;
			if(id == ""){
				alert("아이디는 필수 입력사항 입니다");
			}else if(pw == ""){
				alert("비밀번호는 필수 입력사항 입니다");
			}else if(pwchk == ""){
				alert("비밀번호 확인은 필수 입력사항 입니다");
			}else if(age == ""){
				alert("나이는 필수 입력사항 입니다");
			}else if(name == ""){
				alert("이름은 필수 입력사항 입니다");
			}else if(email ==""){
				alert("이메일은 필수 입력사항 입니다");
			}else{
				form.submit();
			}
		}
		function pwcheck() {
			var pw1 = document.getElementById("examplePw").value;
			var pw2 = document.getElementById("examplePwchk").value;
			if (pw1 == pw2) {
				document.getElementById("label_pw").innerHTML = "일치합니다";
				$("#label_pw").css("color","red");
			} else {
				document.getElementById("label_pw").innerHTML = "일치하지 않습니다";
				$("#label_pw").css("color","red");
				document.getElementById("examplePw").value = "";
				document.getElementById("examplePwchk").value = "";
				document.getElementById("examplePw").focus();
			} 
		}
	</script>
	
</head>
<body class="bg-gradient-primary">

	<div class="container">

		<div class="card o-hidden border-0 shadow-lg my-5">
			<div class="card-body p-0">
				<!-- Nested Row within Card Body -->
				<div class="row">
					<div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
					<div class="col-lg-7">
						<div class="p-5">
							<div class="text-center">
								<h1 class="h4 text-gray-900 mb-4">계정 생성</h1>
							</div>
 							<form class="user" action="signchk" id="form" method="post">
								<div class="form-group">
									<input type="hidden" class="form-control form-control-user"
											name="status" id="exampleStatus" value="학부모">
								</div>
								<div class="form-group">
									<input type="text" class="form-control form-control-user"
										name="name" id="exampleName" placeholder="이름">
								</div>
								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<input type="email" class="form-control form-control-user"
											name="id" id="exampleId" placeholder="아이디">
									</div>
									<div class="col-sm-6">
										<input type="button" class="btn btn-primary btn-user" value="중복체크" onclick="doit()">
									</div>
								</div>
								<div class="form-group row">
									<div class="col-sm-6 mb-3 mb-sm-0">
										<input type="password" class="form-control form-control-user"
											name="pw" id="examplePw" placeholder="비밀번호">
									</div>
									<div class="col-sm-6 mb-3 mb-sm-0">
										<input type="password" class="form-control form-control-user"
											name="pwchk" id="examplePwchk" placeholder="비밀번호 확인" onchange="pwcheck()">
										<label id="label_pw"></label>
									</div>
									<div class="col-sm-6 mb-3 mb-sm-0">
										<input type="text" class="form-control form-control-user"
											name="age" id="exampleAge" placeholder="생년월일">
									</div>
									<div class="col-sm-6 mb-3 mb-sm-0">
										<input type="text" class="form-control form-control-user"
											name="parNum" id="exampleStuNum" placeholder="전화번호">
									</div>
								</div>
								<div class="form-group">
									<input type="text" class="form-control form-control-user"
											name="addr" id="exampleAddress" placeholder="주소">
								</div>
								<div class="form-group">
									<input type="text" class="form-control form-control-user"
											name="email" id="exampleEmail" placeholder="이메일">
								</div>
								<a class="btn btn-primary btn-user btn-block" onclick="dooit()">회원가입 </a>
 							</form>
							<hr>
							<div class="text-center">
								<a class="small" href="pwfind">비밀번호 찾기</a>
							</div>
							<div class="text-center">
								<a class="small" href="login">이미 회원가입을 하셨나요?</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="<%=request.getContextPath() %>/resources/vendor/jquery/jquery.min.js"></script>
	<script src="<%=request.getContextPath() %>/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="<%=request.getContextPath() %>/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="<%=request.getContextPath() %>/resources/js/sb-admin-2.min.js"></script>

</body>
</html>