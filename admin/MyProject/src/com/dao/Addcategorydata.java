package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bean.Addcategory;
import com.bean.Addpackage;
import com.controller.addcats;
import com.mysql.jdbc.Statement;
import com.util.MySQLConnection;

public class Addcategorydata {
	public static int insertcategory(Addcategory cat){
		
		int status=0;
		String query="insert into category(c_name,status) values(?,?)";
		try {
			PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
			pstmt.setString(1,cat.getC_name());
			pstmt.setString(2,cat.getStatus());
			status=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
	}
	
	
public static int updatecategory(Addcategory cat){
		
		int status=0;
		String query="update category set c_name=?,status=? where c_id=?";
		try {
			PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
			pstmt.setString(1,cat.getC_name());
			pstmt.setString(2,cat.getStatus());
			pstmt.setInt(3,cat.getC_id());
			status=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
	}
	
public static int deletecategory(int id){
		
		int status=0;
		String query="delete from category where c_id=?";
		try {
			PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
			pstmt.setInt(1,id);
			
			status=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
	}
	
public static List<Addcategory> getAllcategory(){
		List<Addcategory> students=new ArrayList<Addcategory>();
		int status=0;
		String query="select * from category";
		try {
			PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
			ResultSet rs=pstmt.executeQuery();
			Addcategory cat;
			while(rs.next()){
				cat=new Addcategory();
				cat.setC_name(rs.getString("c_name"));
				cat.setC_id(rs.getInt("c_id"));
				cat.setStatus(rs.getString("status"));
			
				students.add(cat);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return students;
	}


public static Addcategory getCategoryById(int id){
	Addcategory cat=null;
	String query="select * from category where c_id=?";
	try {
		PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
		pstmt.setInt(1,id);
		ResultSet rs=pstmt.executeQuery();
		if(rs.next()){
			cat=new Addcategory();
			cat.setC_id(Integer.parseInt(rs.getString("c_id")));
			cat.setC_name(rs.getString("c_name"));
			cat.setStatus(rs.getString("status"));
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return cat;

}

}

