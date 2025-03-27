<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#div1{

}
</style>
</head>
<body>
<div id="div1">
	<h1>Admin Login</h1>
	<div id="div2">
	<form action="login" method="post">
		<table>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="pass"></td>
			</tr>
			<tr>
				<td><input type="submit"></td>
			</tr>
			<tr>
			<td>Not a User?</td>
			</tr>
			<tr>
			<td></td>
			<td><a href="adminsignup.jsp">Signup</a></td>	
			</tr>

			

		</table>

	</form>
	</div>
</div>
</body>
</html>