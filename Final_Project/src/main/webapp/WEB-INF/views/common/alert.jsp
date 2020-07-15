<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<script>
		if('${alert1}' == 1){
			alert("비밀번호가 초기화 되었습니다\n임시비밀번호는 123456 입니다");
			location.href = "login"
		}else if('${alert2}'== 2){
			alert("아이디가 존재하지 않습니다");
			location.href = "forgot"
		}else if('${alert4}'== 4){
			alert("아이디 혹은 비밀번호가 일치하지 않습니다");
			location.href = "login"
		}else if('${alert5}' == 5){
			alert("아이디가 존재하지 않습니다");
			location.href = "login"
		}
	</script>
</head>
<body>
	
</body>
</html>