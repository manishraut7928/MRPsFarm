<%@page import="java.util.Base64"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@include file="adminDash.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

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
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<!--Get your own code at fontawesome.com-->
</head>
<a href="AdminWelcome.jsp"><i class="fa fa-arrow-circle-left" style="font-size:24px"></i></a>
<div style="color: black; text-align: center; font-size: 30px;">Order Recieved <i class='fab fa-elementor'></i></div>





<div class="col-md-8">

<div>
<hr>
</div>
</div>

   
       <table class="table" style="width:100%;" id="products">
       



      
        <thead>
        
          <tr>
        
            <th scope="col">Customer Email</th>
            
            <th scope="col" >Product Id</th>
            <th scope="col" >Quantity</th>
            <th scope="col"><i class="fa fa-inr"></i> Price</th>
            <th scope="col"><i class="fa fa-inr"></i> Total</th>
            <th>Product Name</th>
             <th scope="col">Order Date</th>
             <th scope="col">Payment Method</th>
             <th scope="col">Status</th>
               <th scope="col">Status</th>
               <th scope="col">Customer Name</th> 
               <th scope="col">Phone</th>  
            <th>City</th>
            <th>State</th>
            <th>Pin code</th>
            <th>Address</th>
          
            
            
           
           
          </tr>
        </thead>
        <tbody>
       <%

       try
       {
    	   Class.forName("com.mysql.jdbc.Driver");  
    		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");  
    	   PreparedStatement ps=con.prepareStatement("select * from mycart ");
    	   ResultSet set=ps.executeQuery();
    	   while(set.next())
			{
				 
    	   
    
       %>
       
      

          <tr>
         
            <td><%=set.getString(3)%></td>
            <td><%=set.getString(1)%></td>
            <td><%=set.getString(5)%></td>
            <td><i class="fa fa-inr"></i> <%=set.getString(6)%></td>
            <td><%=set.getString(7)%></td>
            <td><%=set.getString(2)%></td>
             <td><%=set.getString(9)%></td>
               <td><%=set.getString(8)%></td>
               
               
                
                 
                 
                 
                 
                 
    <td><form action="status.jsp"method="post">
                 
             <input type="hidden" value="<%=set.getString(1)%>" name="product_id" >
             <input type="hidden" value="<%=set.getString(3) %>" name="email">   
                      
  
  
  
  <input type="radio" class="status" id="cancel" name="status" value="cancel">
   <label for="cancel">Cancel</label><br>  
 
  <input type="radio" class="status" id="Deliver" name="status" value="deliver">
   <label for="Deliver">Deliver</label><br><br>
  
  
  <input type="radio" class="status" id="Processing" name="status" value="processing">
   <label for="Processing">Processing</label><br><br>
 
  <button type="submit" class="btn btn-success">CONTINUE
              </button>
</form></td>
<td><%=set.getString(10)%></td>
<td><%=set.getString(11)%></td>
  <td><%=set.getString(12)%></td>
            <td><%=set.getString(13)%></td>
             
       <td><%=set.getString(14)%></td>
       <td><%=set.getString(15)%></td>
            <td><%=set.getString(16)%></td>
            
               
            
           
          </tr>

                  
          
         <%}}
       catch(Exception e)
       {
    	   e.printStackTrace();
       }
       %>

          
          
          
          
     
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>