<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript " src="js/popper.min.js"></script>
<script type="text/javascript " src="js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Contact Form</title>

  <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    
    
    <style>
    .contactForm{
  top: 50%;
  left: 50%;
  padding: 50px ;
  width:1000px;
  height:470px;
  align:center;
  background: rgba(255,255,255,0.04);
  box-shadow: -1px 4px 28px 0px rgba(0,0,0,0.75);
}

    </style>
    <%@include file="afterloginheader.jsp" %>
</head>
<body>
<%
response.setHeader("Cache-Control", "no-cache, no-store");


String userid=(String) session.getAttribute("userid");

if(userid==null)
{
	response.sendRedirect("Home.jsp");
}%>
<br>

<!-- Section: Contact v.3 -->
<section class="contact-section my-5  ">

  <!-- Form with header -->
  <div class="container">
<form action="Contact.jsp" method="post">
    <!-- Grid row -->
    <div class="row">

      <!-- Grid column -->
      <div class="col-lg-8" style="background-color:#D7EEEE;  ">

        <div class="card-body form">

          <!-- Header -->
          <h3 class="mt-4"><i class="fas fa-envelope pr-2"></i>Write to us:</h3>

          <!-- Grid row -->
          <div class="row">

            <!-- Grid column -->
            <div class="col-md-6">
              <div class="md-form mb-0">
                <input type="text" id="fname" class="form-control" name="Fname">
                <label for="fname" class="">First name</label>
              </div>
            </div>
            <!-- Grid column -->

            <!-- Grid column -->
            <div class="col-md-6">
              <div class="md-form mb-0">
                <input type="text" id="lastname" class="form-control" name="Lname">
                <label for="lastname" class="">last name</label>
              </div>
            </div>
            <!-- Grid column -->

          </div>
          <!-- Grid row -->

          <!-- Grid row -->
          <div class="row">

            <!-- Grid column -->
            <div class="col-md-6">
              <div class="md-form mb-0">
                <input type="text" id="Phone" class="form-control" name="Phoneno">
                <label for="Phone" class="">PhoneNo</label >
              </div>
            </div>
            <!-- Grid column -->

            <!-- Grid column -->
            <div class="col-md-6">
              <div class="md-form mb-0">
                <input type="text" id="emails" class="form-control"  name="Email">
                <label for="emails" class="">Email</label>
              </div>
            </div>
            <!-- Grid column -->

          </div>
          <!-- Grid row -->

          <!-- Grid row -->
          <div class="row">

            <!-- Grid column -->
            <div class="col-md-12">
              <div class="md-form mb-0">
                <textarea id="message" class="form-control md-textarea" rows="3" name="Message"></textarea>
                <label for="message">Your message</label>
               
              
                
                 <button type="submit" class="btn btn-info"> send <i class="fas fa-paper-plane"></i></button>
              
              </div>
            </div>
            <!-- Grid column -->

 <% String user=request.getParameter("msg");
          if("valid".equals(user)){
        	  %>
        	  <h4> We received you message </h4>
 
<% } %>
<%
if("invalid".equals(user)){
        	  %>
        	  <h4> Something Went Wrong </h4>
 
<% } %>

          </div>
          <!-- Grid row -->

        </div>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-lg-4" style="background-color:#1ABDBC ; ">

        <div class="card-body contact text-center h-100 text-white " >

          <h3 class="my-4 pb-2">Contact information</h3>
          <ul class="text-lg-left list-unstyled ml-4">
            <li>
              <p><i class="fas fa-map-marker-alt pr-2"></i>Dairy Complex, Tajpur Rd near Body care Health Club,Ludhiana,Punjab 141008</p>
            </li>
            <li>
              <p><i class="fas fa-phone pr-2"></i>+91 9416468601</p>
            </li>
            <li>
              <p><i class="fas fa-envelope pr-2"></i>MRP.sFarm@gmail.com</p>
            </li>
          </ul>
          <hr class="bg-white my-4">
          <ul class="list-inline text-center list-unstyled">
            <li class="list-inline-item">
              <a >
                <i class="fab fa-twitter"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a >
                <i class="fab fa-linkedin-in"> </i>
              </a>
            </li>
            <li class="list-inline-item">
              <a >
                <i class="fab fa-instagram"> </i>
              </a>
            </li>
          </ul>

        </div>

      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row -->
</form>
  </div>
  <!-- Form with header -->

</section>
<!-- Section: Contact v.3 -->

<br>
<%@include file="afterloginfooter.html" %>
    <script type="text/javascript " src="js/popper.min.js"></script>
<script type="text/javascript " src="js/bootstrap.min.js"></script>
</body>
</html>