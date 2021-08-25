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

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/popper.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Delievered Orders</title>

<style>



.navbar-custom  {
    background-color: #3f75e0;
    padding:20px;
    height:80px;

     }
     .nav-item{
    padding-right: 30px;
    
    }
    .navbar-custom a{
    margin-right: 20px;
    font-size: 17px;
    
    }
    table,th,td{
    padding:5px;
    text-align:center;
    border: 2px solid black;
   
    }
    td{
    color: blue;
    }
    

.input-border
    {  
    border-radius:50px;
   }
 
 .Title
 {
 background-color:#3f75e0;
 height:80px;
 padding:20px;
 width:1540px;
 }

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

<body>

<center>
<div class="Title">
<h2 style="color:rgb(255,255,255)">MRP'sFarm</h2>

</div>
<h3><span style ="color:rgb(0,0,136)">We Believe You Deserve The Best</span></h3>
</center>



<nav class=" navbar-custom navbar navbar-expand-xl navbar-light sticky-top" style="width:1540px">

<div class="collapse navbar-collapse justify-content-center text-dark" id="navbarSupportedContent">
<ul class="navbar-nav">

<li class="na-item">
<a  class=" nav-link active" href="addnewproduct.jsp" style="color:rgb(255,255,255)">Add New Product<span class="iconify" data-icon="simple-line-icons:plus" data-inline="true"></span></a>
</li>

<li class="nav-item ">
<a class="  nav-link active" href="allproductsandeditproducts.jsp" style="color:rgb(255,255,255)">All Products  <i class="lni lni-cart"></i></a>
</li>

<li class="nav-item">
<a  class=" nav-link active" href="messagereceived.jsp" style="color:rgb(255,255,255)">Message Received<i class="lni lni-clipboard"></i></a>
</li>

<li class="nav-item">
<a class=" nav-link active" href="OrderRecieved.jsp" style="color:rgb(255,255,255)">Orders Received<i class="lni lni-pencil-alt"></i></a>
</li>

<li class="nav-item">
<a  class=" nav-link active" href="Cancel.jsp" style="color:rgb(255,255,255)">Canceled Orders<span class="iconify" data-icon="simple-line-icons:close" data-inline="false"></span></a>
</li>

<li class="nav-item">
<a  class=" nav-link active" href="Deliver.jsp" style="color:rgb(255,255,255)">Delivered Orders<i class="lni lni-agenda"></i></a>
</li>

<li class="nav-item">
<a  class=" nav-link active" href="logout.jsp" style="color:rgb(255,255,255)">Logout <span class="iconify" data-icon="simple-line-icons:login" data-inline="false"></span></a>
</li>
</ul>

</div>

</nav>





<a href="AdminWelcome.jsp"><i class="fa fa-arrow-circle-left" style="font-size:24px"></i></a>
<div style="color: black; text-align: center; font-size: 30px;">Deliver Order</div>





<div class="col-md-8">

<div>
<hr>
</div>
</div>

   
       <table class="table ">
       



      
        <thead>
        
          <tr>
        
            
            
                <th scope="col" >Product Id</th>
                <th>Product Name</th>
                <th scope="col"><i class="fa fa-inr"></i> Price</th>
                <th scope="col" >Quantity</th>
                         
               <th scope="col"><i class="fa fa-inr"></i> Total</th>
           
               <th scope="col">Order Date</th>
               <th scope="col">Payment Method</th>
            
               <th scope="col">Customer Name</th>
               <th scope="col">Customer Email</th> 
               <th scope="col">Phone</th>  
               <th>State</th>
               <th>City</th>
               <th>Pin code</th>
               <th>Address</th>
               <th scope="col">Status</th>
              
            
            
           
           
          </tr>
        </thead>
        <tbody>
       <%

       try
       {
    	   Class.forName("com.mysql.jdbc.Driver");  
    		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");  
    	   PreparedStatement ps=con.prepareStatement("select * from myorder where status='delivered'");
    	   ResultSet set=ps.executeQuery();
    	   while(set.next())
			{
				 
    	   
    
       %>
       
      

          <tr>
         
            <td><%=set.getString(1)%></td>
            <td><%=set.getString(2)%></td>
            <td><%=set.getString(6)%></td>
            <td> <%=set.getString(5)%></td>
            <td><%=set.getString(7)%></td>
            <td><%=set.getString(9)%></td>
             <td><%=set.getString(8)%></td>
              
<td><%=set.getString(11)+set.getString(12) %></td>
            <td><%=set.getString(3)%></td>
             <td><%=set.getString(13)%></td>
       <td><%=set.getString(14)%></td>
       <td><%=set.getString(15)%></td>
            <td><%=set.getString(16)%></td>
             <td><%=set.getString(17)%></td>
            
               <td><%=set.getString(10)%></td> 
            
           
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

<script type="text/javascript " src="js/popper.min.js"></script>
<script type="text/javascript " src="js/bootstrap.min.js"></script>
</body>
</html>