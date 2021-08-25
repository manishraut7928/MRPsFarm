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
String pincode=request.getParameter("zipcode");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");

try{
	
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("update mrpsignup set FirstName=?,LastName=?,address=?,city=?,state=?,pincode=?  where email='"+email+"'");
	ps.setString(1,fname);
	ps.setString(2,lname);
	ps.setString(3, address);
	ps.setString(4, city);
	ps.setString(5, state);
	ps.setString(6, pincode);
	
	
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