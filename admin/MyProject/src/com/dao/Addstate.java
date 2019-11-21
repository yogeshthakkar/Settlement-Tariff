package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bean.addcity;
import com.bean.addstate;
import com.util.MySQLConnection;

public class Addstate {
	
	

	public static int insertstate(addstate cat){
		
		int status=0;
		String query="insert into state(s_name) values(?)";
		try {
			PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
			pstmt.setString(1,cat.getS_name());
			status=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
	}
	
	
public static int updatestate(addstate cat){
		
		int status=0;
		String query="update state set s_name=? where s_id=?";
		try {
			PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
			pstmt.setString(1,cat.getS_name());
			pstmt.setInt(2,cat.getS_id());
			status=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
	}
	
public static int deletestate(int id){
		
		int status=0;
		String query="delete from state where s_id=?";
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
	
public static List<addstate> getAllstate(){
		List<addstate> students=new ArrayList<addstate>();
		int status=0;
		String query="select * from state";
		try {
			PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
			ResultSet rs=pstmt.executeQuery();
			addstate cat;
			while(rs.next()){
				cat=new addstate();
				cat.setS_name(rs.getString("s_name"));
				cat.setS_id(rs.getInt("s_id"));
			
				students.add(cat);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return students;
	}


public static addstate getstateById(int id){
	addstate cat=null;
	String query="select * from state where s_id=?";
	try {
		PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
		pstmt.setInt(1,id);
		ResultSet rs=pstmt.executeQuery();
		if(rs.next()){
			cat=new addstate();
			cat.setS_id(Integer.parseInt(rs.getString("s_id")));
			cat.setS_name(rs.getString("s_name"));
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return cat;

}

}



