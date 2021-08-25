<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/popper.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    
  
    <title>MRP'sFarm</title>
    <style type="text/css">
    .customer{
    background-color:#348feb;
    }
   
    </style>
  
</head>
<body style="">
<nav class="navbar navbar-expand-lg navbar-dark  bg-dark ">
    <div class="container-fluid">
    
        <a class="navbar-brand" href="#"><h4 style=" color:cyan">MRP's Farm</h4></a>
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="mx-2">
          
            <a href="login.jsp">    <button class="btn btn-warning mr-sm-2" type="button" >LOGIN</button></a>
           
            <a href="signup.jsp">         <button class="btn btn-secondary mr-sm-2" type="button" data-bs-toggle="modal" data-bs-target="#signupModal">
                    SIGNUP
                </button></a>
            </div>
        </div>
    </div>
</nav>
<div id="carouselExampleCaptions" class="carousel slide carousel-fade " data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Slide 1" style="width:20px; bgcolor:white;"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                aria-label="Slide 2" style="width:20px"></button>
        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                aria-label="Slide 3" style="width:20px"></button>
    </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
           <img src="images/starting/milkdrops.jpg"  height="450" width="1360"  class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
             <h3  style="color:black">Fresh Milk</h3>
                <p  style="color:black">Maintaining milk at 4°C improves shelf life prevents increase in bacteria counts</p>
                
                <a class="btn btn-primary btn-lg" href="ItemList.jsp" role="button">Try Our Products</a>
            </div>
        </div>

        <div class="carousel-item">

            <img class="bd-placeholder-img" width="1400" height="400" src="images/starting/makhan.jpg" alt="">

            <div class="carousel-caption d-none d-md-block">
               <h3 style="color:white">Pure Makhan</h3>
                <p style="color:white">non Fat and with Fat Makhan available </p>
                <a class="btn btn-primary btn-lg" href="ItemList.jsp" role="button">Try Our Products</a>
            </div>
        </div>
        <div class="carousel-item">
            <img class="bd-placeholder-img" width="1400" height="400" src="images/starting/cow.jpg" alt="">
            <!--      <img class="bd-placeholder-img" width="1400" height="400" src="cowGrass.png"alt="">-->
            <div class="carousel-caption d-none d-md-block">
                <h3 style="color:white">Milking Twice a Day</h3>
                <p style="color:white">Fresh Milk reaches your doorstep within 24 hours</p>
                <a class="btn btn-primary btn-lg" href="ItemList.jsp" role="button">Try Our Products</a>
            </div>
        </div>
    </div>
    
</div>

                   <!-- next section carts -->



<div class="container my-4">
    <div class="row mb-2">
        <div class="col-md-6">
            <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-4 d-flex flex-column position-static">
                    <strong class="d-inline-block mb-2 text-primary">Cow Milk</strong>
                    <h3 class="mb-0">The Natural Sweetness of Cow Milk</h3>
                    <!--<div class="mb-1 text-muted">Nov 12</div>-->
                    <p class="card-text mb-auto">A glass of milk may become your kid's favourite drink with MRP's Farm Cow
                        Milk. The natural sweetness of our cow's milk is the hallmark of purity and becomes an instant
                        favourite among kids.The milk you receive has an abundance of Vitamin D, B, B12, Calcium,
                        Magnesium, Phosphorus,Potassium and amino acids - a combination of powerful nutrients essential
                        for the development of your mind and body.</p>

                </div>
                <div class="col-auto d-none d-lg-block">
                    <img class="bd-placeholder-img" width="200" height="250" src="images/cowmilk.jpeg" alt="">

                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-4 d-flex flex-column position-static">
                    <strong class="d-inline-block mb-2 text-success">Buffalo Milk</strong>
                    <h3 class="mb-0">The Rich Creaminess of Buffalo MIlk</h3>

                    <p class="mb-auto">
                        If you are a person who loves the purest and creamiest milk from the countryside, MRP's Farm
                        Buffalo Milk is the right product for you! The protein-rich milk you receive every
                        morning is sourced from Murrah Buffaloes, directly procured from our farmers.Health benefits: A
                        glass of buffalo milk everyday is a wholesome source of Calcium which is crucial for bone
                        strength. It contains Potassium that stabilizes blood pressure .</p>

                </div>
                <div class="col-auto d-none d-lg-block">
                    <img class="bd-placeholder-img" width="200" height="250" src="images/buffalowmilk.jpeg" alt="">
                </div>
            </div>
        </div>
    </div>
</div>

                                    <!-- ----next row of carts -->


<div class="container my-4">
    <div class="row mb-2">
        <div class="col-md-6">
            <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-4 d-flex flex-column position-static">
                    <strong class="d-inline-block mb-2 text-primary">Low Fat Cow Milk</strong>
                    <h3 class="mb-0">Rich in Nuttrients,Low in Fat</h3>
                    <p class="card-text mb-auto">
                        Have you always felt that low-fat milk never tasted like milk but
                        tasted more like water? Give MRP's Farm Low Fat Cow Milk a try. , MRP'sFarm
                        LFCM balances the loss of fat with a higher amount of milk protein and minerals.</p>
                </div>
                <div class="col-auto d-none d-lg-block">
                    <img class="bd-placeholder-img" width="200" height="250" src="images/skimmilk.jpeg" alt="">
                </div>
            </div>
        </div>


        <div class="col-md-6">
            <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-4 d-flex flex-column position-static">
                    <strong class="d-inline-block mb-2 text-success">Ghar Jaisa Dahi</strong>
                    <h3 class="mb-0">Every Scoop Taste Like Home</h3>

                    <p class="mb-auto">
                        Every scoop of our Dahi is 100% natural, made from pure cow milk and delivered to
                        your doorstep within 36 hrs from milking.
                        Health benefits: Regular consumption of our Ghar Jaisa Dahi enhances immunity and improves
                        digestion..</p>

                </div>
                <div class="col-auto d-none d-lg-block">
                    <img class="bd-placeholder-img" width="200" height="250" src="images/curd.jpeg" alt="">

                </div>
            </div>
        </div>
    </div>
