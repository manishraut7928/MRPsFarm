<%@page import="Connection_db.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import = "java.io.*"%>
   <%@ page import="java.util.*"%>
   <%@ page import = "javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/popper.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>OrderPlaced</title>
</head>
<body>

<%
response.setHeader("Cache-Control", "no-cache, no-store");


String user=(String) session.getAttribute("userid");

if(user==null)
{
	response.sendRedirect("Home.jsp");
}%>

<%


String email=(String)session.getAttribute("userid").toString();
String name=null;
Blob blob=null;
String date=null;
String payment=null;
String CFName=null;
String CLName=null;
String Phone=null;
String city=null;
String state=null;
String pincode=null;
String address=null;

String status="processing";

int total=0;
int id=0;
int price=0;
int quantity=0;


PreparedStatement ps;
ResultSet st;


try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
	
	ps=connection.prepareStatement("select * from mycart where Email='"+email+"'");
	st=ps.executeQuery();
	
	
	while(st.next())
	{    
		id=Integer.parseInt((st.getString(1)));
		name=(st.getString(2));
		blob=(st.getBlob(4));
		quantity=Integer.parseInt((st.getString(5)));
		price=Integer.parseInt((st.getString(6)));
		total=Integer.parseInt((st.getString(7)));
		payment=(st.getString(8));
		date=(st.getString(9));
		
		CFName=(st.getString(11));
		CLName=(st.getString(12));
		Phone=(st.getString(13));
		city=(st.getString(14));
		state=(st.getString(15));
		pincode=(st.getString(16));
		address=(st.getString(17));
		
		
		
				
		

	}
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
<div class="jumbotron text-center">
  <h1 class="display-3">Thank You!</h1>
  <p class="lead"><strong>Please check your MyOrder</strong> for further details about your order.</p>
  <hr>
  <p>
    Having trouble? <a href="AfterloginContactForm.jsp">Contact Us</a>
  </p>
  <p class="lead">
    <a class="btn btn-primary btn-sm" href="UserDash.jsp" role="button">Continue to homepage</a>
  </p>
</div>

<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");

	PreparedStatement pss=con.prepareStatement("insert into myorder(product_id,name,email,image,quantity,price,total,PaymentMethod,date,status,CFName,CLName,Phone,city,state,pincode,address) select product_id,name,email,image,quantity,price,total,PaymentMethod,date,status,CFName,CLName,Phone,city,state,pincode,address from mycart where Email='"+email+"'");
	
	
	
	
	pss.executeUpdate();
	
}
catch(Exception e)
{
	e.printStackTrace();
}
%>


<%
try
{
	

Class.forName("com.mysql.jdbc.Driver");
Connection cons=DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
PreparedStatement pss=cons.prepareStatement("update myorder set status=?  where email='"+email+"'");
pss.setString(1,status);
pss.executeUpdate();


}
catch(Exception e )
{
	
}
%>


<%
try
{
	

Class.forName("com.mysql.jdbc.Driver");
Connection cons=DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
PreparedStatement pst=cons.prepareStatement("delete from mycart where email='"+email+"'");
pst.executeUpdate();
}
catch(Exception e)
{
	e.printStackTrace();
}

%>




</body>
</html>