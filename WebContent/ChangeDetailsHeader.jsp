<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
    <!--Header-->
    <br>         
       

<style>
    .navbar-custom 
     {
    background-color: #b4daed;
     }
     
     .nav-item
     {
         padding-right: 50px;   
     }
     
  
</style>

</head>
<body>
<%
response.setHeader("Cache-Control", "no-cache, no-store");


String user=(String) session.getAttribute("userid");

if(user==null)
{
	response.sendRedirect("Home.jsp");
}%>

<center><h2>Change Details<i class="fa fa-edit"></i></h2></center>
<nav class=" navbar-custom navbar navbar-expand-xl navbar-dark " >

<div class="collapse navbar-collapse justify-content-center text-light" id="navbarSupportedContent">
<ul class="navbar-nav">



          
<%
  
  %>
  
 
<li class="nav-item ">
<a style="color:#CF246A;" href="ChangePassword.jsp">Reset Password <i class='fas fa-key'></i></a>
</li>

<li class="nav-item">
 <a style="color:#CF246A;"href="ChangeAddress.jsp"> Address <i class='fas fa-map-marker-alt'></i></a>
</li>


<li class="nav-item">
<h2><a href="UserDash.jsp" style=" font-size:20px; color:black;"><i class='fas fa-arrow-circle-left'>Back to Home</i></a></h2>
</li>

<br>

</ul>

</div>

</nav>
<img src="images/img.png" height="200px" width="100%">
<br>
<br>

<center><marquee style="margin-top:-3%" behaviour="scroll" bgcolor="#c5eaed" scrollamount="7" ><h1><span style="color:#FF9933"> We Believe</span><span style="color:#ffffff"> You Deserve</span> <span style="color:#138808">The Best</span></h1></marquee></center>

<br><br>

</body>
</html>