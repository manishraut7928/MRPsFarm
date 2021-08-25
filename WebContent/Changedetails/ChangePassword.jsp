<%@page import="Connection_db.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="ChangeDetailsHeader.jsp" %>

<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Password Reset</title>

</head>
<body>
<center>
<% String msg=request.getParameter("msg");
if("notMatch".equals(msg))
{
%>
<h4 class="text-danger">New password and Confirm password does not match!</h3>
<%} %>
<%
if("worng".equals(msg))
{
%>
<h4 class="text-danger">Your old Password is wrong!</h3>
<%} %>
<%
if("done".equals(msg))
{
%>
<h4 class="text-infor">Password change successfully!</h3>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 class="text-danger">Some thing went wrong! Try again!</h3>

<%} %>
</center>
<br>
<form action="ChangePasswordAction.jsp"method="post">
<div class="container" style="width:30%;">
<div class="form-group">
<h3 style="font-size:20px;color:purple;">Enter Old Password</h3>
 <input type="password" name="oldPassword" placeholder="Enter Old Password" required class="form-control ">
  <hr>
  </div>
  <div class="form-group">
 <h3 style="font-size:20px; color:purple;">Enter New Password</h3>
 <input type="password" name="newPassword" placeholder="Enter new Password" required class="form-control">
  <hr>
  </div>
  <div class="form-group">
<h3 style="font-size:20px;color:purple;">Enter Confirm Password</h3>
 <input type="password" name="confirmPassword" placeholder="Enter confirm Password" required class=" form-control ">
  <hr>
  </div>
  <div class="form-group">
  
 <button  type="submit"  class="form-control btn btn-info">save<i class='far fa-arrow-alt-circle-right'></i></button>
 </div>
 </div>
</form>
<br>
<center>
 <h2><a href="ChangeDetailsHeader.jsp" style=" font-size:20px; "><i class='fas fa-arrow-circle-left'>Back</i></a></h2>
 </center>
</body>
<br><br>
</html>
<%@include file="../afterloginfooter.html" %>