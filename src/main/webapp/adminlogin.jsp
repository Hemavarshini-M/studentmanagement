<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#div1 {
	border: 1px solid black;
	background-color:lightblue;
	text-decoration: none;
	color: black;
	padding: 20px;
	position: relative;
	top:100px;
	left:400px;
	width:350px;

}

a {
	border: 1px solid black;
	background-color: gray;
	text-decoration: none;
	color: black;
	padding: 5px;
	position: relative;
	top: 0px;
	left: 80px;
}
</style>
</head>
<body>
	<div id="div1">
		<center><h1>Admin Login</h1></center>
		<br>
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
						<td style="color:red">Not a User?</td>
					</tr>
					<tr>
						<td><a href="adminsignup.jsp">Signup</a></td>
					</tr>



				</table>

			</form>
		
	</div>
</body>
</html>