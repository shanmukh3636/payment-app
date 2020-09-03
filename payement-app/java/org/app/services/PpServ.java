package org.app.services;

import java.sql.SQLException;
import java.util.ArrayList;

import org.app.dao.PpDao;
import org.app.modal.PpM;



public class PpServ {

	
		public void fData(String ut,ArrayList<PpM>arr) throws ClassNotFoundException, SQLException {
			PpDao ppd=new PpDao();
		 ppd.fData(ut,arr);
		}
	
}
	

