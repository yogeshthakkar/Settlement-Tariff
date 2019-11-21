package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bean.addarea;
import com.bean.favouritebean;
import com.util.MySQLConnection;

public class favouritedao {
	
	public static int countRecord(favouritebean cat){
		int count=0;
		String query="select count(*) as c from favourite where p_id=? and u_id=? and type=? ";
			try {
				PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
				pstmt.setInt(1,cat.getP_id());
				pstmt.setInt(2,cat.getU_id());
				pstmt.setString(3, cat.getType());
				ResultSet rs=pstmt.executeQuery();
				if(rs.next()){
					count=rs.getInt("c");
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
	System.out.println();		}
			
			return count;
	}
	
	
public static int insertarea(favouritebean cat){
		
		int status=0;
		if(countRecord(cat)>0){
			return 0;
		}else{
	String query="insert into favourite(p_id,u_id,type) values(?,?,?)";
		try {
			PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
			pstmt.setInt(1,cat.getP_id());
			pstmt.setInt(2,cat.getU_id());
			pstmt.setString(3, cat.getType());
			
			
			status=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
System.out.println();		}
		
		return status;
		}
	}
	
	
public static int updatearea(addarea cat){
		
		int status=0;
		String query="update area set a_name=?,c_name=?,s_name=? where a_id=?";
		try {
			PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
			pstmt.setString(1,cat.getA_name());
			pstmt.setString(2,cat.getC_name());
			pstmt.setString(3,cat.getS_name());
			pstmt.setInt(4,cat.getA_id());
			status=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
	}
	
public static int deletefavourite(int id){
		
		int status=0;
		String query="delete from favourite where f_id=?";
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
	
public static List<addarea> getAllarea(){
		List<addarea> students=new ArrayList<addarea>();
		int status=0;
		String query="select * from area";
		try {
			PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
			ResultSet rs=pstmt.executeQuery();
			addarea cat;
			while(rs.next()){
				cat=new addarea();
				cat.setA_id(rs.getInt("a_id"));
				cat.setC_id(rs.getInt("c_id"));
				cat.setS_id(rs.getInt("s_id"));
				
				cat.setA_name(rs.getString("a_name"));
			
				students.add(cat);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return students;
	}


public static addarea getareaById(int id){
	addarea cat=null;
	String query="select * from area where a_id=?";
	try {
		PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
		pstmt.setInt(1,id);
		ResultSet rs=pstmt.executeQuery();
		if(rs.next()){
			cat=new addarea();
			cat.setA_id(Integer.parseInt(rs.getString("a_id")));
			cat.setA_name(rs.getString("a_name"));
			cat.setC_name(rs.getString("c_name"));
			cat.setS_name(rs.getString("s_name"));
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	return cat;

}


public static List<addarea> getAreaByCity(int parseInt) {
	List<addarea> list=new ArrayList<>();
	try{
		String sql="select * from area where c_id=?";
		PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(sql);
		pstmt.setInt(1, parseInt);
		ResultSet rs=pstmt.executeQuery();
		while(rs.next())
		{
		//	System.out.println("Hii");
			addarea pg=new addarea();
				pg.setA_name(rs.getString("a_name"));
				pg.setA_id(rs.getInt("a_id"));
				list.add(pg);
		}
	}
	catch (Exception e)
	{
	e.printStackTrace();
	}
return list;

}

}
