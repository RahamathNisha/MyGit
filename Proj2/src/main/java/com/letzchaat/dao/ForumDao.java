package com.letzchaat.dao;

import java.util.List;

import com.letzchaat.model.ForumInfo;

public interface ForumDao {
	public int insertRow(ForumInfo f);  
	  
	 public List<ForumInfo> getList();  
	  
	 public ForumInfo getRowById(int id); 
	 
	 public int updateRow(ForumInfo f);  
	  
	 public int deleteRow(int id);
	 
	 public List<ForumInfo> getTopic(String s);  
	 
	 public List<ForumInfo> getpostTopic(int id);  
}
