<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>


<!-- Custom styles for this template-->
<link
	href="<%=request.getContextPath() %>/resources/css/sb-admin-2.min.css"
	rel="stylesheet">
	
	<script type="text/javascript">
		function go() {
			saveid();
			var id = document.getElementById("exampleId").value;
			var pw = document.getElementById("examplePw").value;
			if(id == ""){
				alert("아이디는 필수 입력사항 입니다");
			}else if(pw == ""){
				alert("비밀번호는 필수 입력사항 입니다");
			}else {
				form2.submit();
			}
		}
		$(function(){
			$("#exampleId").attr("value",getCookie('key'));
			
		})
		/* 
		if('${alert}'=="loginfail"){
			alert("아이디 혹은 비밀번호가 일치하지 않습니다");
		}
		*/
	</script>
	<script>
		function saveid(){
	        if($("#save").is(":checked")){ // ID 저장하기를 체크한 상태라면,
	            setCookie("key", $("#exampleId").val(), 7); // 7일 동안 쿠키 보관
	        }else{
	        	deleteCookie("key");
	        }
	    }
	
		function setCookie(cookieName, value, exdays){
		    var exdate = new Date();
		    exdate.setDate(exdate.getDate() + exdays);
		    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
		    document.cookie = cookieName + "=" + cookieValue;
		}
		
		function getCookie(cookieName) {
		    cookieName = cookieName + '=';
		    var cookieData = document.cookie;
		    var start = cookieData.indexOf(cookieName);
		    var cookieValue = '';
		    if(start != -1){
		        start += cookieName.length;
		        var end = cookieData.indexOf(';', start);
		        if(end == -1)end = cookieData.length;
		        cookieValue = cookieData.substring(start, end);
		    }
		    return unescape(cookieValue);
		}
		
		function deleteCookie(cookieName){
		    var expireDate = new Date();
		    expireDate.setDate(expireDate.getDate() - 1);
		    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
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
							<div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
							<div class="col-lg-6">
								<div class="p-5">
									<div class="text-center">
										<h1 class="h4 text-gray-900 mb-4">환영합니다</h1>
									</div>
									<form class="user" action="loginchk" id="form2" method="post">
										<div class="form-group">
											<input type="email" class="form-control form-control-user"
												name=id id="exampleId" aria-describedby="emailHelp"
												placeholder="아이디">
										</div>
										<div class="form-group">
											<input type="password" class="form-control form-control-user"
												name=pw id="examplePw" placeholder="비밀번호">
										</div>
										<div class="form-group">
											<input type="checkbox" id="save">
											<label>아이디 저장</label>
										<!-- 
											<div class="custom-control custom-checkbox small">
												<input type="checkbox" class="custom-control-input" 
													id="customCheck"> 
												<label class="custom-control-label" for="customCheck">아이디 저장</label>
											</div>
										 -->
										</div>
 										<a class="btn btn-primary btn-user btn-block" onclick="go()"> 로그인 </a>
									</form>
									<hr>
									<div class="text-center">
										<a class="small" href="pwfind">비밀번호 찾기</a>
									</div>
									<div class="text-center">
										<a class="small" href="select">회원가입</a>
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