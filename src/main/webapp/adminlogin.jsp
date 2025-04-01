<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management</title>
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
	border: 3px solid black;
	text-decoration: none;
	color: white;
	padding: 20px;
	width: 350px;
	opacity: .7;
	box-shadow: 3px 3px 25px 10px silver;
}

a {
	border: 2px solid black;
	background-color: maroon;
	text-decoration: none;
	color: white;
	padding: 5px;
	position: relative;
	top: 0px;
	left: 130px;
}
</style>
</head>
<body>
	<div id="div1">
		<h1 style="text-decoration: underline; text-align: center;">Admin
			Login</h1>

		<br>
		<form action="adminlogin" method="post">
			<table>
				<tr>
					<td>Email</td>
					<td><input type="text" name="email" id="email"
						required="required"></td>

				</tr>
				<tr>
					<td></td>
					<td colspan="2"><p style="display: none; color: red;"
							id="errormsgemail">please enter the email!!</p></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="password" name="pass" id="pass"
						required="required"></td>
				</tr>
				<tr>

					<td colspan="2"><p style="display: none; color: red;"
							id="errormsgpass">please enter the password!!</p></td>
				</tr>
				<tr>
					<td><input type="submit"></td>
				</tr>
				<tr>
					<td style="color: red">Not a User?</td>
				</tr>
				<tr>
					<td><a href="adminsignup.jsp">Signup</a></td>
				</tr>



			</table>

		</form>


	</div>

	<script>
		document.getElementById("email").addEventListener("input",()=>{
			let errmsg=document.getElementById("errormsgemail");
			if((email.value) == ""){
				errmsg.style.display="block";
			}
			else{
				errmsg.style.display="none";
			}
		},false);
		document.getElementById("pass").addEventListener("input",()=>{
			let errmsg=document.getElementById("errormsgpass");
			if((pass.value) == ""){
				errmsg.style.display="block";
			}
			else{
				errmsg.style.display="none";
			}
		},false);
		<%String msg = (String) request.getAttribute("msg");%>
			
		<%if (msg != null) {%>
			alert("<%=msg%>");
		<%if (msg.equals("Login Success")) {%>
			window.location.href = "adminhome.jsp";
		<%}%>
			
		<%}%>
			
		</script>

</body>
</html>
