<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Start_Page</title>
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
    		width: 200px;
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
<body>
	<div class="jumbotron" align="center" style="margin-top: 15%; margin-left: 15%; margin-right: 15%">
		<h1 class="display-4" id="font-style"><b>소통하는 교육</b></h1>
		<hr class="my-4">
		
		<div align="center">
			<button type="button" id="style" class="btn btn-primary" data-toggle="button" 
				aria-pressed="false" onclick="location.href='login'">
				교사 서비스
			</button>
			<button type="button" id="style" class="btn btn-info" data-toggle="button" 
				aria-pressed="false" onclick="location.href='login'">
				학생 & 학부모 서비스
			</button>
		</div>
	</div>

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