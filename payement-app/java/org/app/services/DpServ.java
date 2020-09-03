package org.app.services;

import java.sql.SQLException;

import org.app.dao.DpDao;


public class DpServ {
	public boolean pData( String toid, double amount, String tcurrency,
			String fromtable,double toobal) throws ClassNotFoundException, SQLException {
		DpDao dpd=new DpDao();
	 boolean b=dpd.pData(toid,amount,tcurrency,fromtable,toobal);
	 return b;
	}
}
