<%@page import="Connection_db.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String Fname=request.getParameter("Fname");
String Lname=request.getParameter("Lname");
String Email=request.getParameter("Email");
String Phoneno=request.getParameter("Phoneno");
String Message=request.getParameter("Message");
try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into contacts(Fname,Lname,Email,Phoneno,Message)values(?,?,?,?,?)");
	ps.setString(1, Fname);
	ps.setString(2, Lname);
	ps.setString(3, Email);
	ps.setString(4, Phoneno);
	ps.setString(5, Message);
	ps.executeUpdate();
	
	response.sendRedirect("ContactUserForm.jsp?msg=valid");
}
catch(Exception e)
{ 
	e.printStackTrace();
	response.sendRedirect("ContactUserForm.jsp?msg=invalid");
}

%>
</body>
</html>