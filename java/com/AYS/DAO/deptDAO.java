package java.com.AYS.DAO;

import com.AYS.common.DBConFactory;
import com.AYS.entity.departments;

import java.sql.ResultSet;
import java.util.*;

public class deptDAO extends abstractDAO{

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
	public departments get(Integer id) {
		departments dept = new departments();
		try {
			con=DBConFactory.getConnection();
			stmt=con.createStatement();
	sql="select * from departments where id='"+id+"'";
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()) {
				
				dept.setId(rs.getInt(1));
				dept.setName(rs.getString(2));
				
			}
			return dept;
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



	@Override
	public java.util.List<Object> List() {
		departments dept;
		List<Object> depts = new ArrayList<Object>();
		try {
			con=DBConFactory.getConnection();
			stmt=con.createStatement();
	sql="select * from departments";
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()) {
				dept=new departments();
				dept.setId(rs.getInt(1));
				dept.setName(rs.getString(2));
				depts.add(dept);
			}
			return depts;
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
