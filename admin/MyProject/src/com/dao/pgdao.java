package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bean.Addpackage;
import com.bean.pgdetails;
import com.util.MySQLConnection;

public class pgdao {

	public static int insertpg(pgdetails pg){
		
		int status=0;
		String query="insert into pg(name,category,sub_cat,address,area,city,state,image1,image2,image3,image4,price,facilities) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
			pstmt.setString(1,pg.getName());
			pstmt.setString(2,pg.getCategory());
			pstmt.setString(3,pg.getSub_cat());
			pstmt.setString(4,pg.getAddress());
			pstmt.setString(5,pg.getArea());
			pstmt.setString(6,pg.getCity());
			pstmt.setString(7,pg.getState());
			pstmt.setString(8,pg.getImage1());
			pstmt.setString(9,pg.getImage2());
			pstmt.setString(10,pg.getImage3());
			pstmt.setString(11,pg.getImage4());
			pstmt.setInt(12,pg.getPrice());
			pstmt.setString(13,pg.getFacilities());
			status=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
	}
	
	
public static int updatepg(pgdetails pg){
		
		int status=0;
		String query="update pg set name=?,category=?,sub_cat=?,address=?,area=?,city=?,state=?,image1=?,image2=?,image3=?,image4=?,price=?,facilities=? where p_id=?";
		try {
			PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
			pstmt.setString(1,pg.getName());
			pstmt.setString(2,pg.getCategory());
			pstmt.setString(3,pg.getSub_cat());
			pstmt.setString(4,pg.getAddress());
			pstmt.setString(5,pg.getArea());
			pstmt.setString(6,pg.getCity());
			pstmt.setString(7,pg.getState());
			pstmt.setString(8,pg.getImage1());
			pstmt.setString(9,pg.getImage2());
			pstmt.setString(10,pg.getImage3());
			pstmt.setString(11,pg.getImage4());
			
			pstmt.setInt(12,pg.getPrice());
			pstmt.setString(13,pg.getFacilities());
			pstmt.setInt(14,pg.getP_id());
			status=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
	}
	
public static int deletepg(int id){
		
		int status=0;
		String query="delete from pg where p_id=?";
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
	
public static List<pgdetails> getAllpg(){
		List<pgdetails> students=new ArrayList<pgdetails>();
		int status=0;
		String query="select * from pg";
		try {
			PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
			ResultSet rs=pstmt.executeQuery();
			pgdetails pg;
			while(rs.next()){
				pg=new pgdetails();
				pg.setName(rs.getString("name"));
				pg.setP_id(rs.getInt("p_id"));
				pg.setCategory(rs.getString("category"));
				pg.setSub_cat(rs.getString("sub_cat"));
				pg.setAddress(rs.getString("address"));
				pg.setArea(rs.getString("area"));
				pg.setCity(rs.getString("city"));
				pg.setState(rs.getString("state"));
				pg.setImage1(rs.getString("image1"));
				pg.setImage2(rs.getString("image2"));
				pg.setImage3(rs.getString("image3"));
				pg.setImage4(rs.getString("image4"));

				pg.setPrice(rs.getInt("price"));
				pg.setFacilities(rs.getString("facilities"));
				
				students.add(pg);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return students;
	}


public static pgdetails getpgById(int id){
	pgdetails pg=null;
	String query="select * from pg where p_id=?";
	try {
		PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
		pstmt.setInt(1,id);
		ResultSet rs=pstmt.executeQuery();
		if(rs.next()){
			pg=new pgdetails();
			pg.setName(rs.getString("name"));
			pg.setP_id(rs.getInt("p_id"));
			pg.setCategory(rs.getString("category"));
			pg.setSub_cat(rs.getString("sub_cat"));
			pg.setAddress(rs.getString("address"));
			pg.setArea(rs.getString("area"));
			pg.setCity(rs.getString("city"));
			pg.setState(rs.getString("state"));
			pg.setImage1(rs.getString("image1"));
			pg.setImage2(rs.getString("image2"));
			pg.setImage3(rs.getString("image3"));
			pg.setImage4(rs.getString("image4"));

			pg.setPrice(rs.getInt("price"));
			pg.setFacilities(rs.getString("facilities"));
}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	//System.out.println("Dao success..");
	return pg;

}

}


