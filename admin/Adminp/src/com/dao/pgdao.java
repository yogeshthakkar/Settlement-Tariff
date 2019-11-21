package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale.Category;

import com.bean.Addpackage;
import com.bean.addcity;
import com.bean.pgdetails;
import com.util.MySQLConnection;

public class pgdao {

	public static int insertpg(pgdetails pg){
		
		int status=0;
		String query="insert into pg(name,category,sub_cat,address,image1,image2,image3,image4,price,facilities,areaid,cityid,stateid,phone) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
			pstmt.setString(1,pg.getName());
			pstmt.setString(2,pg.getCategory());
			pstmt.setString(3,pg.getSub_cat());
			pstmt.setString(4,pg.getAddress());
			pstmt.setString(5,pg.getImage1());
			pstmt.setString(6,pg.getImage2());
			pstmt.setString(7,pg.getImage3());
			pstmt.setString(8,pg.getImage4());
			pstmt.setInt(9,pg.getPrice());
			pstmt.setString(10,pg.getFacilities());
			pstmt.setInt(11,Integer.parseInt(pg.getArea()));
			pstmt.setInt(12,Integer.parseInt(pg.getCity()));
			pstmt.setInt(13,Integer.parseInt(pg.getState()));
			pstmt.setInt(14, Integer.parseInt(pg.getPhone()));
			status=pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
	}
	
	
public static int updatepg(pgdetails pg){
		
		int status=0;
		String query="update pg set name=?,category=?,sub_cat=?,address=?,image1=?,image2=?,image3=?,image4=?,price=?,facilities=?,areaid=?,cityid=?,stateid=?,phone=? where p_id=?";
		try {
			PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
			pstmt.setString(1,pg.getName());
			pstmt.setString(2,pg.getCategory());
			pstmt.setString(3,pg.getSub_cat());
			pstmt.setString(4,pg.getAddress());
			pstmt.setString(5,pg.getImage1());
			pstmt.setString(6,pg.getImage2());
			pstmt.setString(7,pg.getImage3());
			pstmt.setString(8,pg.getImage4());
			
			pstmt.setInt(9,pg.getPrice());
			pstmt.setString(10,pg.getFacilities());
			pstmt.setInt(11,pg.getAreaId());
			pstmt.setInt(12,pg.getCityid());
			pstmt.setInt(13,pg.getStateid());
			pstmt.setString(14,pg.getPhone());
			pstmt.setInt(15,pg.getP_id());
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
				pg.setAreaId(rs.getInt("areaid"));
				pg.setCityid(rs.getInt("cityid"));
				pg.setStateid(rs.getInt("stateid"));
				pg.setImage1(rs.getString("image1"));
				pg.setImage2(rs.getString("image2"));
				pg.setImage3(rs.getString("image3"));
				pg.setImage4(rs.getString("image4"));

				pg.setPrice(rs.getInt("price"));
				pg.setFacilities(rs.getString("facilities"));
				pg.setPhone(rs.getString("phone"));	
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
	String query="SELECT p.p_id,p.name,p.category,p.sub_cat,p.address,p.image1,p.image2,p.image3,p.image4,p.price,p.facilities,a.s_id,s.s_name,c.c_id,c.c_name,a.a_id,a.a_name,p.areaId,p.cityId,p.stateId,p.phone FROM pg AS p,`area` AS a,`city` AS c,`state` AS s WHERE p.p_id=? AND a.a_id=p.areaId AND c.c_id=p.cityId AND s.s_id=p.stateId;";
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
			pg.setImage1(rs.getString("image1"));
			pg.setImage2(rs.getString("image2"));
			pg.setImage3(rs.getString("image3"));
			pg.setImage4(rs.getString("image4"));

			pg.setPrice(rs.getInt("price"));
			pg.setFacilities(rs.getString("facilities"));
			pg.setA_name(rs.getString("a_name"));
			pg.setC_name(rs.getString("c_name"));
			pg.setS_name(rs.getString("s_name"));
			pg.setPhone(rs.getString("phone"));
			
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	//System.out.println("Dao success..");
	return pg;

}



private static Object getString(String string) {
	// TODO Auto-generated method stub
	return null;
}

}


