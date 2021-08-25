<%@page import="Connection_db.ConnectionProvider" %>
<%@page import="java.util.Base64"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*" %>
<%@include file="afterloginheader.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="your-project-dir/icon-font/lineicons.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Cart</title>
	
	<style>
	.card{
border:1px solid #ccc;
margin:25px;
padding:20px;
margin-bottom:10px;
display:inline-block;
}

.card-img-top{
padding:20px;
width:200px;
height:200px;
}
	

    .overlay {
    position:absolute;
    top:33%;
    left:37%;
    z-index:1;
   
}
 .banner {
    position: relative;
             
}  
.alert{
color:purple;
} 


.cartItems{
background-color:#E9E0DF;
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
<center>

<%
String remove=request.getParameter("msg");
if("removed".equals(remove))
{
%>
<h3 class="alert">Product Successfully Removed!</h3>
<%} %>

</center>
<div class="container">
<div class="row">
<div class="col-8">
<h5 style="padding-top:30px;">YOUR CART ITEMS&nbsp; &nbsp; <i class="lni lni-cart"></i></h5>
<hr>


<%


String email=(String)session.getAttribute("userid").toString();
int inc=1;
int dec=1;
try
{
	Connection con=ConnectionProvider.getCon();
	
	

%>
         
      <%
      PreparedStatement ps1=con.prepareStatement("select * from mycart where email='"+email+"'");
      ResultSet rs1=ps1.executeQuery();
      while(rs1.next())
      {
    	  
    	  Blob blob = rs1.getBlob(4);
          
          InputStream inputStream = blob.getBinaryStream();
          ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
          byte[] buffer = new byte[4096];
          int bytesRead = -1;
           
          while ((bytesRead = inputStream.read(buffer)) != -1)
          {
              outputStream.write(buffer, 0, bytesRead);                  
          }
           
          byte[] imageBytes = outputStream.toByteArray();
          String base64Image = Base64.getEncoder().encodeToString(imageBytes);
           
          pageContext.setAttribute("base64Image", base64Image);
      
          inputStream.close();
          outputStream.close();
      %>
     
       <div class="card ">
       <div class="row">
       <div class="col-3">
    <img src="data:image/jpg;base64,${base64Image}" class="card-img-top"  style="width:150px" alt="..." />
       </div>
       <div class="col-6">
       
      <div class="card-body">               
 
 <p class="card-text" style="color:purple;"><%=rs1.getString(2) %></p>
        
 <p style="font-size:12px;"><%=rs1.getString(2) %></p>
        <p class="card-text">Price :<b><i class="lni lni-rupee"></i> <%=rs1.getString(6) %> </b></p> 
        <p>Quanity:  &nbsp;&nbsp;
    <p><a href="IncAction.jsp?id=<%=rs1.getInt(1)%>&quantity=dec"><i class="fa fa-minus-circle" style="color:purple" aria-hidden="true"></i></a>
 <input type="text" name="quantity" disabled value="<%=rs1.getString(5) %>" style="width:70px;  text-align:center;"><a href="IncAction.jsp?id=<%=rs1.getString(1)%>&quantity=inc">
 <i class="fa fa-plus-circle" style="color:purple" aria-hidden="true"></i></a></p>
   </p>  <br>
            <a  style="color: red;" href="removeFromCart.jsp?id=<%=rs1.getString(1)%>">Remove <i class='fas fa-trash-alt' ></i></a>
         
  
</div></div>

<div class="col-3"> <p class="text-info"><br>Total Price :<i class="lni lni-rupee"></i> <%=rs1.getString(7)%> </p></div>
      </div>
    </div>
    
<%
      
}
}
catch(Exception ee)
{
	ee.printStackTrace();
}

%>
       
      </div>
      
  
  
<%
int total=0;
PreparedStatement pss;
ResultSet stt;


try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
	pss=con.prepareStatement("select sum(total) as total from mycart where email='"+email+"'");	
	stt=pss.executeQuery();
		
	while(stt.next())
	{
		total=stt.getInt(1);
	}


%>
      <div class="col-4">
      <br>
     <br>
  
    <div class="card ">
       <h6 style="padding:20px;">ORDER SUMMARY</h6>
       
      <div class="card-body">
      <div class="row">
      <div class="col-7">
     <p>SUBTOTAL : </p></div>
      <div class="col-5">
     <b><i class="lni lni-rupee"></i>&#8377;<%out.println(total);%></b>
     </div>
     </div>
     <br>
     <div class="row">
     <div class="col-7">
     <p>SHIPPING CHARGES : </p>
     </div>
     <div class="col-5">
     <p> <b><i class="lni lni-rupee"></i>0</b> &nbsp;Free </p>
     </div>
   </div>
     <br> <hr>
     <br>
     <div class="row">
     <div class="col-7">
     <p>AMOUNT PAYABLE :</p>
     </div>
     <div class="col-5">
     <b><i class="lni lni-rupee"></i>&#8377;<%out.println(total);%></b>
       </div>
       </div>
   <br>
     <button  type="submit" class="btn btn-primary"><a style="color:black; " href="Checkout.jsp?sum=<%=total%>">CONTINUE</a></button>

      </div>
    </div>
  </div>
</div>
 </div>
 
 <%
}
catch(Exception ee)
{
	ee.printStackTrace();
}
%>

      <br>
      <br>
      <br>
      </div>

</body>
</html>