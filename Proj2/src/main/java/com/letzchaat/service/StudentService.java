package com.letzchaat.service;

import java.util.List;

import com.letzchaat.model.StudAddress;
import com.letzchaat.model.Student;
import com.letzchaat.model.Users;

public interface StudentService {
	public int insertRow(Student s);  
	  
	 public List<Student> getList();  
	  
	 public Student getRowById(int id);  
	
     public int updateRow(Student s);  
	  
	 public int deleteRow(int id); 
	 
}
