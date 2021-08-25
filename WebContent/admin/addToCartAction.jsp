<%@page import="Connection_db.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<%@page import="java.sql.Blob"%>

<%
System.out.print("welcome");



int id=Integer.parseInt(request.getParameter("product"));
String name=request.getParameter("name");
String userid=(String)session.getAttribute("userid").toString();
System.out.println(userid);
int quantity=1;
int product_price=0;
int product_total=0;
int cart_total=0;

Blob blob=null;
int z=0;

int i=0;

try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("select * from products where id='"+id+"'");
	
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		blob=(rs.getBlob(6));
		name=(rs.getString(2));
	 product_price=Integer.parseInt(rs.getString(4));
	 product_total=product_price;
	 
     }
	PreparedStatement ps1=con.prepareStatement("select * from mycart where product_id='"+id+"' and email='"+userid+"'");
	ResultSet rs1=ps1.executeQuery();	
	while(rs1.next())
	{    
		
		cart_total=rs1.getInt(7);
		cart_total=cart_total+product_total;
		quantity=rs1.getInt(5);
		quantity=quantity+1;
		z=1;
	}
	if(z==1)
	{
		PreparedStatement ps2=con.prepareStatement("update mycart set total='"+cart_total+"',quantity='"+quantity+"' where product_id='"+id+"' and email='"+userid+"'");
		ps2.executeUpdate();
		
	}
	if(z==0)
	{
	
		PreparedStatement pss=con.prepareStatement("insert into mycart(product_id,name,email,image,quantity,price,total)values(?,?,?,?,?,?,?)");
		
		pss.setInt(1, id);
		pss.setString(2, name);
		pss.setString(3, userid);
		pss.setBlob(4,blob);
		pss.setInt(5, quantity);
		pss.setInt(6, product_price);
		pss.setInt(7,product_total);
		i=pss.executeUpdate();

	}
	
	System.out.print("updated "+i);
	out.print(i);

}
catch(Exception e)
{
	e.printStackTrace();
}


%>