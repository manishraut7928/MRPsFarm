<%@page import="Connection_db.ConnectionProvider" %>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MRP'sFarm</title>

<style>
    .navbar-custom 
     {
    background-color: #b4daed;
     }
     
     .nav-item
     {
         padding-right: 10px;   
     }
     
    .nav-link active1:hover
     {
         background-color:#3f75e0;
     }
     
    .navbar-custom a
    {
    margin:15px;
    margin-right: 20px;
    font-size: 14px;
     }
     
     .inputbox
     {
     width:150px;
     }
</style>

</head>
<body>


<nav  id="navbar_top" class=" navbar-custom navbar navbar-expand-xl navbar-dark sticky-top " >
<div class="collapse navbar-collapse justify-content-center text-light" id="navbarSupportedContent">
<ul class="navbar-nav">
<%
 String nam=(String)session.getAttribute("userid");
       try
       {
    	   Connection con=ConnectionProvider.getCon();
    	   PreparedStatement ps=con.prepareStatement("select * from mrpsignup where Email='"+nam+"'");
    	   ResultSet set=ps.executeQuery();
    	   while(set.next())
    	   {
       %>
<li class="nav-item">
<a style="color:#015078"  class=" nav-link active" href="UserDash.jsp"><h6>


<h6 >Welcome <%=set.getString(2)%></h6>
 <%}}
       catch(Exception e)
       {
    	   e.printStackTrace();
       }
       %>
  </h6>
 <center> <i class="fas fa-user"></i></center>
</a>
</li>


<li class="nav-item ">
<a style="color:#015078"  class="  nav-link active" href="ChangeDetailsHeader.jsp">Changedetails <center><i class="fa fa-edit"></i></center></a>
</li>

<li class="nav-item ">
<a style="color:#015078"  class="  nav-link active" href="MyCart.jsp">My Cart <center><i class="fas fa-shopping-cart"></i></center></a>
</li>

<li class="nav-item">
<a style="color:#015078"  class=" nav-link active" href="MyOrder.jsp">My Orders <center><i class="fas fa-sort"></i></center></a>
</li>


<li class="nav-item">
<a style="color:#015078"  class=" nav-link active" href="AfterloginContactForm.jsp">Message Us<center><i class="fas fa-envelope-square"></i></center></a>
</li>

<li class="nav-item">
<a style="color:#015078"  class=" nav-link active" href="afterloginAboutUs.jsp">About<center> <i class="far fa-address-card"></i></center></a>
</li>

<li class="nav-item">
<a style="color:#015078"  class=" nav-link active" href="logout.jsp">Logout<center> <i class="fas fa-sign-out-alt"></i></center></a>
</li>
<br>

<li class="nav-item">
    <form class="d-flex" action="Searchbar.jsp" method="post">
      <input class="inputbox form-control me-2"  type="search" placeholder="Search ...." aria-label="Search" name="search">
      <button class="btn btn-outline-success" type="submit">Search</button>
    </form>
</li>

</ul>

</div>

</nav>




</body>
</html>