package com.dao;

import java.io.InputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Part;

import com.bean.Addpackage;
import com.mysql.jdbc.integration.c3p0.MysqlConnectionTester;
import com.util.MySQLConnection;


public class pacakgedao {
		public static int insertpacakge(Addpackage stu){
			
			int status=0;
			String query="insert into pacakage(p_name,p_desc,price,discount_pri,image) values(?,?,?,?,?)";
			try {
				PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
				pstmt.setString(1,stu.getP_name());
				pstmt.setString(2,stu.getP_desc());
				pstmt.setInt(3,stu.getPrice());
				pstmt.setInt(4,stu.getDiscount_pri());
				pstmt.setString(5,stu.getImage());
				status=pstmt.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return status;
		}
		
		
	public static int updatepacakge(Addpackage stu){
			
			int status=0;
			String query="update pacakage set p_name=?,p_desc=?,price=?,discount_pri=?,image=? where p_id=?";
			try {
				PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
				pstmt.setString(1,stu.getP_name());
				pstmt.setString(2,stu.getP_desc());
				pstmt.setInt(3,stu.getPrice());
				pstmt.setInt(4,stu.getDiscount_pri());
				pstmt.setString(5,stu.getImage());
				pstmt.setInt(6,stu.getP_id());
				status=pstmt.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return status;
		}
		
	public static int deletepacakage(int id){
			
			int status=0;
			String query="delete from pacakage where p_id=?";
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
		
	public static List<Addpackage> getAllStudent(){
			List<Addpackage> students=new ArrayList<Addpackage>();
			int status=0;
			String query="select * from pacakage";
			try {
				PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
				ResultSet rs=pstmt.executeQuery();
				Addpackage stu;
				while(rs.next()){
					stu=new Addpackage();
					stu.setP_name(rs.getString("p_name"));
					stu.setP_id(rs.getInt("p_id"));
					stu.setP_desc(rs.getString("p_desc"));
					stu.setPrice(rs.getInt("price"));
					stu.setDiscount_pri(rs.getInt("discount_pri"));
					stu.setImage(rs.getString("image"));

					students.add(stu);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return students;
		}


	public static Addpackage getStudentById(int id){
		Addpackage stu=null;
		String query="select * from pacakage where p_id=?";
		try {
			PreparedStatement pstmt=MySQLConnection.getConnection().prepareStatement(query);
			pstmt.setInt(1,id);
			ResultSet rs=pstmt.executeQuery();
			if(rs.next()){
				stu=new Addpackage();
				stu.setP_id(Integer.parseInt(rs.getString("p_id")));
				stu.setP_name(rs.getString("p_name"));
				stu.setP_desc(rs.getString("p_desc"));
				stu.setPrice(rs.getInt("price"));
				stu.setDiscount_pri(rs.getInt("discount_pri"));
			stu.setImage(rs.getString("image"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return stu;
	
	}

}
