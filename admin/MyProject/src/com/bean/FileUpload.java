package com.bean;

import java.io.InputStream;

public class FileUpload {
	private int id;
	private String File_name;
	private InputStream File_Data;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFile_name() {
		return File_name;
	}
	public void setFile_name(String file_name) {
		File_name = file_name;
	}
	public InputStream getFile_Data() {
		return File_Data;
	}
	public void setFile_Data(InputStream file_Data) {
		File_Data = file_Data;
	}
	
	
}
