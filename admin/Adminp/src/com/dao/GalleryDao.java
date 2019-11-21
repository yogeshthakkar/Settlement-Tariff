package com.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bean.Gallery;
public class GalleryDao {
	public  static void Add(Gallery g)
	{
			try
			{
					System.out.println("in dao");
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
			String sql="insert into gallary(image1,u_id)values(?,?)";
			PreparedStatement pst=con.prepareStatement(sql);
			pst.setString(1, g.getImage1());
			pst.setInt(2, g.getUid());
			int i=pst.executeUpdate();
			if(i>0)
					System.out.println("inserted");
			else
					System.out.println("NOT INSERTED");
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
	}

	public List<Gallery> getImageById(int id) throws ClassNotFoundException, SQLException
	{
		List<Gallery> list = new ArrayList<Gallery>();
		Gallery g =new Gallery();
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
	
		String sql="select  * from gallary where uid=? values(?)";
		PreparedStatement pst = con.prepareStatement(sql);
		ResultSet rs = pst.executeQuery();
		while(rs.next()){
			
			g.setId(rs.getInt("uid"));
			g.setImage1(rs.getString("image1"));
			list.add(g);
		}
		return list;
	}
	
	

}






