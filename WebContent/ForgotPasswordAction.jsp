<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
 <%
 String email=request.getParameter("email");
 String mobilenumber=request.getParameter("mobilenumber");
 String securityQuestion=request.getParameter("security");
 String answer=request.getParameter("answer");
 String newPassword=request.getParameter("password");
 int check=0;
 try
 {
	 Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root"); 
		
		Statement st=con.createStatement();
		PreparedStatement ps=con.prepareStatement("select * from mrpsignup where Email=? and MobileNumber=? and SecurityQuestion=? and Answer=? ");
	    ps.setString(1,email);
	    ps.setString(2,mobilenumber);
	    ps.setString(3,securityQuestion);
	    ps.setString(4,answer);
	   
	    ResultSet rs=ps.executeQuery();
	    
	    while(rs.next()){
	    	check=1;
	    	PreparedStatement sp=con.prepareStatement("select * from mrpsignup where Email=? and Mobilenumber=? and SecurityQuestion=? and Answer=? ");
	    	sp.executeUpdate("update mrpsignup set Password='" +newPassword+"' where email='"+email+"'");
	    	response.sendRedirect("forgotpassword.jsp?msg=done");
	    	
	    }
	    
	    
	   if(check==0){
		   response.sendRedirect("forgotpassword.jsp?msg=wrong");
	   }
	   con.close();  
      
 }
 catch(Exception e){
	 System.out.println(e);
 }
 
 
 
 %>