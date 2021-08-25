<%@page import="java.util.Base64"%>
<%@page import="java.io.ByteArrayOutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<script type="text/javascript " src="js/popper.min.js"></script>
<script type="text/javascript " src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.card{
width:270px;
margin:20px;
}

.card-img-top{
padding:5px;
 height:200px;
 width:200px;
}

</style>
</head>
<%@include file="afterloginheader.jsp" %>
<body>
<%
response.setHeader("Cache-Control", "no-cache, no-store");


String user=(String) session.getAttribute("userid");

if(user==null)
{
	response.sendRedirect("Home.jsp");
}%>

<%

int id1=Integer.parseInt(request.getParameter("product"));

		Connection con;
		PreparedStatement pst;
		ResultSet stt;

		String imgLen1="";
		
		try
		{  
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
			
			pst=con.prepareStatement("select * from products where id='"+id1+"'");
			stt=pst.executeQuery();
			
			if(stt.next())
			{
				 Blob blob = stt.getBlob(6);
                 
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


<br>
<div class="products">
<div class="container-fluid">
<div class="row" >
<form action="addToCartAction.jsp" method="post">
<div class="col-sm-3">
  <div class="card ">
  
    <div class="card-body">
    <img class="card-img-top" src="data:image/jpg;base64,${base64Image}" />
    <input type="hidden" value="<%=id1 %>" name="product">
   <h5 class="card-title"><b><%=stt.getString(2) %> </b></h5>
        <p class="card-text"><%=stt.getString(5) %></p>
         <h5 class="card-text">Rs<%=stt.getString(4) %></h5>
       
 <button type="submit" class="btn btn-info">Place order</button>
    </div>
  </div>
</div>
</form>
</div>
</div>
</div>
<%
			   }
					}
					catch (Exception e)
					{
					e.printStackTrace();
					}

%>
<%@include file="afterloginfooter.html" %>
</body>
</html>