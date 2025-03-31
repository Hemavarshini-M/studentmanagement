<%@page import="DAO.Student_DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="DTO.Student_DTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table a {
	text-decoration: none;
	color: red;
}

table, td, th {
	border: 1px solid black;
	text-align: center;
	border-collapse: collapse;
	padding: 5px;
}

#divtable {
	position: relative;
	top: 20px;
	left: 430px;
}

h1 {
	text-align: center;
	text-decoration: underline;
}

#div {
	background-color: gray;
	border: 1px solid black;
	position: relative;
	left: 430px;
	top: 40px;
	width: 100px;
	padding: 10px;
	width: 100px;
}

#divlogout {
	background-color: gray;
	border: 1px solid black;
	position: relative;
	left: 720px;
	width: 60px;
	padding: 10px;
}

#div a {
	margin-left:10px;
	text-decoration: none;
	color: green;
}

#divlogout a {
	margin-left:7px;
	text-decoration: none;
	color: green;
}
</style>

</head>
<body>

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
				<td><a href="editstudent.jsp?id=<%=s.getId()%>">edit</a></td>
				<td><a href="deletestudent?id=<%=s.getId()%>">delete</a></td>
			</tr>
			<%
			}
			%>
		</table>
	</div>

	<div id="div">
		<a href="addstudent.jsp">addStudent</a>

	</div>
	<div id="divlogout">
		<a href="index.jsp">Logout</a>

	</div>
	<%
	String msg = (String) request.getAttribute("msg");
	%>
	<script>
		
	<%if (msg != null && msg.equals("1")) {%>
		alert("Student data deleted Successfully!!");
	<%} %>
	
		
	</script>
</body>
</html>