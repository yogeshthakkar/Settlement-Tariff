package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.bean.FileUpload;
import com.util.MySQLConnection;

public class FileUploadDao {
	public int UploadFile(FileUpload f){
		int r = 0;
		try {
		String sql="update  jobseeker set File_name = ? where id=?";
		Connection conn = MySQLConnection.getConnection();
		PreparedStatement pst = conn.prepareStatement(sql);
		pst.setString(1, f.getFile_name());
    	pst.setInt(2,f.getId());
			r=pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return r;
	}
	
}
