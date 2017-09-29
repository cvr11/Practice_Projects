<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page import = "java.sql.*" %>
	<%@ page import = "javax.sql.*" %>
	<%
	String student= request.getParameter("studentid");
	session.putValue("studentid",student);
	String pwd= request.getParameter("pwd");
	String subject1= request.getParameter("subject1");
	String subject2= request.getParameter("subject2");
	String subject3= request.getParameter("subject3");
	String subject4= request.getParameter("subject4");
	String subject5= request.getParameter("subject5");
	String subject6= request.getParameter("subject6");
	
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/venkat","root", "venkat123");
	Statement st= con.createStatement();
	ResultSet rs;
	int i=st.executeUpdate("insert into memo1 values ('"+student+"','"+pwd+"','"+subject1+"','"+subject2+"','"+subject3+"','"+subject4+"','"+subject5+"','"+subject6+"')");
	
	out.print("Student Marks Recorded");
	
	%>
	<a href="StudentLogin.html">Student Login</a><br><br>
	<a href="Index.html">Home</a>


</body>
</html>