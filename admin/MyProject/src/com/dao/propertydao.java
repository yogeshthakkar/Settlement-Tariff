package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bean.propertybean;
import com.util.MySQLConnection;

public class propertydao {

	public static int insertproperty(propertybean pr){
		
		int status=0;
		String query="insert into property(address,state,city,area,category,sub_cat,price,facility,image1,image2,image3,name,phone,email,rent) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		try {
			PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
			pstmt.setString(1,pr.getAddress());
			pstmt.setString(4,pr.getState());
			pstmt.setString(3,pr.getCity());
			pstmt.setString(2,pr.getArea());
			pstmt.setString(5,pr.getCategory());
			pstmt.setString(6,pr.getSub_cat());
			pstmt.setString(7,pr.getPrice());
			pstmt.setString(8,pr.getFacility());
			pstmt.setString(9,pr.getImage1());
			pstmt.setString(10,pr.getImage2());
			pstmt.setString(11,pr.getImage3());
			pstmt.setString(12,pr.getName());
			pstmt.setString(13, pr.getPhone());
			pstmt.setString(14,pr.getEmail());
			pstmt.setString(15, pr.getRent());
			status=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
	}
	
	
public static int updateproperty(propertybean pr){
		
		int status=0;
		String query="update proprty set address=?,state=?,city=?,area=?,category=?,sub_cat=?,price=?,facility=?,image1=?,image2=?,image3=?,name=?,phone=?,email=?,rent=? where p_id=?";
		try {
			PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
			pstmt.setString(1,pr.getAddress());
			pstmt.setString(2,pr.getState());
			pstmt.setString(3,pr.getCity());
			pstmt.setString(4,pr.getArea());
			pstmt.setString(5,pr.getCategory());
			pstmt.setString(6,pr.getSub_cat());
			pstmt.setString(7,pr.getPrice());
			pstmt.setString(8,pr.getFacility());
			pstmt.setString(9,pr.getImage1());
			pstmt.setString(10,pr.getImage2());
			pstmt.setString(11,pr.getImage3());
			pstmt.setString(12,pr.getName());
			pstmt.setString(13, pr.getPhone());
			pstmt.setString(14,pr.getEmail());
			pstmt.setString(15, pr.getRent());
			
			status=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
	}
	
public static int deleteproperty(int id){
		
		int status=0;
		String query="delete from property where p_id=?";
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
	
public static List<propertybean> getAllproperty(){
		List<propertybean> students=new ArrayList<propertybean>();
		int status=0;
		String query="select * from property";
		try {
			PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
			ResultSet rs=pstmt.executeQuery();
			propertybean pg;
			while(rs.next()){
				pg=new propertybean();
				pg.setP_id(rs.getInt("p_id"));
				pg.setAddress(rs.getString("address"));
				pg.setArea(rs.getString("area"));
				pg.setCity(rs.getString("city"));
				pg.setState(rs.getString("state"));
				pg.setCategory(rs.getString("category"));
				pg.setSub_cat(rs.getString("sub_cat"));
				pg.setPrice(rs.getString("price"));
				pg.setFacility(rs.getString("facilities"));
				pg.setImage1(rs.getString("image1"));
				pg.setImage2(rs.getString("image2"));
				pg.setImage3(rs.getString("image3"));
				pg.setName(rs.getString("name"));
				pg.setPhone(rs.getString("phone"));
				pg.setEmail(rs.getString("email"));
				pg.setRent(rs.getString("rent"));
					
				students.add(pg);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return students;
	}


public static propertybean getpropertyById(int id){
	propertybean pg=null;
	String query="select * from property where p_id=?";
	try {
		PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
		pstmt.setInt(1,id);
		ResultSet rs=pstmt.executeQuery();
		if(rs.next()){
			pg=new propertybean();
			pg.setP_id(rs.getInt("p_id"));
			pg.setAddress(rs.getString("address"));
			pg.setArea(rs.getString("area"));
			pg.setCity(rs.getString("city"));
			pg.setState(rs.getString("state"));
			pg.setCategory(rs.getString("category"));
			pg.setSub_cat(rs.getString("sub_cat"));
			pg.setPrice(rs.getString("price"));
			pg.setFacility(rs.getString("facilities"));
			pg.setImage1(rs.getString("image1"));
			pg.setImage2(rs.getString("image2"));
			pg.setImage3(rs.getString("image3"));
			pg.setName(rs.getString("name"));
			pg.setPhone(rs.getString("phone"));
			pg.setEmail(rs.getString("email"));
			pg.setRent(rs.getString("rent"));
						
			
	}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	//System.out.println("Dao success..");
	return pg;

}

}



