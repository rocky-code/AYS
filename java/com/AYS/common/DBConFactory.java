package java.com.AYS.common;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConFactory {
	private static String user;
	private static String password;
	private static String url;
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			user="bde4faad46c505";
			password="19dd87b5";
			url="jdbc:mysql://us-cdbr-east-05.cleardb.net:3306/heroku_502fb9d6a6a48ad";
		}catch(Exception e){System.out.println(e);}
	}
	public static Connection getConnection()
	{
		Connection con=null;
		try {
	    con=DriverManager.getConnection(url, user, password);
		}catch(Exception e) {System.out.println(e);}
		return con;
	}
}
