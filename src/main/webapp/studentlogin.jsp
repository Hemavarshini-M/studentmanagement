<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="DTO.Student_DTO" %>
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
	height: 270px;
	opacity: .7;
	box-shadow: 3px 3px 25px 10px silver;
}

#result {
	position: relative;
	top: 30px;
	left: 110px;
	padding: 15px;
	border-radius: 10%;
	border: 2px solid black;
	background-color: black;
	color: silver;
	font-weight: bolder;
	font-style: oblique;
	font-size: 16px;
	box-shadow: 1px 2px 10px 5px maroon;
}
</style>
</head>
<body>
	<div id="div1">
		<h1 style="text-decoration: underline; text-align: center;">Student
			Login</h1>

		<br>
		<form action="studentlogin" method="post">
			<table>
				<tr>
					<td>Student Id</td>
					<td><input type="Number" name="id" id="sid"
						required="required"></td>

				</tr>
				<tr>
					<td></td>
					<td colspan="2"><p style="display: none; color: red;"
							id="errormsgid">please enter the id!!</p></td>
				</tr>
				<tr>
					<td><input type="submit" value="View Result" id="result"></td>
				</tr>


			</table>

		</form>


	</div>
	<script>
		document.getElementById("sid").addEventListener("input",()=>{
			let errmsg=document.getElementById("errormsgid");
			if((sid.value) == ""){
				errmsg.style.display="block";
			}
			else{
				errmsg.style.display="none";
			}
		},false);
		
		<%String msg = (String) request.getAttribute("msg");
		  Student_DTO s=(Student_DTO)request.getAttribute("student");
		%>
			
		<%if (msg != null) {%>
			alert("<%=msg%>");
		<%if (msg.equals("Login Success!!") && s!=null) {%>
			<%request.setAttribute("student", s);
				request.getRequestDispatcher("studenthome.jsp").forward(request, response);
			%>
		<%}%>
			
		<%}%>
		
		</script>

</body>
</html>