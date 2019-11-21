package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bean.addcity;
import com.bean.propertybean;
import com.util.MySQLConnection;

public class searchdao {
	
	public static List<propertybean> search(String s)
	{
		int status=0;
		List<propertybean> list=new ArrayList();
		
		String query="select * from pg where name like ?";
		try {
			PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
			pstmt.setString(1,"%" + s +"%");
		
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				propertybean dao=new propertybean();
				dao.setImage1(rs.getString("image1"));
				dao.setPrice(rs.getString("price"));
				
			}
				} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	
	}
	

}
