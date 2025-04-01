<%@page import="DAO.Student_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="DTO.Student_DTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management</title>
<style type="text/css">
body {
	background-image:
		url("https://t4.ftcdn.net/jpg/02/34/44/19/360_F_234441954_UBLcJTnihXXonXiR0kvToWLAm4OeoL89.jpg");
	background-repeat: no-repeat;
	background-size: 100% 100%;
	height: 100vh;
	display: grid;
	place-content: center;
}

#div {
	border: 3px solid black;
	color: white;
	padding: 50px;
	width: 500px;
	opacity: .9;
	box-shadow: 3px 3px 25px 10px silver;
}

table a {
	text-decoration: none;
	color: red;
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
	top: 30px;
	left: 50px;
}

h1 {
	text-align: center;
	text-decoration: underline;
	color: white;
}

#divadd {
	background-color: purple;
	border: 2px solid black;
	position: relative;
	left: 50px;
	top: 60px;
	width: 100px;
	padding: 10px;
	width: 100px;
}

#divlogout {
	background-color: purple;
	border: 2px solid black;
	position: relative;
	top: 20px;
	left: 350px;
	width: 60px;
	padding: 10px;
}

#div a {
	margin-left: 10px;
	text-decoration: none;
	color: navy;
}

#divlogout a {
	margin-left: 7px;
	text-decoration: none;
	color: navy;
}
</style>

</head>
<body>
	<div id="div">
		<h1>Admin Home Page</h1>

		<div id="divtable">
			<table>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Physics</th>
					<th>Chemistry</th>
					<th>Maths</th>
					<th>Edit</th>
					<th>Delete</th>

				</tr>
				<%
				List<Student_DTO> studentlist = Student_DAO.findAllStudent();
				for (Student_DTO s : studentlist) {
				%>
				<tr>
					<td><%=s.getId()%></td>
					<td><%=s.getName()%></td>
					<td><%=s.getPhysics()%></td>
					<td><%=s.getChemistry()%></td>
					<td><%=s.getMaths()%></td>
					<td><a
						href="editstudent.jsp?id=<%=s.getId()%>&name=<%=s.getName()%>&phy=<%=s.getPhysics()%>&chem=<%=s.getChemistry()%>&maths=<%=s.getMaths()%>" style="color:olive;" >edit</a></td>
					<td><a href="deletestudent?id=<%=s.getId()%>"
						style="color: red;" onclick="return confirmdel();">delete</a></td>
				</tr>
				<%
				}
				%>
			</table>
		</div>

		<div id="divadd">
			<a href="addstudent.jsp">AddStudent</a>

		</div>
		<div id="divlogout">
			<a href="index.jsp">Logout</a>

		</div>
	</div>

	<script>
		function confirmdel() {
			let conform = confirm("are you want to delete student data");
			if (conform) {
				alert("student data deleted Successfully!!")
				return conform;
			} else {
				alert("student data failed to delete!!")
				return conform;
			}
		}
	</script>
</body>
</html>