<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/static/css/index.css"
	type="text/css">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h1>Hi ${name} you successfull loged in...</h1>
		
	</div>

	<br>
	<br>

	<div class="nav">
		<ul>
			<li><a href="/index">Home</a></li>
			<li><a href="/index">Customer Managment</a>
				<ul>
					<li><a href="/add">Add Customer</a></li>
					<li><a href="/update">Update Customer</a></li>
					<li><a href="/delete">Delete Customer</a></li>
				</ul></li>
			<li><a href="/index">Account Managment</a>
				<ul>
					<li><a href="/add">Add Customer</a></li>
					<li><a href="/index">Update Customer</a></li>
					<li><a href="/index">Delete Customer</a></li>
				</ul></li>
			<li><a href="/getAllCustomer">Sataus Details</a></li>
			<li><a href="/index">Account Operations</a></li>
			<li><a href="/logout">Logout</a></li>
		</ul>

	</div>
	<br><br><br>
	<h2>${success_msg}</h2>
</body>
</html>