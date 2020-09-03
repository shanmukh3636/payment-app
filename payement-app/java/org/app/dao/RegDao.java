package org.app.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegDao {
	private String DB_NAME="d";
	private String URL = "jdbc:mysql://localhost:3306/"+DB_NAME;
	
	public boolean putData(String id,String password,String name) throws ClassNotFoundException, SQLException {  
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  URL,"root","shanmuk123");
			//here sonoo is database name, root is username and password
			double a=1000;
			PreparedStatement stmt=con.prepareStatement("insert into users_table values (?, ?, ?, ?)");  
			stmt.setString(1, id);
			stmt.setString(2, password); 
			stmt.setString(3, name); 
			stmt.setDouble(4, a); 
			 stmt.execute();
			
			String query="create table "+"id"+id+" (fromid varchar(100),toid varchar(100),amount double,tcurrency varchar(10),forex double,dt timestamp)";
			stmt=con.prepareStatement(query);
			stmt.execute();
			
			return true;   
	}
}
