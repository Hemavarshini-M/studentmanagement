<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h1>Admin Home Page</h1>
	</center>
	<%
	String msg=(String)request.getAttribute("msg");
	if(msg!=null){

	%>
	<center><h1><%= msg %></h1></center>
	<%} %>

</body>
</html>