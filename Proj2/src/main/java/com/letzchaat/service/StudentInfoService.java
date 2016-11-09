package com.letzchaat.service;

import java.util.List;

import com.letzchaat.model.StudentInfo;
import com.letzchaat.model.Users;

public interface StudentInfoService {
	public int insertRow(StudentInfo s);  
	  
	 public List<StudentInfo> getList();  
	  
	 public StudentInfo getRowById(int id); 
	 
	 public int updateRow(StudentInfo s);  
	  
	 public int deleteRow(int id);
	 
	 public List<StudentInfo> getStudentRecord(String s);
	 public List<Users> getStudentUser(String s);
}
