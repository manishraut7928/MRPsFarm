<%@include file="adminDash.jsp" %>

<%@page import="Connection_db.ConnectionProvider" %>

<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
 table,th,td{
    padding:5px;
    border: 2px solid black;
    color:white;
    }
   
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Messages Received <i class='fas fa-comment-alt'></i></div>
<table  class=" bg-info" style="width:100%;">
        <thead>
          <tr>
          <th scope="col">First Name</th>
          <th scope="col"> Last Name</th>
            <th scope="col">Email</th>
            <th scope="col">Mobile Number</th>
            
            <th scope="col">Message</th>
          </tr>
        </thead>
        <tbody>
       <%
       try
       {
    	   Connection con=ConnectionProvider.getCon();
    	   Statement st=con.createStatement();
    	   ResultSet rs=st.executeQuery("select * from contacts");
    	   while(rs.next())
       	{
       		%>
       		<tr>
       		
       		<td><%=rs.getString(2) %></td>
       		<td><%=rs.getString(3) %></td>
       		<td><%=rs.getString(4) %></td>
       		<td><%=rs.getString(5) %></td>
       		<td><%=rs.getString(6) %></td>
       		</tr>
       <%	
      	
        }
        }
      catch(Exception e)
      { 
    	   System.out.println(e);
      }
      %>
      
      
      </tbody>
    </table>
<br>

    <br>
</body>
</html>
