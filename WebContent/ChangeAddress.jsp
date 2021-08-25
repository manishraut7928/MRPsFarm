<%@page import="Connection_db.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="ChangeDetailsHeader.jsp" %>

<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Add Address</title>
</head>
<body>
<%
response.setHeader("Cache-Control", "no-cache, no-store");


String userid=(String) session.getAttribute("userid");

if(userid==null)
{
	response.sendRedirect("Home.jsp");
}%>
<center>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h4  class="text-info">details Successfully Updated !</h4>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h4 class="text-danger">Some thing Went Wrong! Try Again!</h4>
<%} %>

<%
Connection connection;
PreparedStatement ps;
ResultSet st;

String imgLen="";
String email=session.getAttribute("userid").toString();
try
{
	Connection con=ConnectionProvider.getCon();
	Statement sts=con.createStatement();
	ResultSet rs=sts.executeQuery("select * from mrpsignup where email='"+email+"'");
	while(rs.next())
	{

%>
</center>
<br>
<div class="container">
<form action="ChangeAddressAction.jsp" method="post">
 <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputname" style="color:purple">First Name</label>
                    <input type="text" class="form-control" id="inputname" name="fname" value="<%=rs.getString(2) %>" placeholder="FirstName" pattern="[a-zA-Z]+" title="Type only characters" > 
                </div>
                <div class="form-group col-md-6">
                    <label for="inputname"style="color:purple">Last Name</label>
                    <input type="text" class="form-control" id="inputname" name="lname" value="<%=rs.getString(3) %>" placeholder="LastName"  pattern="[a-zA-Z]+" title="Type only characters" > 
                </div>
              
            </div>
            <div class="form-group">
                <label for="inputAddress"style="color:purple">Address</label>
                <input type="text" class="form-control" id="inputAddress" name="address" value="<%=rs.getString(7) %>" placeholder="1234 Main St">
            </div>
           
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="inputCity"style="color:purple">City</label>
                    <input type="text" class="form-control" id="inputCity" value="<%=rs.getString(8) %>"name="city"  pattern="[a-zA-Z]+" title="Type only characters" > 
                </div>
                <div class="form-group col-md-4">
                    <label for="inputState"style="color:purple">State</label>
                    <input type="text" class="form-control" id="inputState" name="state" value="<%=rs.getString(9) %>"placeholder="Enter State"  pattern="[a-zA-Z]+" title="Type only characters" > 
                </div>
                <div class="form-group col-md-2">
                    <label for="inputZip"style="color:purple">PinCode</label>
                    <input type="text" class="form-control" id="inputZip" value="<%=rs.getString(10) %>"name="zipcode" pattern="[0-9]{6}" maxlength="6">
                </div>
            </div>
             
 <button class="form-control btn btn-info" type="submit">save<i class='far fa-arrow-alt-circle-right'></i></button>
 
</form>
</div>
<center>
 <h2><a href="ChangeDetailsHeader.jsp" style=" font-size:20px; "><i class='fas fa-arrow-circle-left'>Back</i></a></h2>
 </center>
 <br><br><br>
<%
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
<%@include file="afterloginfooter.html" %>
</html>
