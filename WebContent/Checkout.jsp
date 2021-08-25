<%@page import="Connection_db.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="GENERATOR" content="Evrsoft First Page">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<title>Checkout - MRP'sFarm</title>
</head><%@include file="afterloginheader.jsp" %>
<body>
<%
response.setHeader("Cache-Control", "no-cache, no-store");


String user=(String) session.getAttribute("userid");

if(user==null)
{
	response.sendRedirect("Home.jsp");
}%>

<br><br>
<% 

String userid=(String)session.getAttribute("userid").toString();
String sum=request.getParameter("sum");

   %>

<div class="container">
    <div class="col my-4">
        <h2> MRP'sFarm Checkout </h2>
        <div class="my-4">
            <ul class="list-group" id="items">
            </ul>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb mt-3">
                    <li class="breadcrumb-item active " aria-current="page"> <b>Total Price:<%=sum%> <span id="totalPrice"></span></b></li>
                </ol>
            </nav>

        </div>
    </div>
    <div class="col my-4">
        <h2> Enter Address & Other Details:</h2>
        <form action=CheckOutAction.jsp?sum=<%=sum%> method="post">
        
        
             
     <%
     Connection connection;
		PreparedStatement ps;
		ResultSet st;

		String imgLen="";
try
{
	Connection con=ConnectionProvider.getCon();
	Statement sts=con.createStatement();
	ResultSet rs=sts.executeQuery("select * from mrpsignup where email='"+userid+"'");
	while(rs.next())
	{

%>       
            <div class="form-row">
                <div class="form-group col-md-3">
                    <label for="inputname">First Name</label>
                    <input type="text" class="form-control" id="inputname" name="Fname" value="<%=rs.getString(2) %>" placeholder="FirstName" pattern="[a-zA-Z]+" title="Type only characters" > 
                </div>
                <div class="form-group col-md-3">
                    <label for="inputname">Last Name</label>
                    <input type="text" class="form-control" id="inputname" name="Lname" value="<%=rs.getString(3) %>" placeholder="LastName"  pattern="[a-zA-Z]+" title="Type only characters" > 
                </div>
                <div class="form-group col-md-6">
                    <label for="inputEmail4">Email</label>
                    <input disabled type="email" class="form-control" id="inputEmail4" name="email" value="<%=rs.getString(5) %>"placeholder="Email"pattern=".+@gmail\.com|.+@yahoo\.in">
                </div>
            </div>
            <div class="form-group">
                <label for="inputAddress">Address</label>
                <input type="text" class="form-control" id="inputAddress" name="address" value="<%=rs.getString(7) %>" placeholder="address">
            </div>
           
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputCity">City</label>
                    <input type="text" class="form-control" id="inputCity" value="<%=rs.getString(9) %>"name="city"  pattern="[a-zA-Z]+" title="Type only characters" > 
                </div>
                <div class="form-group col-md-4">
                    <label for="inputState">State</label>
                    <input type="text" class="form-control" id="inputState" name="state" value="<%=rs.getString(8) %>"placeholder="Enter State"  pattern="[a-zA-Z]+" title="Type only characters" > 
                </div>
                <div class="form-group col-md-2">
                    <label for="inputZip">Pincode</label>
                    <input type="text" class="form-control" id="inputZip" value="<%=rs.getString(10) %>"name="zipcode" pattern="[0-9]{6}" maxlength="6">
                </div>
            </div>
            <div class="form-group">
                <label for="inputZip">Phone Number</label>
                <input type="tel" class="form-control" id="phone" name="phone" value="<%=rs.getString(4) %>" pattern="\d{10}" title="Wrong mobile no">
            </div>   
            
           <button class="btn btn-outline-info" type="submit">Save and Continue</button> <br>
       
        </form>
       <br><br><br>

<%
	}
}
catch(Exception e)
{
	e.printStackTrace();
}

%>
</div></div>
<%@include file="afterloginfooter.html" %>


</body>
</html>





