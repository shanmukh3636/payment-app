package org.app.modal;

public class LogM {
	private String id;
	private String password;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public LogM(String id, String password) {
		super();
		this.id = id;
		this.password = password;
	}
}
