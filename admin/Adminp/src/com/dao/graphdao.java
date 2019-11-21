package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.bean.propertybean;
import com.util.MySQLConnection;

public class graphdao {

		public static Map<String, Integer>  getSubCatgeorycount(String cat)
		{
			Map<String, Integer> map=new HashMap<String, Integer>();
			String query="SELECT sub_cat,COUNT(*) AS c FROM postproperty WHERE rent=? GROUP BY sub_cat";
			try {
				PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
				pstmt.setString(1,cat);
				ResultSet rs=pstmt.executeQuery();
				while(rs.next()){
					map.put(rs.getString("sub_cat"), rs.getInt("c"));
				}
					} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return map;
		}
}
