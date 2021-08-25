<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Connection_db.ConnectionProvider" %>
    <%@page import ="java.sql.*" %>
    <%@page import ="java.util.* "%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="afterloginheader.jsp" %>
<img src="images/img.png" height="200px" width="100%">
<br>
<br>

<center><marquee behaviour="scroll" width="85%" bgcolor="#c5eaed" scrollamount="7" ><h1><span style="color:#FF9933"> We Believe</span><span style="color:#ffffff"> You Deserve</span> <span style="color:#138808">The Best</span></h1></marquee></center>
<br><br>
<%
String email=session.getAttribute("userid").toString();

String sum =request.getParameter("sum");
System.out.print(sum);
int total=Integer.parseInt(sum);
String option =request.getParameter("payment");
System.out.print(option);


Random randomGenerator = new Random();
int Orderid = randomGenerator.nextInt(1000000);
Random randomGenerators=new Random();
int Custid=randomGenerator.nextInt(10000);

if(option.equals("cash"))
	
{
%>
<br>
<br>
<% 
String status="COD";


try
{
	
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps1=con.prepareStatement("update mycart set PaymentMethod=? where email='"+email+"'");
	
	ps1.setString(1, status);
	
	ps1.executeUpdate();
	

}
catch(Exception e)
{
	e.printStackTrace();
}
%>
<center>

   <a class="text-light" href="OrderPlaced.jsp">   <button type="button" class="btn btn-primary">ConfirmOrder</button></a>

</center>
<%} %>
<%
if(option.equals("online"))
{
	
	
	String status="onlinepayment";
	

try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps1=con.prepareStatement("update mycart set PaymentMethod=? where email='"+email+"'");
	
	ps1.setString(1, status);
	
	ps1.executeUpdate();
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
	
	<center>
	<form method="post" action="pgRedirect.jsp">
	            
	            
		
					<input id="ORDER_ID" tabindex="1" maxlength="20" size="20"
						type="hidden" name="ORDER_ID" autocomplete="off"
						value="ORDS_<%= Orderid %>">
					
					<input id="CUST_ID" type="hidden" tabindex="2" maxlength="30" size="12" 
					name="CUST_ID" autocomplete="off" value="CUST_<%= Custid %>">
				
								
				
					<input title="TXN_AMOUNT" tabindex="10"
						type="hidden" name="TXN_AMOUNT" 
						value="<%=total%>">
						
					
					
					<input id="INDUSTRY_TYPE_ID" tabindex="4" type="hidden" maxlength="12" size="12" 
					name="INDUSTRY_TYPE_ID" autocomplete="off" value="Retail">
				
					
					
					<input id="CHANNEL_ID" type="hidden" tabindex="4" maxlength="12"
						size="12" name="CHANNEL_ID" autocomplete="off" value="WEB">
						
<button class="btn btn-primary">Confirm Order</button>
						
						
					 
		
	</form>
	</center>
	<br>
	<br>
	   
<%}
%>
</body>
</html>