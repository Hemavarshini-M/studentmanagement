<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	height: 300px; opacity : .9;
	box-shadow: 3px 3px 5px 5px silver;
	opacity: .9;
}

#div table {
	position: relative;
	top: 30px;
	left: 130px;
}
</style>
</head>
<body>
	<%
	int id = Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	int physics = Integer.parseInt(request.getParameter("phy"));
	int chemistry = Integer.parseInt(request.getParameter("chem"));
	int maths = Integer.parseInt(request.getParameter("maths"));
	%>
	<div id="div">

		<h1 style="text-decoration: underline;text-align: center;">Update Student data</h1>
		<form action="editstudent" method="post" id="form">
			<table>
				<tr>
					<td>Id</td>
					<td><input type="Number" name="id" readonly="readonly"
						value="<%=id%>"></td>
				</tr>
				<tr>
					<td>Name</td>
					<td><input type="text" name="name" value="<%=name%>"></td>
				</tr>
				<tr>
					<td>Physics</td>
					<td><input type="Number" name="phy" value="<%=physics%>"></td>
				</tr>
				<tr>
					<td>Chemistry</td>
					<td><input type="Number" name="chem" value="<%=chemistry%>"></td>
				</tr>
				<tr>
					<td>Maths</td>
					<td><input type="Number" name="maths" value="<%=maths%>"></td>
				</tr>
				<tr>
					<td><input type="submit"
						style="position: relative; left: 70px; top: 10px;"></td>
				</tr>




			</table>
	
	</form>
	</div>

	<script>
		
	<%String msg = (String) request.getAttribute("success");%>
		
	<%if (msg != null && msg.equals("1")) {%>
		alert("Student data updated Successfully!!");
		window.location.href = "adminhome.jsp";
	<%}%>
		
	</script>


</body>
</html>