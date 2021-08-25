<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
    <%@page import="Connection_db.ConnectionProvider" %>
    <%@page import="java.util.Base64"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.Blob"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="adminDash.jsp" %>

<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link href="your-project-dir/font-css/LineIcons.css" rel="stylesheet">
<title>All products </title>

<style>


 table,th,td{
   
    border: 1px solid black;
    color:black;
    }
  th{
  font-size:18px;
  
  } 
  .btn:hover
  {
  background-color:#3f75e0;}
</style>
</head>
<body>
<div class="container-fluid " >
<h3 style=" text-align:center;  padding:7px; color:#05284C; ">All Products <i class="lni lni-cart"></i></h3>




<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<center><h4>Product Successfully Updated!</h4></center>
<%} %>
<%
if("wrong".equals(msg))
{	%>
<center><h4>Something went wrong!</h4></center>
<%
}%>
<br>
<table   style="width:100%; background-color:#f5f6f7;">
  <thead>
  <tr>
  <th >ID</th>
    
  <th>Name</th>
  <th>Category</th>
  <th><i class="lni lni-rupee"></i>Price</th>
   <th >Description</th>
   <th >Image</th>
  
  <th ><i class="lni lni-pencil-alt"></i>Edit</th>
  </tr>
  </thead>
  <tbody>
  <%
    try{
    	Connection con=ConnectionProvider.getCon();
    	Statement st=con.createStatement();
    	ResultSet rs=st.executeQuery("select * from products");
    
    	
    	while(rs.next())
    	{
    		%>
    		<tr>
    		<td><%=rs.getString(1) %></td>
    		
    		<%
    		Blob blob=rs.getBlob(6); 
    		InputStream inputStream = blob.getBinaryStream();
                ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
                byte[] buffer = new byte[4096];
                int bytesRead = -1;
                 
                while ((bytesRead = inputStream.read(buffer)) != -1)
                {
                    outputStream.write(buffer, 0, bytesRead);                  
                }
                 
                byte[] imageBytes = outputStream.toByteArray();
                String base64Image = Base64.getEncoder().encodeToString(imageBytes);
                 
                pageContext.setAttribute("base64Image", base64Image);
              
                inputStream.close();
                outputStream.close();
                %>
    		
    		<td><%=rs.getString(2) %></td>
    		<td><%=rs.getString(3) %></td>
    		<td><i class="lni lni-rupee"></i><%=rs.getString(4) %></td>
    		<td><%=rs.getString(5) %></td>
    		<td><img src="data:image/jpg;base64,${base64Image}" style="width:280px; height:280px; padding:7px;" ></td>
    		<td><a style="color:black;" href="EditProduct.jsp?id=<%=rs.getString(1)%>"><i class="lni lni-pencil-alt"></i><Button class="btn btn-danger">Update</Button></a>
    		<a style="color:black;" href="DeleteProduct.jsp?id=<%=rs.getString(1)%>"><i class="lni lni-pencil-alt"></i><Button class="btn btn-success">Delete</Button></a>
    		</td>
    		</tr>
    		<% }
    		
    	
    }
   
  catch(Exception e)
  { 
	   System.out.println(e);
  }
  %>
  
  
  </tbody>
</table>

</div>

<br>

</body>
</html>
