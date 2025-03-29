<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#div1 {
	border: 1px solid black;
	background-color: lightblue;
	text-decoration: none;
	color: black;
	padding: 30px;
	position: relative;
	top: 100px;
	left: 400px;
	width: 350px;
	
}

#submit {
	position: relative;
	top: 10px;
	left: 140px;
}
</style>
<body>
	<div id="div1">
		<center>
			<h1>Admin Signup</h1>
		</center>
		<br>

		<form action="adminlogin.jsp" method="post">
			<table>
				<tr>
					<td>Id</td>
					<td><input type="Number" name="id"></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td>Contact</td>
					<td><input type="tel" name="contact"></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="pass" id="pwd"></td>
				</tr>
				<tr>
					<td>Confirm Password</td>
					<td><input type="password" name="retypepass" id="cpwd"></td>
				</tr>
			</table>
			<p style="display:none;color:green" id="pwdmsg">Password and confirm Password is matched!</p>
			<p style="display:none;color:red;" id="cpwdmsg">Password and confirm Password is not matched!</p>
			<input type="submit" id="submit">

		</form>

	</div>
	<script>
	
		
		/* let submit=document.getElementById("submit"); */
		document.getElementById("cpwd").addEventListener("focusout",()=>{
			let pwd=document.getElementById("pwd").value;
			let cpwd=document.getElementById("cpwd").value;
			
			let msg1=document.getElementById("pwdmsg");
			let msg2=document.getElementById("cpwdmsg");
			if(pwd == cpwd){
				msg1.style.display="block";
				msg2.style.display="none";
			}
			else{
				msg2.style.display="block";
				msg1.style.display="none";
			}
		},false);
	
	</script>

</body>
</html>