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
<center>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h4  class="text-info">Address Successfully Updated !</h4>
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
<form action="addChangeAddressAction.jsp" method="post">
<div class="container" style="width:40%;">
<div class="form-group">
<h3 style="font-size:20px;color:purple;">Enter Address</h3>
 <input class="form-control" type="text" name="address" value="<%=rs.getString(7)%>" placeholder="Enter Address" required>
 <hr>
 </div>
 <div class="form-group">
<h3 style="font-size:20px;color:purple;">Enter State</h3>
<input class="form-control" type="text" name="state" value="<%=rs.getString(9)%>" placeholder="Enter state" required>
<hr>
</div>
 <div class="form-group">
 <h3 style="font-size:20px;color:purple;">Enter city</h3>
 <input class="form-control" type="text" name="city" value="<%=rs.getString(8)%>" placeholder="Enter city" required>
<hr>
</div>
<div class="form-group">
<h3 style="font-size:20px;color:purple;">Enter pincode</h3>
<input class="form-control" type="text" name="state" value="<%=rs.getString(10)%>" placeholder="Enter Pincode" required>
<hr>
</div>
<div class="form-group">
 <button class="form-control btn btn-info" type="submit">save<i class='far fa-arrow-alt-circle-right'></i></button>
 </div>
 </div>
</form>
<center>
 <h2><a href="ChangeDetailsHeader.jsp" style=" font-size:20px; "><i class='fas fa-arrow-circle-left'>Back</i></a></h2>
 </center>
<%
	}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>

</html>
