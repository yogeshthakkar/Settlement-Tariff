package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bean.Addcategory;
import com.bean.Addsubcategory;
import com.util.MySQLConnection;

public class Addsubcategorydata {
	public static int insertsubcategory(Addsubcategory cat){
		
		int status=0;
		String query="insert into subcategory(sb_name,status) values(?,?)";
		try {
			PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
			pstmt.setString(1,cat.getSb_name());
			pstmt.setString(2,cat.getStatus());
			status=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
	}
	
	
public static int updatesubcategory(Addsubcategory cat){
		
		int status=0;
		String query="update subcategory set sb_name=?,status=? where sb_id=?";
		try {
			PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
			pstmt.setString(1,cat.getSb_name());
			pstmt.setString(2,cat.getStatus());
			pstmt.setInt(3,cat.getSb_id());
			status=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
	}
	
public static int deletesubcategory(int id){
		
		int status=0;
		String query="delete from subcategory where sb_id=?";
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
	
public static List<Addsubcategory> getAllsubcategory(){
		List<Addsubcategory> students=new ArrayList<Addsubcategory>();
		int status=0;
		String query="select * from subcategory";
		try {
			PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
			ResultSet rs=pstmt.executeQuery();
			Addsubcategory cat;
			while(rs.next()){
				cat=new Addsubcategory();
				cat.setSb_name(rs.getString("Sb_name"));
				cat.setSb_id(rs.getInt("Sb_id"));
				cat.setStatus(rs.getString("status"));
			
				students.add(cat);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return students;
	}


public static Addsubcategory getsubCategoryById(int id){
	Addsubcategory cat=null;
	String query="select * from subcategory where sb_id=?";
	try {
		PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
		pstmt.setInt(1,id);
		ResultSet rs=pstmt.executeQuery();
		if(rs.next()){
			cat=new Addsubcategory();
			cat.setSb_id(Integer.parseInt(rs.getString("sb_id")));
			cat.setSb_name(rs.getString("sb_name"));
			cat.setStatus(rs.getString("status"));
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return cat;

}

}


