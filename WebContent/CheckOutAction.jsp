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
String userid=session.getAttribute("userid").toString();

String CFName=request.getParameter("Fname");
String CLName=request.getParameter("Lname");
String phone=request.getParameter("phone");
String address=request.getParameter("address");
String city =request.getParameter("city");
String state=request.getParameter("state");
String pincode=request.getParameter("zipcode");
 

String sum=request.getParameter("sum");



try{
	
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("update mrpsignup set FirstName=?,LastName=?,MobileNumber=?,Address=?,City=?,State=?,PinCode=? where email='"+userid+"'");
	ps.setString(1, CFName);
	ps.setString(2,CLName);
	ps.setString(3, phone);
	ps.setString(4, address);
	ps.setString(5, city);
	ps.setString(6, state);
	ps.setString(7, pincode);
	

	ps.executeUpdate();

	
}
catch(Exception e)
{
	e.printStackTrace();
	response.sendRedirect("Checkout.jsp?msg=invalid");
}
%>
<%

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection cons=DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
	
	PreparedStatement pss=cons.prepareStatement("update mycart set CFName=?,CLName=?,Phone=?,city=?,State=?,PinCode=?,address=? where email='"+userid+"'");
	pss.setString(1, CFName);
	pss.setString(2,CLName);
	pss.setString(3, phone);
	
	pss.setString(4, city);
	pss.setString(5, state);
	pss.setString(6, pincode);
	pss.setString(7, address);
	
	
	
	

	pss.executeUpdate();

	response.sendRedirect("OrderSummary.jsp?sum="+sum+"");
}
catch(Exception e)
{
	e.printStackTrace();
	response.sendRedirect("Checkout.jsp?msg=invalid");
	}
%>
</body>
</html>