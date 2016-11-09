package com.letzchaat.dao;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.letzchaat.model.ForumInfo;
import com.letzchaat.model.Student;
import com.letzchaat.model.StudentInfo;

@Repository("forumDao")
public class ForumDaoImpl implements ForumDao{
	@Autowired
	private SessionFactory sessionFactory;
	@Transactional(propagation=Propagation.SUPPORTS)
	public int insertRow(ForumInfo f) {
		Session ses = sessionFactory.openSession();  
		  Transaction tx = ses.beginTransaction();
		 /* f=new ForumInfo();
		  Date dt=new Date();
			SimpleDateFormat formatter=new SimpleDateFormat("d/MM/yyyy HH:mm");
			String d=formatter.format(dt);
			 //m.addAttribute("createdate", res);
			System.out.println("Simple date format pattern for forum creation="+d);
		  f.setFcreate_date(d);*/
		  ses.saveOrUpdate(f); 
		  ses.flush();
		  //ses.saveOrUpdate(s.getStudentAddress());
		  tx.commit();  
		  Serializable id = ses.getIdentifier(f);  
		  ses.close();  
		  return (Integer) id; 
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public List<ForumInfo> getList() {
		Session session = sessionFactory.openSession();  
		  @SuppressWarnings("unchecked")  
		  List<ForumInfo> fList = session.createQuery("from ForumInfo").list();    
		   session.close();  
		  return fList; 
		   
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public ForumInfo getRowById(int id) {
		Session session = sessionFactory.openSession();  
		ForumInfo s = (ForumInfo) session.load(ForumInfo.class, id);  
		  return s;  
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public int updateRow(ForumInfo f) {
		Session session = sessionFactory.openSession();  
		  Transaction tx = session.beginTransaction();
		 /* f=new ForumInfo();
		  Date dt=new Date();
			SimpleDateFormat formatter=new SimpleDateFormat("d/MM/yyyy HH:mm");
			String d=formatter.format(dt);
			 //m.addAttribute("createdate", res);
			System.out.println("Simple date format pattern for forum creation="+d);
		  f.setFcreate_date(d);*/
		  session.saveOrUpdate(f);  
		  //session.saveOrUpdate(s.getStudentAddress());
		  session.flush();
		  tx.commit();  
		  Serializable id = session.getIdentifier(f);  
		  session.close();  
		  return (Integer) id; 
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public int deleteRow(int id) {
		Session session = sessionFactory.openSession();  
		  Transaction tx = session.beginTransaction();  
		  ForumInfo f = (ForumInfo) session.load(ForumInfo.class, id);
		  
		  session.delete(f);  
		  tx.commit();  
		  Serializable ids = session.getIdentifier(f);  
		  session.close();  
		  return (Integer) ids;  
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public List<ForumInfo> getTopic(String s) {
		Session session=sessionFactory.openSession();
        Query q=session.createQuery("from ForumInfo where ftitle=?");
        q.setString(0, s);
        List<ForumInfo> st=q.list();
		return st;
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public List<ForumInfo> getpostTopic(int id) {
		Session session=sessionFactory.openSession();
        Query q=session.createQuery("from ForumInfo where forumId=?");
        q.setInteger(0, id);
        List<ForumInfo> postlist=q.list();
		return postlist;
	}
	

}
