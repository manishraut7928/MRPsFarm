<%@page import="Connection_db.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.util.Base64"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.Blob"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<script type="text/javascript">
if(window.history.forward(1) !=null)
	window.history.forwar(1);
</script>

	<style>
	.card{
border:1px solid #ccc;
margin:25px;
padding:15px;

display:inline-block;
}

.card-img-top{
padding:20px;
width:190px;
height:200px;
}
.cartItems{
background-color:#E9E0DF;
} 	

</style>
<title>Address Payment</title>
</head>
<body>

<div class="cartItems">
<center>
<h2 style="color:purple;">Order Summary</h2>

</center>
</div>
<br>

<%

String userid=(String)session.getAttribute("userid").toString();

String sum=request.getParameter("sum");



System.out.println(sum);

int total=0;
int inc=1;
int dec=1;
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select sum(total) as total from mycart where email='"+userid+"'");	
	while(rs.next())
	{
		total=rs.getInt(1);
	}


%>
     

         
        <%
      
        PreparedStatement pss=con.prepareStatement("select *from mrpsignup where email='"+userid+"'");
        ResultSet rss=pss.executeQuery();
     

        while(rss.next())
        {
      %>
      
      
<div class="cartItems">
<div class="container">
<div class="row">
 <div class="col-6">
               <div class="card "  >
        <div class="card-body " >

          <h3 class="my-4 pb-2">Shipping Address</h3>
        <hr>
          <h4 class="my-4 pb-2 text-primary"><%=rss.getString(2)%>&nbsp;<%=rss.getString(3)%></h4>
              <p><i class="fas fa-map-marker-alt pr-2"></i><%=rss.getString(7)%>,</p>
          
              <p><i class="fas fa-home pr-2"></i><%=rss.getString(8)%>, <%=rss.getString(9)%>, <%=rss.getString(10)%>,</p>
               <p><i class="fas fa-envelope pr-2"> </i> <%=rss.getString(5)%></p>
               <br>
             
              <button type="button" class="btn btn-primary"> <a class="text-light" href="Checkout.jsp?sum=<%=sum%>">Change or Add Address</a>
              </button>
              
             
              
              
               <br>
               <br>
               <p style="color: purple">*If there is no address its mean that you did not set your address!</p>
               <p style="color: red">*This address will also updated to your profile</p>

        </div>
        </div>


      </div>
      <div class="col-lg-6">
               <div class="card "  >
        <div class="card-body " >


          <h3 class="my-4 pb-2">Payment Method</h3>
          <hr>
          <br>



<form action="paymentmode.jsp?sum=<%=sum%>"method="post">
  <input type="radio" id="payment" name="payment" value="cash">
  <label for="payment">Cash On Delivery</label><br>
  <input type="radio" id="payment" name="payment" value="online">
  <label for="payment">Pay Online</label><br><br>
  <button type="submit" class="btn btn-primary">CONTINUE
              </button>
</form> 

<%
	}
}
catch(Exception e)
{
	e.printStackTrace();
}

%>




<br>
<p style="color: red">*Select Online payment for instant cashback.</p>
        </div>
             
             

        </div>
        </div>


      </div>
      </div>
     </div>
        <hr>
        <br>
      
      <br>
   

</body>
</html>