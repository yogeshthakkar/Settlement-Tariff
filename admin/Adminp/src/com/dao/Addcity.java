package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bean.Addcategory;
import com.bean.addcity;
import com.util.MySQLConnection;

public class Addcity {

		public static int insertcity(addcity cat){
			
			int status=0;
			String query="insert into city(c_name,s_id) values(?,?)";
			try {
				PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
				pstmt.setString(1,cat.getC_name());
				pstmt.setInt(2,Integer.parseInt(cat.getS_name()));
				status=pstmt.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return status;
		}
		
		
	public static int updatecity(addcity cat){
			
			int status=0;
			String query="update city set c_name=?,s_name=? where c_id=?";
			try {
				PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
				pstmt.setString(1,cat.getC_name());
				pstmt.setString(2,cat.getS_name());
				pstmt.setInt(3,cat.getC_id());
				status=pstmt.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return status;
		}
		
	public static int deletecity(int id){
			
			int status=0;
			String query="delete from city where c_id=?";
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
		
	public static List<addcity> getAllcity(){
			List<addcity> students=new ArrayList<addcity>();
			int status=0;
			String query="select * from city";
			try {
				PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
				ResultSet rs=pstmt.executeQuery();
				addcity cat;
				while(rs.next()){
					cat=new addcity();
					cat.setC_name(rs.getString("c_name"));
					cat.setC_id(rs.getInt("c_id"));
					cat.setS_id(rs.getInt("s_id"));
				
					students.add(cat);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return students;
		}


	public static addcity getcityById(int id){
		addcity cat=null;
		String query="SELECT c.c_id,c.c_name,s.s_id,s.s_name FROM `city` AS c,`state` AS s WHERE s.s_id=c.c_id AND c.c_id=?;";
		try {
			PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
			pstmt.setInt(1,id);
			ResultSet rs=pstmt.executeQuery();
			if(rs.next()){
				cat=new addcity();
				cat.setC_id(Integer.parseInt(rs.getString("c_id")));
				cat.setC_name(rs.getString("c_name"));
				cat.setS_name(rs.getString("s_name"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return cat;

	}

	
	
	

	public static List<addcity> getCityByState(int parseInt) {
			List<addcity> list=new ArrayList<>();
			try{
				String sql="select * from city where s_id=?";
				PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(sql);
				pstmt.setInt(1, parseInt);
				ResultSet rs=pstmt.executeQuery();
				while(rs.next())
				{
					System.out.println("Hii");
					addcity pg=new addcity();
						pg.setC_name(rs.getString("c_name"));
						pg.setC_id(rs.getInt("c_id"));
						list.add(pg);
				}
			}
			catch (Exception e)
			{
			e.printStackTrace();
			}
	return list;
	}}



