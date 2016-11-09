package com.letzchaat.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.letzchaat.model.StudAddress;
import com.letzchaat.model.Student;



@Repository("studentDao")
public class StudentDaoImpl implements StudentDao{
	@Autowired
	private SessionFactory sessionFactory;
	@Transactional(propagation=Propagation.SUPPORTS)
	public int insertRow(Student s) {
		Session ses = sessionFactory.openSession();  
		  Transaction tx = ses.beginTransaction();
		  s.getStudentAddress().setSt(s);
		  ses.saveOrUpdate(s); 
		  //ses.saveOrUpdate(s.getStudentAddress());
		  tx.commit();  
		  Serializable id = ses.getIdentifier(s);  
		  ses.close();  
		  return (Integer) id;  
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public List<Student> getList() {
		Session session = sessionFactory.openSession();  
		  @SuppressWarnings("unchecked")  
		  List<Student> studentList = session.createQuery("from Student").list();    
		   session.close();  
		  return studentList;  
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public Student getRowById(int id) {
		Session session = sessionFactory.openSession();  
		 Student s = (Student) session.load(Student.class, id);  
		  return s;  
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public int updateRow(Student s) {
		Session session = sessionFactory.openSession();  
		  Transaction tx = session.beginTransaction();
		  s.getStudentAddress().setSt(s);
		  session.saveOrUpdate(s);  
		  //session.saveOrUpdate(s.getStudentAddress());
		  tx.commit();  
		  Serializable id = session.getIdentifier(s);  
		  session.close();  
		  return (Integer) id; 
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public int deleteRow(int id) {
		Session session = sessionFactory.openSession();  
		  Transaction tx = session.beginTransaction();  
		  Student s = (Student) session.load(Student.class, id);
		  s.getStudentAddress().setSt(s);
		  session.delete(s);  
		  tx.commit();  
		  Serializable ids = session.getIdentifier(s);  
		  session.close();  
		  return (Integer) ids;  
	}
	

}
