package com.yanzi.demo.DTO;

public class MemberDto {

	private String user_id; 
	private String user_name; 
	private String user_password; 
	private String user_email; 
	private String user_phone; 
	private String user_address;



	public String getUser_id() {
		return user_id;
	}



	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_name() {
		return user_name;
	}



	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_password() {
		return user_password;
	}



	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}



	public String getUser_email() {
		return user_email;
	}



	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}



	public String getUser_phone() {
		return user_phone;
	}



	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}



	public String getUser_address() {
		return user_address;
	}



	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}



	@Override
	    public String toString() {
	        return "id='" + user_id + '\'' + ", pwd='" + user_password + '\'' +
	                ", name='" + user_name + '\'' + ", email='" + user_email + '\'' +
	                ", phone=" + user_phone +'\''+", address='" + user_address;
	    }
	
}
