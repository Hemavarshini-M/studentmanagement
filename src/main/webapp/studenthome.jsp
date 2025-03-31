<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="DTO.Student_DTO"%>
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
	width: 380px;
	height: 270px;
	opacity: .7;
	box-shadow: 3px 3px 25px 10px silver;
}

h1 {
	text-align: center;
	text-decoration: underline;
	color: white;
}

table, td, th {
	border: 1px solid white;
	text-align: center;
	border-collapse: collapse;
	padding: 5px;
	color: white;
}

th {
	color: aqua;
	font-weight: bolder;
}

#divtable {
	position: relative;
	top: 20px;
	left: 50px;
}
</style>
</head>
<body>
	<%
	Student_DTO s = (Student_DTO) request.getAttribute("student");
	%>
	<div id="div1">
		<h1>Student Home page</h1>
		<br>
		<div id="divtable">
			<table>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Physics</th>
					<th>Chemistry</th>
					<th>Maths</th>

				</tr>
				<tr>
					<td><%=s.getId()%></td>
					<td><%=s.getName()%></td>
					<td><%=s.getPhysics()%></td>
					<td><%=s.getChemistry()%></td>
					<td><%=s.getMaths()%></td>
				</tr>

			</table>
		</div>
	</div>

</body>
</html>