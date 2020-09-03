package org.app.modal;

import com.google.protobuf.Timestamp;

public class PpM {

	
	private String fromid;
	private String toid;
	private double amount;
	private String tcurrency;
	private double forex;
	private java.sql.Timestamp t;
 
	public String getFromid() {
		return fromid;
	}
	public void setFromid(String fromid) {
		this.fromid = fromid;
	}
	
	public String getToid() {
		return toid;
	}
	public void setToid(String toid) {
		this.toid =toid;
	}
	
	
	
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	
	public String getTcurrency() {
		return tcurrency;
	}
	public void setTcurrency(String tcurrency) {
		this.tcurrency = tcurrency;
	}
	
	public double getForex() {
		return forex;
	}
	public void setForex(int forex) {
		this.forex = forex;
	}
	
	public  java.sql.Timestamp getTimestamp()
	{
	   return t;	
	}
	
	public void setTimestamp( java.sql.Timestamp t)
	{
	   this.t=t;	
	}
	
	
	public PpM( String fromid,String toid,double amount,String tcurrency,double forex,java.sql.Timestamp t) {
		super();
		this.fromid=fromid;
		this.toid=toid;
	    this.amount=amount;
		this.tcurrency=tcurrency;
		this.forex=forex;
		this.t=t;
		
	}
	
}
