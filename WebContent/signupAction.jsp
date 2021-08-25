<%@ page import="java.sql.*" %>
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

String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String number=request.getParameter("number");
String email=request.getParameter("email");
String pass1=request.getParameter("pass1");
String address=request.getParameter("address");
String state=request.getParameter("State");
String city=request.getParameter("City");
String zipcode=request.getParameter("ZipCode");
String securityquestion=request.getParameter("SecurityQuestion");
String answer=request.getParameter("Answer");




try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from mrpsignup where Email='"+email+"'and MobileNumber='"+number+"'");

int z=0;

while(rs.next())
{
	z=1;
	
	response.sendRedirect("signup.jsp?msgs=exist");
	
}
if(z==0){
PreparedStatement ps=con.prepareStatement("insert into mrpsignup(FirstName,LastName,MobileNumber,Email,Password,Address,State,City,PinCode,SecurityQuestion,Answer)values(?,?,?,?,?,?,?,?,?,?,?)");


ps.setString(1,fname);
ps.setString(2,lname);
ps.setString(3,number);
ps.setString(4,email);
ps.setString(5,pass1);
ps.setString(6,address);
ps.setString(7,city);
ps.setString(8,state);
ps.setString(9,zipcode);
ps.setString(10,securityquestion);
ps.setString(11,answer);
ps.executeUpdate();
response.sendRedirect("login.jsp?msgs=done");
}
}
catch(Exception e)
{
	e.printStackTrace();
	response.sendRedirect("signup.jsp?msgs=wrong");
}
%>


</body>
</html>