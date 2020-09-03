package org.app.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.google.protobuf.Timestamp;

public class DpDao {

	private String DB_NAME="d";
	private String URL = "jdbc:mysql://localhost:3306/"+DB_NAME;
	
   
	
	private static java.sql.Timestamp getCurrentTimeStamp() {

		java.util.Date today = new java.util.Date();
		return new java.sql.Timestamp(today.getTime());

	}
	
	public boolean pData(String toid,double amount,String tcurrency,String fromtable,double toobal) throws ClassNotFoundException, SQLException {  
			Class.forName("com.mysql.cj.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  URL,"root","shanmuk123");
			//here sonoo is database name, root is username and password
			double tubal,foobal=0;
			PreparedStatement stmt;
			//entering in fromtable
			stmt=con.prepareStatement("select * from users_table where id="+fromtable);
			ResultSet rs1=stmt.executeQuery();
			while(rs1.next())
			{toobal=rs1.getDouble(4);}
			//entering into totable
			stmt=con.prepareStatement("select * from users_table where id="+toid);
			ResultSet rs2=stmt.executeQuery();
			while(rs2.next())
			{foobal=rs2.getDouble(4);}
			
		    if(!rs2.next())
		    {return false;}
			
			tubal=toobal-amount;
			if(tubal<500)
			{  
			   return false;
			}
			
			toobal=tubal;
			foobal=foobal+amount;
			
			stmt=con.prepareStatement("update users_table set balance='"+toobal+"' where id="+fromtable);
			stmt.executeUpdate();
			
			stmt=con.prepareStatement("update users_table set balance='"+foobal+"' where id="+toid);
			stmt.executeUpdate();
			
	        stmt=con.prepareStatement("insert into "+"id"+fromtable+" values (?, ?, ?, ?, ?, ?)");  
		
		
			stmt.setString(1,fromtable); 
			stmt.setString(2,toid); 
			stmt.setDouble(3,amount);
			stmt.setString(4,tcurrency);
			stmt.setDouble(5,amount);
			stmt.setTimestamp(6,getCurrentTimeStamp());
			 stmt.executeUpdate();
			
			 //entering into totable
			
			 stmt=con.prepareStatement("insert into "+"id"+toid+" values (?, ?, ?, ?, ?, ?)");  
				
				
				stmt.setString(1,fromtable); 
				stmt.setString(2,toid); 
				stmt.setDouble(3,amount);
				stmt.setString(4,tcurrency);
				stmt.setDouble(5,amount);
				stmt.setTimestamp(6,getCurrentTimeStamp());
				stmt.executeUpdate();
			    return true;   
	}
	
	public DpDao() {
		super();
		// TODO Auto-generated constructor stub
	}
}
