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
String email=session.getAttribute("userid").toString();
String address=request.getParameter("address");
String city=request.getParameter("city");
String state=request.getParameter("state");
String country=request.getParameter("country");

try{
	
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("update mrpsignup set address=?,city=?,state=?,country=? where email=?");
	ps.setString(1, address);
	ps.setString(2, city);
	ps.setString(3, state);
	ps.setString(4, country);
	ps.setString(5, email);
	ps.executeUpdate();
	response.sendRedirect("ChangeAddress.jsp?msg=valid");
}
catch(Exception e)
{
	e.printStackTrace();
	response.sendRedirect("ChangeAddress.jsp?msg=invalid");
}
%>
</body>
</html>