</div>


<div class="container my-4">
    <div class="row mb-2">
        <div class="col-md-6">
            <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-4 d-flex flex-column position-static">
                    <strong class="d-inline-block mb-2 text-primary">Low Fat Dahi</strong>
                    <h3 class="mb-0">Low in Fat,High in Protin</h3>

                    <p class="card-text mb-auto">
                        Our customers vouch for it to be the tastiest low fat dahi they have
                        ever had. Our Low Fat Dahi is 100% natural, made from pure cow milk and delivered to your
                        doorstep within 36 hrs from milking.
                        Health benefits: Low Fat Dahi has
                        all the essential Vitamins and Minerals your body needs.</p>

                </div>
                <div class="col-auto d-none d-lg-block">
                    <img class="bd-placeholder-img" width="200" height="250" src="images/curd.jpeg" alt="">
                </div>
            </div>
        </div>


        <div class="col-md-6">
            <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-4 d-flex flex-column position-static">
                    <strong class="d-inline-block mb-2 text-success">Taaza Paneer</strong>
                    <h3 class="mb-0">Fresh Paneer Made With Cow Milk</h3>

                    <p class="mb-auto">
                        The paneer is made from farm-fresh cow milk and in the most natural home-based
                        paneer making techniques. We then pack and deliver it to your doorstep fresh just within 36-48
                        hrs of milking.
                        Health benefits: Paneer is a storehouse of essential nutrients and calcium that aid
                        digestion.</p>

                </div>
                <div class="col-auto d-none d-lg-block">
                    <img class="bd-placeholder-img" width="200" height="250" src="images/paneer.jpeg" alt="">
                </div>
            </div>
        </div>
    </div>
</div>


<div class="container my-4">
    <div class="row mb-2">
        <div class="col-md-6">
            <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-4 d-flex flex-column position-static">
                    <strong class="d-inline-block mb-2 text-primary">Desi DaneDar Ghee</strong>
                    <h3 class="mb-0">Buffalo Ghee</h3>

                    <p class="card-text mb-auto">
                        MRP's Farm Cow Ghee is a delightful recipe that is sure to remind
                        you of your childhood in the country-side when the Ghee used to be fresh, Buffalo
                        Daanedar Ghee. We have painstakingly tried to replicate that homely process in our facility after
                        extensive consultation with our esteemed customers and we are proud of the results.</p>

                </div>
                <div class="col-auto d-none d-lg-block">
                    <img class="bd-placeholder-img" width="200" height="250" src="images/buffalowghee.jpeg" alt="">
                </div>
            </div>
        </div>


        <div class="col-md-6">
            <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-4 d-flex flex-column position-static">
                    <strong class="d-inline-block mb-2 text-success">Desi Danedar Ghee</strong>
                    <h3 class="mb-0">Cow Ghee</h3>

                    <p class="mb-auto">
                        MRP's Farm Cow Ghee is a delightful recipe that is sure to remind
                        you of your childhood in the country-side when the Ghee used to be fresh, Cow
                        Daanedar Ghee. We have painstakingly tried to replicate that homely process in our facility after
                        extensive consultation with our esteemed customers and we are proud of the results</p>

                </div>
                <div class="col-auto d-none d-lg-block">
                     <img class="bd-placeholder-img" width="200" height="250" src="images/cowghee.jpeg" alt="">
                </div>
            </div>
        </div>
    </div>
</div>



<div class="container my-4">
    <div class="row mb-2">
        <div class="col-md-6">
            <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-4 d-flex flex-column position-static">
                    <strong class="d-inline-block mb-2 text-primary">Fresh Cream</strong>
                    <h3 class="mb-0">Fresh cream Preservative-free </h3>

                    <p class="card-text mb-auto">
                        Made entirely from fresh and natural Milk,MRP's Farm Fresh Cream
                         has the added goodness of whole Cow and Buffalo Milk that makes it a healthier 
                        . Free of preservatives and adulterants of any kind, our Fresh Cream is nutritious and
                        flavorful that makes for a wholesome meal for your family.

                        .</p>

                </div>
                <div class="col-auto d-none d-lg-block">
                    <img class="bd-placeholder-img" width="200" height="250" src="images/cream.jpeg" alt="">
                </div>
            </div>
        </div>


        <div class="col-md-6">
            <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-4 d-flex flex-column position-static">
                    <strong class="d-inline-block mb-2 text-success">Butter</strong>
                    <h3 class="mb-0">MRP's Farm Butter</h3>

                    <p class="mb-auto">MRP's Farm Butter are a fresh and affordable source of protein for your whole
                        family. Proper sanitization of Wrapper  prevents infection 
                        . If you are a fitness freak, include our Butter in your daily diet as a
                        delicious and nutritious alternative to the regular Butter you purchase from the market.
                        Health benefits: Rich in dietary fibre, keeps our digestive system healthy
                    </p>

                </div>
                <div class="col-auto d-none d-lg-block">
                    <img class="bd-placeholder-img" width="200" height="250" src="images/saltedbutter.jpeg" alt="">
                </div>
            </div>
        </div>
    </div>
</div><br>
 



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
<%@include file="footer.html" %>
</div>
 
<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
        crossorigin="anonymous"></script>
 
</body>
</html>