<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h1>${success_msg}</h1>
        <h2>Create New Customer</h2>
        <br />
        <form action="addCustomer" method="post" modelAttribue="customer">
 
            <table border="1" cellpadding="10">
                <tr>
                    <td>Customer Id:</td>
                    <td><input type="text" name="CustomerSSNId" /></td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="CustomerName" value=""/></td>
                </tr>
                <tr>
                    <td>Address 1:</td>
                    <td><input type="text" name="Address1" value=""/></td>
                </tr>
                
                <tr>
                    <td>Address 2:</td>
                    <td><input type="text" name="Address2" value="" /></td>
                </tr>
                <tr>
                    <td>Age:</td>
                    <td><input type="text" name="Age" value=""/></td>
                </tr>
                <tr>
                    <td>City:</td>
                    <td><input type="text" name="City" value=""/></td>
                </tr>
                <tr>
                    <td>State:</td>
                    <td><input type="text" name="State" value=""/></td>
                </tr>                                                       
                <tr>
                    <td colspan="2"><button type="submit">Save</button> </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>