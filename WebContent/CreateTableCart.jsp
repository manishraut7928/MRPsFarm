  <%@page import="Connection_db.ConnectionProvider" %>
    <%@page import ="java.sql.*" %>
    
    <%
    try{
    Connection con=ConnectionProvider.getCon();
    Statement st=con.createStatement();
    String q1="create table MyCart(product_id int, name varchar(25), email varchar(70) ,quantity int,price int,total int)";
    	st.execute(q1);
    		
    con.close();
    System.out.println("table created");
    }
    catch(Exception e)
    {
    	 System.out.println(e);
    }
    %>