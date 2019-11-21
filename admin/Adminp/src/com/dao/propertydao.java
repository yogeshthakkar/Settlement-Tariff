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
		String query="insert into postproperty(stateid,cityid,areaid,userid,rent,addreaa,category,sub_cat,price,facility,image1,image2,image3,phone,email,name,status) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		try {
			PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
			//System.out.println("U id : " + pr.getUserid());
			System.out.println(pr.getAddress());
			System.out.println(pr.getArea());
			System.out.println(pr.getCategory());
			System.out.println(pr.getCity());
			System.out.println(pr.getFacility());
			System.out.println(pr.getImage1());
			System.out.println(pr.getImage2());
			System.out.println(pr.getImage3());
			System.out.println(pr.getP_id());
			System.out.println(pr.getPrice());
			System.out.println(pr.getState());
			System.out.println(pr.getName());
			System.out.println(pr.getSub_cat());
		
			pstmt.setInt(1,Integer.parseInt(pr.getState()));
			pstmt.setInt(2,Integer.parseInt(pr.getCity()));
			pstmt.setInt(3,Integer.parseInt(pr.getArea()));
			pstmt.setInt(4, pr.getUser_id());
			pstmt.setString(5, pr.getRent());
			pstmt.setString(6,pr.getAddress());
			pstmt.setString(7,pr.getCategory());
			pstmt.setString(8,pr.getSub_cat());
			pstmt.setString(9,pr.getPrice());
			pstmt.setString(10,pr.getFacility());
			pstmt.setString(11,pr.getImage1());
			pstmt.setString(12,pr.getImage2());
			pstmt.setString(13,pr.getImage3());
			pstmt.setString(14, pr.getPhone());
			pstmt.setString(15,pr.getEmail());
			pstmt. setString(16, pr.getName());
			pstmt. setString(17, pr.getStatus());
			
			  System.out.println("INsert property");
				
			status=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
	}
	
	
public static int updateproperty(propertybean pr){
		
		int status=0;
		String query="update postproprty set stateid=?,cityid=?,areaid=?,addreaa=?,category=?,sub_cat=?,price=?,facility=?,image1=?,image2=?,image3=?,name=?,phone=?,email=?,rent=?,status=? where p_id=?";
		try {
			PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
			pstmt.setInt(1,pr.getStateid());
			pstmt.setInt(2,pr.getCityid());
			pstmt.setInt(3,pr.getAreaid());
			pstmt.setString(4,pr.getAddress());
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
			pstmt.setString(16, pr.getStatus());
			pstmt.setInt(17, pr.getP_id());
			
			status=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
	}
	
public static int deleteproperty(int id){
		
		int status=0;
		String query="delete from postproperty where p_id=?";
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
		String query="select * from postproperty";
		try {
			PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
			ResultSet rs=pstmt.executeQuery();
			propertybean pg;
			while(rs.next()){
				pg=new propertybean();
				pg.setP_id(rs.getInt("p_id"));
				pg.setAreaid(rs.getInt("stateid"));
				pg.setCityid(rs.getInt("cityid"));
				pg.setStateid(rs.getInt("areaid"));
				pg.setAddress(rs.getString("address"));
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
				pg.setStatus(rs.getString("status"));
					
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
	String query="select * from postproperty where p_id=?";
	try {
		PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
		pstmt.setInt(1,id);
		ResultSet rs=pstmt.executeQuery();
		if(rs.next()){
			pg=new propertybean();
			pg.setP_id(rs.getInt("p_id"));
			pg.setStateid(rs.getInt("stateid"));
			pg.setCityid(rs.getInt("cityid"));
			pg.setAreaid(rs.getInt("areaid"));
			pg.setAddress(rs.getString("address"));
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
			pg.setStatus(rs.getString("status"));
						
			
	}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	//System.out.println("Dao success..");
	return pg;

}

}



