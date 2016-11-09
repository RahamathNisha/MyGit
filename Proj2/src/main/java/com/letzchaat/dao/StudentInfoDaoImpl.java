package com.letzchaat.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;


import com.letzchaat.model.StudentInfo;
import com.letzchaat.model.UserRole;
import com.letzchaat.model.Users;
@Repository("studentInfoDao")
public class StudentInfoDaoImpl implements StudentInfoDao{
	@Autowired
	private SessionFactory sessionFactory;
	@Transactional(propagation=Propagation.SUPPORTS)
	public int insertRow(StudentInfo s) {
		Session ses = sessionFactory.openSession();  
		  Transaction tx = ses.beginTransaction();
		  ses.saveOrUpdate(s); 
		    Users newUser = new Users();
	        newUser.setUsername(s.getUsername());
	        newUser.setPassword(s.getPassword());
	        newUser.setEnabled(true);
	        newUser.setSid(s.getSid());
	        UserRole newUserRole = new UserRole();
	        newUserRole.setUsername(s.getUsername());
	        newUserRole.setRole("ROLE_USER");
	        ses.saveOrUpdate(newUser);
	        ses.saveOrUpdate(newUserRole);
            ses.flush();
		    tx.commit();  
		  Serializable id = ses.getIdentifier(s);  
		  ses.close();  
		  return (Integer) id;  
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public List<StudentInfo> getList() {
		Session session = sessionFactory.openSession();  
		  @SuppressWarnings("unchecked")  
		  List<StudentInfo> studentList = session.createQuery("from StudentInfo").list();    
		   session.close();  
		  return studentList;  
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public StudentInfo getRowById(int id) {
		Session session = sessionFactory.openSession();  
		 StudentInfo s = (StudentInfo) session.load(StudentInfo.class, id);  
		  return s;
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public int updateRow(StudentInfo s) {
		Session session = sessionFactory.openSession();  
		  Transaction tx = session.beginTransaction();
		  session.saveOrUpdate(s);  
		  //session.saveOrUpdate(s.getStudentAddress());
		  Users newUser = new Users();
	        newUser.setUsername(s.getUsername());
	        newUser.setPassword(s.getPassword());
	        newUser.setEnabled(true);
	        newUser.setSid(s.getSid());
	        UserRole newUserRole = new UserRole();
	        newUserRole.setUsername(s.getUsername());
	        newUserRole.setRole("ROLE_USER");
	        session.saveOrUpdate(newUser);
	        session.saveOrUpdate(newUserRole);
          session.flush();
		  tx.commit();  
		  Serializable id = session.getIdentifier(s);  
		  session.close();  
		  return (Integer) id; 
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public int deleteRow(int id) {
		Session session = sessionFactory.openSession();  
		  Transaction tx = session.beginTransaction();  
		  StudentInfo s = (StudentInfo) session.load(StudentInfo.class, id);
		  //s.getStudentAddress().setSt(s);
		  
		  Users u = (Users)session.load(Users.class, id);
	       
	        UserRole ur = (UserRole)session.load(UserRole.class, id);
	        
	        session.delete(u);
	        session.delete(ur);
	        session.delete(s);
          session.flush();
		    
		  tx.commit();  
		  Serializable ids = session.getIdentifier(s);  
		  session.close();  
		  return (Integer) ids;  
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public List<StudentInfo> getStudentRecord(String s) {
		
           Session session=sessionFactory.openSession();
           Query q=session.createQuery("from StudentInfo where username=?");
          // Users u=new Users();
           //s=u.getUsername();
           q.setString(0, s);
           List<StudentInfo> st=q.list();
		return st;
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public List<Users> getStudentUser(String s) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
        Query q=session.createQuery("from Users where username=?");
       // Users u=new Users();
        //s=u.getUsername();
        q.setString(0, s);
        List<Users> st=q.list();
		return st;
	}

}
