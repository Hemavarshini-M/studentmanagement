<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management</title>
</head>
<style>
body {
	background-image:
		url("https://t4.ftcdn.net/jpg/02/34/44/19/360_F_234441954_UBLcJTnihXXonXiR0kvToWLAm4OeoL89.jpg");
	background-repeat: no-repeat;
	background-size: 100% 100%;
	height: 100vh;
	display: grid;
	place-content: center;
}
#div1 {
	border: 1px solid black;
	
	text-decoration: none;
	color: silver;
	padding: 30px;
	width: 350px;
	opacity: .9;
	box-shadow: 3px 3px 25px 10px silver;
	
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
			<h1 style="text-decoration: underline;">Admin Signup</h1>
		</center>
		<br>

		<form action="adminsignup" method="post">
			<table>
				<tr>
					<td>Id</td>
					<td><input type="Number" name="id" required="required"></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><input type="text" name="name" required="required"></td>
				</tr>
				<tr>
					<td>Contact</td>
					<td><input type="tel" name="contact" required="required" pattern="[6-9]\d{9}"></td>
				</tr>
				<tr>
					<td>Email</td>
					<td><input type="text" name="email" required="required"></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="pass" id="pwd" required="required"></td>
				</tr>
				<tr>
					<td>Confirm Password</td>
					<td><input type="password" name="retypepass" id="cpwd" required="required"></td>
				</tr>
			</table>
			<p style="display:none;color:olive;font-weight: bolder;" id="pwdmsg">Password and confirm Password is matched!</p>
			<p style="display:none;color:red;" id="cpwdmsg">Password and confirm Password is not matched!</p>
			<input type="submit" id="submit">

		</form>

	</div>
	
	<script>
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
		
		<%
		String msg = (String) request.getAttribute("msg");
		%>
			
		<%if (msg != null) {%>
			alert("<%= msg %>" );
		<%if (msg.equals("Admin Signup Success!!")) {%>
			window.location.href = "adminlogin.jsp";
		<%}%>
			
		<%}%>
	
		
	</script>
	
	
	
</body>
</html>