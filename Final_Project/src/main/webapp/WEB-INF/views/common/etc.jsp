<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>student_main</title>
	<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" 
    	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" 
    	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" 
    	crossorigin="anonymous">
    	
    <style>
    	#sidebar-style{
    		width: 288px;
    	}
    	#nav-style{
    		width: 85%;
    		height: 92px;
    		display: flex;
    		float: right;
    	}
    	#image-style{
    	/* 
    		height: 85px;
    		width: 100px;
    	 */
    	 
    		height: 20%;
    		width: 30%;
    	}
    	#font-style{
    		font-family: "한컴 윤고딕 240";
    		font-size: 30px;
    	}
    </style>	
</head>
<body>

		<nav class="navbar navbar-expand-lg navbar-light bg-light" id="nav-style">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarTogglerDemo01"
			aria-controls="navbarTogglerDemo01" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarTogglerDemo01">
			<a class="navbar-brand" href="#">Hidden brand</a>
			<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
				<li class="nav-item"><a class="nav-link disabled" href="#"
					tabindex="-1" aria-disabled="true">Disabled</a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav> 

	<div class="card" style="padding-top: 15px" id="sidebar-style">
		<span>
			<img src="resources/image/education.png" id="image-style" class="card-img-top">&nbsp;
			<b id="font-style">Education</b>
		</span>
		<hr>
		<div align="center">
			<font id="font-style">학생/학부모 서비스</font><br><br>
		</div>
			<!-- 
		<div class="card-body" align="center">
			<h5 class="card-title" align="center"><b>학부모 서비스</b></h5>
			<p class="card-text"></p>
		</div>
			 -->
			<!-- 
			 -->
		<!-- 
		<ul class="list-group list-group-flush">
			<li class="list-group-item">
				Cras justo odio
			</li>
			<li class="list-group-item">
				Dapibus ac facilisis in
			</li>
			<li class="list-group-item">
				Vestibulum at eros
			</li>
		</ul>
		<div class="card-body">
			<a href="#" class="card-link">Card link</a> <a href="#"
				class="card-link">Another link</a>
		</div>
		 -->
	</div>
	
	<div class="accordion" id="accordionExample">
		<div class="card" id="sidebar-style">
			<div class="card-header" id="headingOne">
				<h2 class="mb-0">
					<button class="btn btn-link btn-block text-center" type="button"
						data-toggle="collapse" data-target="#collapseOne"
						aria-expanded="true" aria-controls="collapseOne">
						로그인 서비스</button>
				</h2>
			</div>

			<div id="collapseOne" class="collapse show"
				aria-labelledby="headingOne" data-parent="#accordionExample" align="center">
				<div class="card-body-divider">
					<br><a href="login">로그인</a>
					<hr>
					<a href="regist">회원가입</a>
					<br><br>
				</div>
			</div>
		</div>
		<div class="card" id="sidebar-style">
			<div class="card-header" id="headingTwo">
				<h2 class="mb-0">
					<button class="btn btn-link btn-block text-center collapsed"
						type="button" data-toggle="collapse" data-target="#collapseTwo"
						aria-expanded="false" aria-controls="collapseTwo">
						2</button>
				</h2>
			</div>
			<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
				data-parent="#accordionExample">
				<div class="card-body">
				</div>
			</div>
		</div>
		<div class="card" id="sidebar-style">
			<div class="card-header" id="headingThree">
				<h2 class="mb-0">
					<button class="btn btn-link btn-block text-center collapsed"
						type="button" data-toggle="collapse" data-target="#collapseThree"
						aria-expanded="false" aria-controls="collapseThree">
						3</button>
				</h2>
			</div>
			<div id="collapseThree" class="collapse"
				aria-labelledby="headingThree" data-parent="#accordionExample">
				<div class="card-body">
				</div>
			</div>
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