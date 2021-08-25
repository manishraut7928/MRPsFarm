  <%@page import="Connection_db.ConnectionProvider" %>
    <%@page import ="java.sql.*" %>
    
    <%
    try{
    Connection con=ConnectionProvider.getCon();
    Statement st=con.createStatement();
    String q1="create table cart(email varchar(70),product_id int ,quanity int,price int,total int,address varchar(300),city varchar(100),state varchar(100),country varchar(200),mobilenumber bigint,orderDate varchar(100),deliveryDate varchar(100),paymentMethod varchar(100), transactionId varchar(100),status varchar(10))";
    	st.execute(q1);
    		
    con.close();
    System.out.println("table created");
    }
    catch(Exception e)
    {
    	 System.out.println(e);
    }
    %>