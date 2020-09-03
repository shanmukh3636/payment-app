package org.app.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.app.modal.PpM;


import com.google.protobuf.Timestamp;

public class PpDao {

	private String DB_NAME="d";
	private String URL = "jdbc:mysql://localhost:3306/"+DB_NAME;
	
	public boolean fData(String ut,ArrayList<PpM> arr) throws ClassNotFoundException, SQLException {  
		Class.forName("com.mysql.cj.jdbc.Driver");  
		Connection con=DriverManager.getConnection(  URL,"root","shanmuk123");
		//here sonoo is database name, root is username and password

		PreparedStatement stm=con.prepareStatement("select * from "+"id"+ut);
		ResultSet rs=stm.executeQuery();
		
		while(rs.next())
		{  
		   String fromid=rs.getString(1);
		   String toid=rs.getString(2);
		   double amount=rs.getDouble(3);
		   String tcurrency=rs.getString(4);
		   double forex=rs.getDouble(5);
		   java.sql.Timestamp t=rs.getTimestamp(6);
			PpM pm=new PpM(fromid,toid,amount,tcurrency,forex,t);
			arr.add(pm);
		}
		
		

		
		return true;   
}
	
}
