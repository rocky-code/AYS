package com.AYS.DAO;

import com.AYS.common.JDBCtemplate;
import java.sql.*;
public abstract class abstractDAO implements aysInterface{
	protected String sql;
	protected Connection con = null;
	protected Statement stmt = null;
	public Boolean save(Object obj) {
		 
		return JDBCtemplate.executeUpdate(sql);
	}

	public Boolean Update(Object obj) {
		return JDBCtemplate.executeUpdate(sql);
	}

	public Boolean Delete(Object obj) {
		return JDBCtemplate.executeUpdate(sql);
	}

	public Object get(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}
	public Object get(String scname) {
		return null;
	}
	public java.util.List<Object> List() {
		// TODO Auto-generated method stub
		return null;
	}
	public java.util.List<Object> List(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
