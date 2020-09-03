package org.app.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.app.modal.PpM;

public class DetailsDao {

	private String DB_NAME="d";
	private String URL = "jdbc:mysql://localhost:3306/"+DB_NAME;
	
	public boolean fData(String ut,ArrayList a ) throws ClassNotFoundException, SQLException {  
		Class.forName("com.mysql.cj.jdbc.Driver");  
		Connection con=DriverManager.getConnection(  URL,"root","shanmuk123");
		//here sonoo is database name, root is username and password

		PreparedStatement stm=con.prepareStatement("select * from users_table where id="+"'"+ut+"'");
		ResultSet rs=stm.executeQuery();
		
		while(rs.next())
		{  a.add(rs.getString(1));
		   a.add(rs.getString(3));
		   a.add(rs.getDouble(4));
		}
		
		

		
		
		return true;   
}
	
}
