<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/popper.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    
    <style>
    .carousel .carousel-indicators li {background-color: info;}
.carousel .carousel-indicators li.active {background-color: blue;}
    </style>
</head>
<body>
<%@include file="afterloginheader.jsp" %>
 <div class="testemonial-section" style="background-color:#d1f0ea">
    <hr class="mb-5 mt-5">
        <div class="my-5 text-center">
            <img src="images/testemonials.png" alt="Testemonials" id="testemonial-img">
        </div>
        <div class="container" id="testimonials">
            <div class="row">
                <div class="col-md-12">
                    <div id="quote-carousel" class="carousel slide" data-ride="carousel">

                       <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  
  <div class="carousel-inner">
    <div class="carousel-item active">
       <p >We visited MRP's dairy farm from where we get our milk. It was very appreciable that the farm is well maintained 
  . It was very neat and clean place and cows and buffaloes were of good breed. .</p><br>
  <center> <img src="images/user1.jpg" class="rounded-circle" alt="manu">   </center>
  <center> Happy panchal </center>
    </div>
    <div class="carousel-item">
       <p>A truly trustworthy organic milk.My daughter loves it.Thanks for the excellent quality.I tried 
  to milk the cow, thrilling indeed! Ghee, Paneer, Curd are of very good quality . 
  </p><br>
    <center> <img src="images/user2.jpg" class="rounded-circle" alt="manu">   </center>
  <center> Shaka Tyagi </center>
    </div>
    <div class="carousel-item">
       <p> One of the best natural milk services in the twin cities. Pure, Unadulterated, genuine and superior quality cow milk. 
       My baby is addicted to it. Thanks for the committment to stay different from all others..</p><br>
   <center> <img src="images/user3.jpg" class="rounded-circle" alt="manu">   </center>
  <center> Anju Bala </center>
    </div>
  </div>
 <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true" ></span>
    <span class="sr-only" >Next</span>
  </a>
</div>
</div>
</div>
</div>
</div>
<br><br>
<hr>
</div>


</body>
</html>