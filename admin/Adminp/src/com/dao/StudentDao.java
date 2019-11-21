package com.dao;

import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

//import sun.security.mscapi.KeyStore.MY;

import com.bean.Student;
import com.mysql.jdbc.jdbc2.optional.MysqlConnectionPoolDataSource;
import com.util.MySQLConnection;
//import com.util.Connction;

public class StudentDao {
	public int insertstudent(Student stu){
		
		int status=0;
		try{
			
	Connection conn=MySQLConnection.getConnection();
	System.out.println(stu.getEmail()+" "+stu.getPhone()+" "+stu.getPassword());
	//	String query="INSERT INTO student(sname,semail,spass) values('" + stu.getSname() + "','" +stu.getSemail() + "','" +  stu.getSpass()+ "')";
	String query="INSERT INTO user(FirstName,LastName,Gender,Email,Phone,Password,u_type) values(?,?,?,?,?,?,?)";
			PreparedStatement pstmt=conn.prepareStatement(query);
			pstmt.setString(1, stu.getF_name().replace("'", "").trim());
			pstmt.setString(2, stu.getL_name().replace("'", "").trim());
			pstmt.setString(3, stu.getGender().replace("'", "").trim());
			pstmt.setString(4, stu.getEmail().replace("'", "").trim());
			pstmt.setString(5, stu.getPhone());
			pstmt.setString(6, stu.getPassword());
			pstmt.setString(7, stu.getU_type());
			
		
			//System.out.println(pstmt.);
			status=pstmt.executeUpdate();
			
			System.out.println(status);
			conn.close();	
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	
	
	public int deletestudent(int sid){
		
		int status=0;
		
		
		try{
			Connection conn=MySQLConnection.getConnection();
			Statement stmt=conn.createStatement();
			String query="delete from user where u_id="+ sid +";";
			
			status=stmt.executeUpdate(query);
			conn.close();
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return status;
	}
	
	
	
	public int updatestudent(Student stu){
		
		int status=0;
		try{
			Connection conn=MySQLConnection.getConnection();
			Statement stmt=conn.createStatement();
			String query="update user set First Name='"+ stu.getF_name()+"',Last Name='"+ stu.getL_name()+"',Gender='"+ stu.getGender()+"',Email='"+ stu.getEmail()+"',Phone='"+ stu.getPhone()+"',u_type='"+ stu.getU_type()+"' where u_id='"+stu.getU_id()+"';";
			status=stmt.executeUpdate(query);
			conn.close();
		
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return status;
	}

	
	public List<Student> getAllStudent(){
		List<Student> emp=new ArrayList<Student>();
		
		try
		{
			Connection conn=MySQLConnection.getConnection();
			Statement stmt=conn.createStatement();
			String query="select * from user";
			ResultSet rs=stmt.executeQuery(query);
			Student stu;
			while(rs.next())
			{
				stu=new Student();
				stu.setU_id(rs.getInt("sid"));
				stu.setF_name(rs.getString("First Name"));
				stu.setL_name(rs.getString("Last Name"));
				stu.setGender(rs.getString("Gender"));
				stu.setPhone(rs.getString("Phone"));
				stu.setPassword(rs.getString("Password"));
				stu.setEmail(rs.getString("Email"));
				emp.add(stu);
				
			}
			conn.close();
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return emp;
	
	}
	

	public Student checkLogin(Student s)
	{
		try
		{
			Connection conn = MySQLConnection.getConnection();
			String sql="select * from user where Email=? and password=? and u_type=?";
			PreparedStatement pst=conn.prepareStatement(sql);
			pst.setString(1, s.getEmail());
			pst.setString(2, s.getPassword());
			pst.setString(3, s.getU_type());
			ResultSet rs=pst.executeQuery();
			if(rs.next())
			{
				s.setU_id(rs.getInt("u_id"));
				s.setF_name(rs.getString("FirstName"));
				s.setL_name(rs.getString("LastName"));
				s.setEmail(rs.getString("Email"));
				s.setPassword(rs.getString("Password"));
				s.setPhone(rs.getString("Phone"));
				s.setU_type(rs.getString("u_type"));
				
			}
			else
			{
				s=null;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return s;
	}

	
	public Student checkEmail(String email)
	{
		Student f=new Student();
		try {
		
			Connection conn=MySQLConnection.getConnection();
			String sql="select * from user where email=?";
			PreparedStatement stmt=conn.prepareStatement(sql);
			stmt.setString(1, email);
			ResultSet rs=stmt.executeQuery();
			if(rs.next())
			{
				f.setU_id(rs.getInt("u_id"));
				f.setEmail(rs.getString("email"));
				f.setF_name(rs.getString("firstname"));
			}
			else

			{
				f=null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
		
	}
	public int resetPassword(Student f)
	{
		int r=0;
		try {
			Connection conn=MySQLConnection.getConnection();
			String sql="update user set password=? where u_id=?";
			PreparedStatement stmt=conn.prepareStatement(sql);
			stmt.setString(1, f.getPassword());
			stmt.setInt(2, f.getU_id());
			r=stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return r;
	}


}



