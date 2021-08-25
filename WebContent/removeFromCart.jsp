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
String product_id=request.getParameter("id");
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("delete from mycart where email='"+userid+"'and product_id='"+product_id+"'");
    response.sendRedirect("MyCart.jsp?msg=removed");
}
catch(Exception exception)
{
	exception.printStackTrace();
}

%>
</body>
</html>