package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bean.Addcategory;
import com.bean.addfeedback;
import com.util.MySQLConnection;

public class Addfeedback {
	public static int insertfeedback(addfeedback cat){
		
		int status=0;
		String query="insert into feedback(u_id,email,comment) values(?,?,?)";
		try {
			PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
			pstmt.setInt(1,cat.getU_id());
			pstmt.setString(2,cat.getEmail());
			pstmt.setString(3,cat.getComment());
			status=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
	}
	
/*	
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
	*/
public static int deletefeedback(int id){
		
		int status=0;
		String query="delete from feedback where f_id=?";
		try {
			System.out.println("id:"+id);
			PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
			pstmt.setInt(1,id);
			
			status=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
	}
	
public static List<addfeedback> getAllfeedback(){
		List<addfeedback> students=new ArrayList<addfeedback>();
		int status=0;
		String query="select * from feedback";
		try {
			PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
			ResultSet rs=pstmt.executeQuery();
			addfeedback cat;
			while(rs.next()){
				cat=new addfeedback();
				cat.setF_id(rs.getInt("f_id"));
				cat.setU_id(rs.getInt("u_id"));
				cat.setEmail(rs.getString("email"));
				cat.setComment(rs.getString("comment"));
				
			
				students.add(cat);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return students;
	}

/*
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
*/


}
