<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SMCE REGISTRATION </title>
</head>
<body>

<%@ page import = "java.sql.*" %>
	<%@ page import = "javax.sql.*" %>
	<%
	String student= request.getParameter("studentid");
	session.putValue("studentid",student);
	String pwd= request.getParameter("pwd");
	String fname= request.getParameter("fname");
	String lname= request.getParameter("lname");
	String email= request.getParameter("email");
	
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/venkat","root", "venkat123");
	Statement st= con.createStatement();
	ResultSet rs;
	int i=st.executeUpdate("insert into smcestudents values ('"+student+"','"+pwd+"','"+fname+"','"+lname+"','"+email+"')");
	
	out.print("Registered");
	
	%>
	<a href="StudentLogin.html">Student Login</a><br><br>
	<a href="Index.html">Home</a>
	<br><br>


</body>
</html>