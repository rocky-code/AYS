package com.AYS.DAO;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.AYS.common.DBConFactory;
import com.AYS.entity.departments;
import com.AYS.entity.schemes;

public class schemeDAO extends abstractDAO{

	@Override
	public Boolean save(Object obj) {
		// TODO Auto-generated method stub
		return super.save(obj);
	}

	@Override
	public Boolean Update(Object obj) {
		// TODO Auto-generated method stub
		return super.Update(obj);
	}

	@Override
	public Boolean Delete(Object obj) {
		// TODO Auto-generated method stub
		return super.Delete(obj);
	}

	@Override
	public Object get(String scname) {
		// TODO Auto-generated method stub
		return super.get(scname);
	}

	@Override
	public java.util.List<Object> List(Integer id) {
		schemes sc;
		List<Object> scs = new ArrayList<Object>();
		try {
			con=DBConFactory.getConnection();
			stmt=con.createStatement();
	sql="select * from schemes where id='"+id+"'";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				sc=new schemes();
				sc.setId(rs.getInt(1));
				sc.setName(rs.getString(2));
				scs.add(sc);
			}
			return scs;
		}catch(Exception e) {
			System.out.println(e);
			return null;
		}finally {
			try {
				stmt.close();
				con.close();
			}catch(Exception e) {System.out.println(e);}
		}
	}

}
