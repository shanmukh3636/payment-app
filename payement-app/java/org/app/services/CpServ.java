package org.app.services;

import java.sql.SQLException;

import org.app.dao.CpDao;

public class CpServ {

	public boolean pData( String toid, double amount, String tcurrency,
			String fromtable,double toobal,double forex) throws ClassNotFoundException, SQLException {

		CpDao cpd=new CpDao();
	 boolean b=cpd.pData(toid,amount,tcurrency,fromtable,toobal,forex);
	 return b;
	}
	
}
