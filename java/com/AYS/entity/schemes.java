package com.AYS.entity;

import java.io.Serializable;

public class schemes implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private Integer id;
	private String Name;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	
}
