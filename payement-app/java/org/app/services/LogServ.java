package org.app.services;

import java.sql.SQLException;

import org.app.dao.LogDao;
import org.app.modal.LogM;



public class LogServ {

	public boolean checkData(LogM lm) throws ClassNotFoundException, SQLException {
		LogDao ld=new LogDao();
		return ld.checkData(lm);
		
	}
	
	
}
