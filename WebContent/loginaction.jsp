<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<% 
 String email=request.getParameter("userid");
 String pwd=request.getParameter("pass");
 
 
if("MRP.sFarmAdmin@gmail.com".equals(email)&&"Ansh@1998".equals(pwd))
{
	session.setAttribute("email",email);
	response.sendRedirect("AdminWelcome.jsp");
	
}
else
{
int z=0;
try{
	  Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
	  PreparedStatement ps=con.prepareStatement("select * from mrpsignup where Email='"+email+"' and Password='"+pwd+"'");
	  ResultSet rs=ps.executeQuery();
	  while(rs.next())
	  {
		  z=1;
		  session=request.getSession();
		  session.setAttribute("userid",email);
			response.sendRedirect("UserDash.jsp");
		 
	  }
	 if(z==0)
	 {
		 response.sendRedirect("login.jsp?msg=invalid");
	 }
	  		 
   }
catch(Exception e)
{
	e.printStackTrace();
	
	response.sendRedirect("login.jsp");
}
}
%>
</body>
</html>