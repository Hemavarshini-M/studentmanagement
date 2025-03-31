<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body {
	background-image:
		url("https://t4.ftcdn.net/jpg/02/34/44/19/360_F_234441954_UBLcJTnihXXonXiR0kvToWLAm4OeoL89.jpg");
	background-repeat: no-repeat;
	background-size: 100% 100%;
	height: 100vh;
}

#div {
	border: 3px solid black;
	color: white;
	padding: 20px;
	position: relative;
	top: 50px;
	left: 300px;
	width: 500px;
	height: 300px;
	box-shadow: 3px 3px 5px 5px silver;
	opacity: .9;
}

form {
	position: relative;
	top: 0px;
	left: 100px;
	width: 300px;
	padding: 30px;
}
</style>
<body>
	<div id="div">
		<h1 style="text-decoration: underline; text-align: center;">Add
			Student</h1>

		<form action="savestudent" method="post">
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
					<td>Physics</td>
					<td><input type="Number" name="phy"></td>
				</tr>
				<tr>
					<td>Chemistry</td>
					<td><input type="Number" name="chem"></td>
				</tr>
				<tr>
					<td>Maths</td>
					<td><input type="Number" name="maths"></td>
				</tr>
				<tr>
					<td><input type="submit"
						style="position: relative; left: 90px; top: 15px;"></td>
				</tr>




			</table>

		</form>
	</div>
	<script type="text/javascript">
	<%
	String msg = (String) request.getAttribute("msg");
	%>

	<%
	if (msg != null) {
	%>
	alert("<%=msg%>" ); 
	window.location.href = "adminhome.jsp";


	<%
	}
	%>
	</script>

</body>
</html>