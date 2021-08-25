package Connection_db;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider {
	
	
	public static Connection getCon()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
			return con;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			  return null;
		}
	}

}