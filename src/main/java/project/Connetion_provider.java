package project;

import java.sql.*;
public class Connetion_provider {
	
	
	public static Connection getcon() {
		
		
		try {
			
			Class.forName("org.postgresql.Driver");
			
			Connection con;
			
			con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/onlineshop","postgres","Grp4545@@");
			
			System.out.println("done");
			
			return con;
			
			
		}
		
		catch (Exception e) {
             
			
			System.out.println(e);

		}
		return null;
	}

}
