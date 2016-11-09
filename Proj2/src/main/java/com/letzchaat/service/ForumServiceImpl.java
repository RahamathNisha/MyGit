package com.letzchaat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.letzchaat.dao.ForumDao;
import com.letzchaat.model.ForumInfo;

@Service("forumService")
public class ForumServiceImpl implements ForumService{
	@Autowired
    ForumDao forumDao;
	@Transactional(propagation=Propagation.SUPPORTS)
	public int insertRow(ForumInfo f) {
		// TODO Auto-generated method stub
		return forumDao.insertRow(f);
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public List<ForumInfo> getList() {
		// TODO Auto-generated method stub
		return forumDao.getList();
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public ForumInfo getRowById(int id) {
		// TODO Auto-generated method stub
		return forumDao.getRowById(id);
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public int updateRow(ForumInfo f) {
		// TODO Auto-generated method stub
		return forumDao.updateRow(f);
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public int deleteRow(int id) {
		// TODO Auto-generated method stub
		return forumDao.deleteRow(id);
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public List<ForumInfo> getTopic(String s) {
		// TODO Auto-generated method stub
		return forumDao.getTopic(s);
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public List<ForumInfo> getpostTopic(int id) {
		// TODO Auto-generated method stub
		return forumDao.getpostTopic(id);
	}
	
}
