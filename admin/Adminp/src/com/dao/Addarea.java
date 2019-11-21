package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bean.addarea;
import com.bean.addcity;
import com.util.MySQLConnection;

public class Addarea {
	public static int insertarea(addarea cat){
		
		int status=0;
		String query="insert into area(a_name,c_id,s_id) values(?,?,?)";
		try {
			PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
			pstmt.setString(1,cat.getA_name());
			pstmt.setInt(2,Integer.parseInt(cat.getC_name()));
			
			pstmt.setInt(3,Integer.parseInt(cat.getS_name()));
			status=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
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
	
public static int deletearea(int id){
		
		int status=0;
		String query="delete from area where a_id=?";
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
	String query="SELECT a.a_id,a.a_name,c.c_id,c.c_name,s.s_id,s.s_name FROM `area` AS a,`city` AS c,`state` AS s WHERE c.c_id=a.c_id AND s.s_id=a.s_id AND a.a_id=?;";
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






