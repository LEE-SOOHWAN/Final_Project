<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forgot</title>
	
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>SB Admin 2 - Forgot Password</title>

	<!-- Custom fonts for this template-->
	<link href="<%=request.getContextPath() %>/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  	<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
	
	<!-- Custom styles for this template-->
	<link href="<%=request.getContextPath() %>/resources/css/sb-admin-2.min.css" rel="stylesheet">
	
	<script type="text/javascript">
		function codePrint() {
			var form1 = {email:$("#exampleInputEmail").val()};
			$.ajax({
				url : "send",
				type : "post",
				data : form1,
				success : function(data){
					num = data;					
				}
			})
		}
		function codechk() {
			var c = document.getElementById("exampleInputCode").value;
			var form2 = {id:$("#exampleInputId").val()};
			$.ajax({
				url : "pwreset2",
				type : "get",
				data : form2,
				success : function(data){
					if(num == c){
						alert("인증에 성공하셨습니다\n"
							+ "당신의 비밀번호는 "+ data +" 입니다");
						location.href = "login";
					}else{
						alert("인증에 실패하셨습니다");
						location.href = "pwfind";
					}
				}
			})
		}		
	</script>
</head>
<body class="bg-gradient-primary">

	<div class="container">

		<!-- Outer Row -->
		<div class="row justify-content-center">

			<div class="col-xl-10 col-lg-12 col-md-9">

				<div class="card o-hidden border-0 shadow-lg my-5">
					<div class="card-body p-0">
						<!-- Nested Row within Card Body -->
						<div class="row">
							<div class="col-lg-6 d-none d-lg-block bg-password-image"></div>
							<div class="col-lg-6">
								<div class="p-5">
									<div class="text-center">
										<h1 class="h4 text-gray-900 mb-2">비밀번호 찾기</h1>
										<p class="mb-4">아래에 아이디와 이메일을 입력하시면<br> 인증번호를 전송해드립니다</p>
									</div>
									<form class="user" id="checkemail">
										<div class="form-group">
											<input type="email" class="form-control form-control-user"
												name="id" id="exampleInputId" aria-describedby="emailHelp"
												placeholder="아이디를 입력해주세요">
										</div>
										<div class="form-group">
											<input type="email" class="form-control form-control-user"
												name="email" id="exampleInputEmail" aria-describedby="emailHelp"
												placeholder="이메일을 입력해주세요">
										</div>
										<a class="btn btn-primary btn-user btn-block" onclick="codePrint()"> 인증번호 발급 </a><br>
										<div class="form-group">
											<input type="email" class="form-control form-control-user"
												name="code" id="exampleInputCode" aria-describedby="emailHelp"
												placeholder="인증번호를 입력해주세요">
										</div>
										<a class="btn btn-primary btn-user btn-block" onclick="codechk()"> 확인 </a>
									</form>
									<hr>
									<div class="text-center">
										<a class="small" href="select">회원가입</a>
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