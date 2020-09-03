package org.app.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.app.modal.LogM;

public class LogDao {

	private String DB_NAME="d";
	private String URL = "jdbc:mysql://localhost:3306/"+DB_NAME;
	
	public boolean checkData(LogM lm) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");  
		Connection con=DriverManager.getConnection(  URL,"root","shanmuk123");
		//here sonoo is database name, root is username and password
		String query="select * from users_table where id=?";
		PreparedStatement stmt=con.prepareStatement(query);  
		stmt.setString(1, lm.getId());
		ResultSet rs=stmt.executeQuery();
		if(rs.next()) {
			System.out.println(rs.getString("id")+rs.getString("password"));
			if(rs.getString("password").equals(lm.getPassword())) {
				return true;
			}
			return false;
		}
		return false;
	}
}
