package com.letzchaat.dao;

import java.util.List;


import com.letzchaat.model.Student;

public interface StudentDao {
	public int insertRow(Student s);  
	  
	 public List<Student> getList();  
	  
	 public Student getRowById(int id); 
	 
	 public int updateRow(Student s);  
	  
	 public int deleteRow(int id); 
}
