package org.app.services;

import java.sql.SQLException;

import org.app.dao.RegDao;



public class Regserv {
	public void putData(String id,String password,String name) throws ClassNotFoundException, SQLException {
		RegDao rd=new RegDao();
		Boolean b = rd.putData(id,password,name);
	}
}
