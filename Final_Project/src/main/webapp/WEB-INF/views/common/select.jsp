<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>select</title>
	<!-- Custom styles for this template-->
	<link
		href="<%=request.getContextPath() %>/resources/css/sb-admin-2.min.css"
		rel="stylesheet">
		
 	<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" 
    	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" 
    	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" 
    	crossorigin="anonymous">
    	
    <style>
    	#style{
    		height: 80px;
    		width: 230px;
    		font-size: 25px;
    		font-weight: bold;
    	}
    	#font-style{
    		color: white;
    		font-family: "한컴 윤고딕 240";
    		text-shadow: -3px 0 black, 0 3px black, 3px 0 black, 0 -3px black;
    	}
    </style>	
</head>
<body class="bg-gradient-primary">
	<div class="jumbotron" align="center" style="margin-top: 15%; margin-left: 15%; margin-right: 15%">
		<h1 class="display-4" id="font-style"><b>직위를 선택해주세요</b></h1>
		<hr class="my-4">
		
		<div align="center">
			<button type="button" id="style" class="btn btn-primary" data-toggle="button" 
				aria-pressed="false" onclick="location.href='tSignUp'">
				교사 회원가입
			</button>
			<button type="button" id="style" class="btn btn-info" data-toggle="button" 
				aria-pressed="false" onclick="location.href='pSignUp'">
				학부모 회원가입
			</button>
			<button type="button" id="style" class="btn btn-secondary" data-toggle="button" 
				aria-pressed="false" onclick="location.href='sSignUp'">
				학생 회원가입
			</button>
		</div>
	</div>
	
	<!-- Bootstrap core JavaScript-->
	<script src="<%=request.getContextPath() %>/resources/vendor/jquery/jquery.min.js"></script>
	<script src="<%=request.getContextPath() %>/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="<%=request.getContextPath() %>/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="<%=request.getContextPath() %>/resources/js/sb-admin-2.min.js"></script>
	
	
	<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" 
    	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" 
    	crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" 
    	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" 
    	crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" 
    	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" 
    	crossorigin="anonymous"></script>
</body>
</html>