package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bean.admin;
import com.util.MySQLConnection;

public class adminDao {

	
	public admin checkLogin(admin s)
	{
		try
		{
			Connection conn = MySQLConnection.getConnection();
			String sql="select * from student where semail=? and spass=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, s.getEmail());
			pst.setString(2, s.getPass());
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				s.setId(rs.getInt("id"));
				s.setName(rs.getString("name"));
				s.setEmail(rs.getString("email"));
				s.setPass(rs.getString("pass"));
			}
			else
			{
				s=null;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return s;
	}
}
