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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>


.card{
border:1px solid #ccc;
width:250px;
margin:35px;
padding:20px;
margin-bottom:10px;
display:inline-block;
}

.card-img-top{
padding:5px;
 height:200px;
 width:200px;
}
.h1{


}

</style>
</head>
<%@include file="header.jsp" %>
<body>
<img src="images/starting/cow.jpg" width=1370 height=400>
<br>
<br>
<center><marquee behaviour="scroll" width="85%" bgcolor="#c5eaed" scrollamount="7" ><h1><span style="color:#FF9933"> We Believe</span><span style="color:#ffffff"> You Deserve</span> <span style="color:#138808">The Best</span></h1></marquee></center>


<br><br>



<%

		Connection connection;
		PreparedStatement ps;
		ResultSet st;

		String imgLen="";
		String Search=request.getParameter("search"); 
		
		
	%>
	
	
	
	 
	 <div class="row">
	
	<%	
		try
		{  
			Class.forName("com.mysql.jdbc.Driver");
			connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
		    ps=connection.prepareStatement("select * from products where name like '%"+Search+"%' or category like '%"+Search+"% ' ");
		 
		   
			st=ps.executeQuery();
			
			while(st.next())
			{
				 Blob blob = st.getBlob(6);
                 
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
<br><br>

 

 <div class="col-mb-4" style=" display:inline-block;">
 <div class="row" >
  <div class="col-sm-3">
 
    <div class="card " style="width:300px">
    <img src="data:image/jpg;base64,${base64Image}" class="card-img" alt="..." width="240" height="250"/>
       
       
      <div class="card-body">
     
       <input type="hidden" value=<%= st.getString(1)%> name="product" class="form-control">
   
        <h5 class="card-title"><%=st.getString(2) %> </h5>
        <p class="card-text"><%=st.getString(5) %></p>
        <p class="card-text"><small class="text-muted">Rs<%=st.getString(4) %></small></p>
       
  <a href="login.jsp"  ><button type="submit" class="btn btn-outline-info" >Add to Cart</button></a>
      </div>
  </div>
  </div>
</div>
 </div>

 <br><br>
 
 <%
			   }
					}
					catch (Exception e)
					{
					e.printStackTrace();
					}

%></div>




<%@include file="footer.html" %>
</body>
</html>


