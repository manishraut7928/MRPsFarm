<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="Connection_db.ConnectionProvider" %>
       <%@page import="java.sql.* " %>
          <%@ include file="adminDash.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit product</title>

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

<center>
<%
String id=request.getParameter("id");
try{
	
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from products where id='"+id+"'");
	while(rs.next())
	{
		

%>


<form action="EditProduct" method="post" enctype="multipart/form-data">
<div class="product">
<div class="container">
<center>
<br>
<h2>Edit Product</h2>
<h5 style="color:#2e4d80"> Product Id :<%out.println(id); %></h5>
<br>


<div class="row">
<input type="hidden" name="id" value="<%out.println(id);%>">
<div class="col-6">
<div class="form-group">
<label for="name">Enter Name</label>
<input type="text" id="name" name="name" class="form-control " value="<%=rs.getString(2) %>" required>
<hr style="width:0px; height:0.2px;width:100%; background-color:white" >
</div>
</div>

<div class="col-6">
<div class="form-group">
<label for="category">Enter Category</label>
<input type="text" id="category" name="category" class="form-control " value="<%=rs.getString(3) %>" required>
<hr  style="width:0px; height:0.2px;width:100%; background-color:white">
</div>
</div>
</div>

<div class="row">
<div class="col-6">
<div class="form-group">
<label for="price">Enter Price</label>
<input type="text" id="price" name="price" class="form-control" value="<%=rs.getString(4) %>" required>
<hr style="width:0px; height:0.2px;width:100%; background-color:white ">
</div>
</div>




<div class="col-6">
<div class="form-group">
<label for="image">Select Image</label>
<input style="padding:2px;" type="file" id="image"  name="image" class="form-control btn btn-info" placeholder="select image.." required>
<hr style="width:0px; height:0.2px;width:100%; background-color:white ">
</div>
</div>
</div>


<br><br>
<hr style="width:0px; height:0.2px;width:100%; background-color:red" >
<div class="form-group">
<label for="desc">Product Description</label>
<input type="text" id="desc" name="desc" class="form-control " value="<%=rs.getString(5) %>" required>
<hr style="width:0px; height:0.2px;width:100%; background-color:red" >
</div>

<div class="form-group">
<button type="submit" class="btn btn-info text-light form-control " style="border-radius: 25px;">
Save
<span class="iconify" data-icon="simple-line-icons:arrow-right-circle" data-inline="false"></span></button>
</div>


</div>
</div>
</form>
</center>
<%
	}
}
catch(Exception e)
{
	
}
%>
</body>
</html>

<!-- --------------------- -->