<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/popper.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>MRP Dairy</title>
<link rel="stylesheet" href="assets/css/LineIcons.css">



<style>
.title
{
height:70px;
 
}

 
.navbar-custom  {
    background-color: #b4daed;
     }
     .nav-item{
   
    
    }
    .navbar-custom a{
    margin-right: 20px;
    font-size: 14px;
    
    }
 
</style>


<script type="text/javascript">

document.addEventListener("DOMContentLoaded", function(){
	  window.addEventListener('scroll', function() {
	      if (window.scrollY > 50) {
	        document.getElementById('navbar_top').classList.add('fixed-top');
	        // add padding top to show content behind navbar
	        navbar_height = document.querySelector('.navbar').offsetHeight;
	        document.body.style.paddingTop = navbar_height + 'px';
	      } else {
	        document.getElementById('navbar_top').classList.remove('fixed-top');
	         // remove padding top from body
	        document.body.style.paddingTop = '0';
	      } 
	  });
	}); 

</script>
</head>
<body>
<div class="title">
<nav id="navbar_top" class=" navbar-custom navbar navbar-expand-xl " >

<div class="collapse navbar-collapse justify-content-center text-light" id="navbarSupportedContent">
<ul class="navbar-nav">


<li class="nav-item">
<a style="color:#015078"  class=" nav-link active" href="Home.jsp"><h2>MRP'sFarm</h2></a>
</li>

<li class="nav-item">
<a style="color:#015078"  class=" nav-link active" href="Home.jsp">Home<center><i class="fas fa-igloo"></i></center></a>
</li>

<li class="nav-item ">
<a style="color:#015078"  class="  nav-link active" href="login.jsp">My Cart <center><i class="fas fa-shopping-cart"></i></center></a>
</li>

<li class="nav-item">
<a style="color:#015078"  class=" nav-link active" href="login.jsp">My Orders<center> <i class="fas fa-sort"></i></center></a>
</li>


<li class="nav-item">
<a style="color:#015078"  class=" nav-link active" href="AboutUs.jsp">About<center> <i class="far fa-address-card"></i></center></a>
</li>

<li class="nav-item" >
    
    <form class="form-inline my-2 my-lg-0" action="afterloginSearchbar.jsp" method="post">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>

</ul>

</div>

</nav>
<br>
</div>

</body>
</html>