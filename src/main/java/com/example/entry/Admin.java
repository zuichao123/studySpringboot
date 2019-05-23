package com.example.entry;

import java.io.Serializable;

public class Admin implements Serializable {
	private String name;
	private String password;
	public String getId() {
		return name;
	}
	public void setId(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public Admin(){}

	@Override
	public String toString() {
		return "Admin{" +
				"name='" + name + '\'' +
				", password='" + password + '\'' +
				'}';
	}
}
