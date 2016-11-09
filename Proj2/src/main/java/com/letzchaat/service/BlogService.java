package com.letzchaat.service;

import java.sql.Clob;
import java.util.List;

import com.letzchaat.model.BlogInfo;
import com.letzchaat.model.Users;

public interface BlogService {
	public int insertRow(BlogInfo b);  
	//public int insertRow(String u,String c,String tit,String d,String t);  
	  
	 public List<BlogInfo> getList();  
	  
	 public BlogInfo getRowById(int id); 
	 
	 public int updateRow(BlogInfo s);  
	  
	 public int deleteRow(int id); 
	 public  List<Users> getuserDet(String s);
	 public  List<Users> getuserList();
	 public List<BlogInfo> getuserBlog(String s);
	 public List<BlogInfo> getTagDetail(String s);
	
}
