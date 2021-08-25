package Admin;
import java.io.BufferedReader;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import java.sql.SQLException;


import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class Upload_Ser
 */
@WebServlet("/Product")
@MultipartConfig
public class Product extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Product() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		

		InputStream inputStream = null;
		
		PreparedStatement statement;
		Connection connection;
		
		String id=request.getParameter("id");
		String category=request.getParameter("category");
		String price=request.getParameter("price");
		String description=request.getParameter("desc");
		String name=request.getParameter("name");
		
		
		
		Part filePart = request.getPart("photo");
		

		
		int i=0;
		
		if(filePart!=null)
		{
			System.out.println(filePart.getName());
			
			inputStream=filePart.getInputStream();
		}
		else
		{
			System.out.println("photo null");
		}
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
			
			statement=connection.prepareStatement("insert into products values(?,?,?,?,?,?)");
			statement.setString(1, id);
			statement.setString(2, name);
			statement.setString(3, category);
			statement.setString(4, price);
			
			statement.setString(5, description);
			statement.setBlob(6, inputStream);
			i=statement.executeUpdate();
			
			if(i>0)
			{
				 response.sendRedirect("addnewproduct.jsp?msg=yes");
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		 	 response.sendRedirect("adminDash.jsp?msg=no");
		}
	}
	}
	