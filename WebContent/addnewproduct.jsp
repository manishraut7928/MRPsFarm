
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="java.sql.*"%>
    <%@ include file="adminDash.jsp" %>
   <%@ page import="Connection_db.ConnectionProvider" %> 
  
   
  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript " src="js/popper.min.js"></script>
<script type="text/javascript " src="js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add new product</title>
<style>

.product{
height:600px;
background-color:white;
}
input:hover
{
background-color:#3f75e0;
}
</style>

</head>
<body>


<form action="Product" method="post" enctype="multipart/form-data">
<div class="product">
<div class="container">
<center>
<br>




<% String msg=request.getParameter("msg");
          if("yes".equals(msg))
          {%>
          <center><h3><i>ProductAdded</i></h3></center>
     <%}%>
     <%
     if("no".equals(msg))
     {
    	 %>
    	  <center><h3><i>Product not Added</i></h3></center> 
  <% }
     %> 
     
     <% 
     int id=1;
     
     
     try
   {
     Connection con=ConnectionProvider.getCon();
     Statement st=con.createStatement();
     ResultSet rs=st.executeQuery("select max(id) from products");
     while(rs.next())
          {
     id=rs.getInt(1);
     id=id+1;
          }
   }
     catch(Exception e)
     {
    	 
     }
   
     %>

<br><h5 style="color:#2e4d80"> Product Id :<%out.println(id); %></h5>


<div class="row">
<div class="col-6">
<div class="form-group">
<label for="name">Enter Name</label>
<input type="text" id="name" name="name" class="form-control " placeholder=" Enter Name" required>
<hr style="width:0px; height:0.2px;width:100%; background-color:white" >
</div>
</div>
<div class="col-6">
<div class="form-group">
<label for="category">Enter Category</label>
<input type="text" id="category" name="category" class="form-control input-border" placeholder="Enter Category" required>
<hr  style="width:0px; height:0.2px;width:100%; background-color:white">
</div>
</div>
</div>
<div class="row">
<div class="col-6">
<div class="form-group">
<label for="price">Enter Price</label>
<input type="text" id="price" name="price" class="form-control input-border" placeholder="Enter Price" required>
<hr style="width:0px; height:0.2px;width:100%; background-color:white ">
</div>
</div>
<div class="col-6">
<div class="form-group">
<label for="photo">UploadImage</label><br>
<input type="file" name="photo" id="photo">
<hr style="width:0px; height:0.2px;width:100%; background-color:white ">
</div>


</div>
</div>
<br><br>
<hr style="width:0px; height:0.2px;width:100%; background-color:red" >
<div class="form-group">
<label for="desc">Product Description</label>
<input type="text" id="desc" name="desc" class="form-control " placeholder="Enter Description" required>
<hr style="width:0px; height:0.2px;width:100%; background-color:red" >
</div>

<div class="form-group">
<button type="submit" class="btn btn-info text-light form-control " style="border-radius: 25px;">
Save
<span class="iconify" data-icon="simple-line-icons:arrow-right-circle" data-inline="false"></span></button>
</div>




</center>

</div>
</div>
</form>


<script type="text/javascript " src="js/popper.min.js"></script>
<script type="text/javascript " src="js/bootstrap.min.js"></script>
</body>
</html>