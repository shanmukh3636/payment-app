package org.app.services;

import java.sql.SQLException;
import java.util.ArrayList;

import org.app.dao.DetailsDao;
import org.app.dao.PpDao;


public class DetailsServ {
	
	public void fData(String ut,ArrayList a) throws ClassNotFoundException, SQLException {
		DetailsDao dd=new DetailsDao();
	 dd.fData(ut,a);
	}

}
