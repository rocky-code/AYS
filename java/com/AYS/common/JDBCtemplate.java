package java.com.AYS.common;

import com.AYS.common.*;
import java.sql.*;
public class JDBCtemplate {

	public static Boolean executeUpdate(String sql)
	{
		Connection con=null;
		Statement stmt=null;
		try {
		con=DBConFactory.getConnection();	
	    stmt=con.createStatement();
		stmt.executeUpdate(sql);
		}catch(Exception e) {System.out.println(e); return false;
		}finally {
			try {
			stmt.close();
			con.close();
		}catch(Exception e) {
			System.out.println(e);
		}
		}
		return true;
	}
}
