package com.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class MySQLConnection {
	public static Connection getConnection(){
		Connection conn=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/test";
			conn=DriverManager.getConnection(url,"root","root");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
}
