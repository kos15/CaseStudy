<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/static/css/index.css" type="text/css"> 
<title>Insert title here</title>
</head>
<body>
	<div align="center"><h1>
		Hi ${name} you successfull loged in...
	</h1>
	<h2>${success_msg}</h2></div>
	
	<br>
	<br>
	<div class='button'>
		<a href="/logout">
				<input type='button' name='logout' value='logout'>
		</a>
	</div>
	<div class='button'>
		<a href="/add">
				<input type='button' name='Add Customer' value='Add Customer'>
		</a>
	</div>
		
</body>
</html>