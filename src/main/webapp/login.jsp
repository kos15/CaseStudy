<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
    function ValidateUsername() {
    	var username = document.forms["RegForm"]["username"];    
        
        var expr = /^[a-zA-Z0-9._]*$/;
        if (expr.test(username)) {
        	location.reload(true);
            // window.alert("Special Charcter is not allowed ");
             username.focus();
             return false;
         }
         return true;
    }
</script>

</head>
<body>
	<h1>Login</h1>
	
	${SPRING_SECURITY_LAST_EXCEPTION.message }
	<form action="login" method='POST' name="RegForm" onsubmit="return ValidateUsername()">
		<table>
			<tr>
				<td>User:</td>
				<td><input type='text' name='username' value=''></td>
			</tr>
			
			<tr>
				<td>Password:</td>
				<td><input type='password' name='password'></td>
			</tr>	
			
			<tr>
				<td><input type='submit' name='submit' value='submit' ></td>
			</tr>

		</table>
	</form>

</body>
</html>