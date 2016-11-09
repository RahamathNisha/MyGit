package com.letzchaat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.letzchaat.dao.StudentDao;
import com.letzchaat.model.StudAddress;
import com.letzchaat.model.Student;
import com.letzchaat.model.Users;
@Service("studentService")
public class StudentServiceImpl implements StudentService{
@Autowired
StudentDao studentDao;
@Transactional(propagation=Propagation.SUPPORTS)
	public int insertRow(Student s) {
		// TODO Auto-generated method stub
		return studentDao.insertRow(s);
	}
@Transactional(propagation=Propagation.SUPPORTS)
	public List<Student> getList() {
		// TODO Auto-generated method stub
		return studentDao.getList();
	}
@Transactional(propagation=Propagation.SUPPORTS)
	public Student getRowById(int id) {
		// TODO Auto-generated method stub
		return studentDao.getRowById(id);
	}
@Transactional(propagation=Propagation.SUPPORTS)
	public int updateRow(Student s) {
		// TODO Auto-generated method stub
		return studentDao.updateRow(s);
	}
@Transactional(propagation=Propagation.SUPPORTS)
	public int deleteRow(int id) {
		// TODO Auto-generated method stub
		return studentDao.deleteRow(id);
	}




}
