package com.letzchaat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.letzchaat.dao.StudentInfoDao;
import com.letzchaat.model.StudentInfo;
import com.letzchaat.model.Users;
@Service("studentInfoService")
public class StudentInfoServiceImpl implements StudentInfoService{
	@Autowired
StudentInfoDao studentInfoDao;
	@Transactional(propagation=Propagation.SUPPORTS)
	public int insertRow(StudentInfo s) {
		// TODO Auto-generated method stub
		return studentInfoDao.insertRow(s);
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public List<StudentInfo> getList() {
		// TODO Auto-generated method stub
		return studentInfoDao.getList();
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public StudentInfo getRowById(int id) {
		// TODO Auto-generated method stub
		return studentInfoDao.getRowById(id);
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public int updateRow(StudentInfo s) {
		// TODO Auto-generated method stub
		return studentInfoDao.updateRow(s);
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public int deleteRow(int id) {
		// TODO Auto-generated method stub
		return studentInfoDao.deleteRow(id);
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public List<StudentInfo> getStudentRecord(String s) {
		// TODO Auto-generated method stub
		return studentInfoDao.getStudentRecord(s);
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public List<Users> getStudentUser(String s) {
		// TODO Auto-generated method stub
		return studentInfoDao.getStudentUser(s);
	}

}
