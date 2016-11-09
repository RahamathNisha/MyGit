package com.letzchaat.service;

import java.sql.Clob;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.letzchaat.dao.BlogDao;
import com.letzchaat.dao.StudentDao;
import com.letzchaat.model.BlogInfo;
import com.letzchaat.model.Users;
@Service("blogService")
public class BlogServiceImpl implements BlogService{
	@Autowired
	BlogDao blogDao;
	
	@Transactional(propagation=Propagation.SUPPORTS)
	public int insertRow(BlogInfo b) {
		// TODO Auto-generated method stub
		return blogDao.insertRow(b);
	}
	/*@Transactional(propagation=Propagation.SUPPORTS)
	public int insertRow(String u,String c,String tit,String d,String t) {
		// TODO Auto-generated method stub
		return blogDao.insertRow(u,c,tit,d,t);
	}*/
	@Transactional(propagation=Propagation.SUPPORTS)
	public List<BlogInfo> getList() {
		// TODO Auto-generated method stub
		return blogDao.getList();
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public BlogInfo getRowById(int id) {
		// TODO Auto-generated method stub
		return blogDao.getRowById(id);
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public int updateRow(BlogInfo s) {
		// TODO Auto-generated method stub
		return blogDao.updateRow(s);
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public int deleteRow(int id) {
		// TODO Auto-generated method stub
		return blogDao.deleteRow(id);
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public List<Users> getuserDet(String s) {
		// TODO Auto-generated method stub
		return blogDao.getuserDet(s);
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public List<Users> getuserList() {
		// TODO Auto-generated method stub
		return blogDao.getuserList();
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public List<BlogInfo> getuserBlog(String s) {
		// TODO Auto-generated method stub
		return blogDao.getuserBlog(s);
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public List<BlogInfo> getTagDetail(String s) {
		// TODO Auto-generated method stub
		return blogDao.getTagDetail(s);
	}
	
	

}
