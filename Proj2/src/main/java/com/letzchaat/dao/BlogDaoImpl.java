package com.letzchaat.dao;

import java.io.Serializable;
import java.sql.Clob;
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

import com.letzchaat.model.BlogInfo;
import com.letzchaat.model.StudentInfo;
import com.letzchaat.model.UserRole;
import com.letzchaat.model.Users;
@Repository("blogDao")
public class BlogDaoImpl implements BlogDao{
	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional(propagation=Propagation.SUPPORTS)
	public int insertRow(BlogInfo b) {
		Session ses = sessionFactory.openSession();  
		  Transaction tx = ses.beginTransaction();
		  ses.saveOrUpdate(b); 
		  ses.flush();
		  tx.commit();  
		  Serializable id = ses.getIdentifier(b);  
		  ses.close();  
		  return (Integer) id; 
	}

	
	/*@Transactional(propagation=Propagation.SUPPORTS)
	public int insertRow(String u,String c,String tit,String d,String t) {
		Session ses = sessionFactory.openSession();  
		  Transaction tx = ses.beginTransaction();
		  BlogInfo b=new BlogInfo();*/
		     /*Date dt=new Date();
			SimpleDateFormat formatter=new SimpleDateFormat("d/MM/yyyy HH:mm");
			String res=formatter.format(dt);*/
			 //m.addAttribute("createdate", res);
			//System.out.println("Simple date format pattern="+res);
		    /*Users newUser = new Users();
	        b.setUsername(u);
	        b.setCreate_date(d);
	        b.setContent(c);
	        b.setTag(t);
	        b.setTitle(tit);
	        ses.saveOrUpdate(b);
	       
          ses.flush();
		    tx.commit();  
		  Serializable id = ses.getIdentifier(b);  
		  ses.close();  
		  return (Integer) id;  
	}*/
	@Transactional(propagation=Propagation.SUPPORTS)
	public List<BlogInfo> getList() {
		Session session = sessionFactory.openSession();  
		  @SuppressWarnings("unchecked")  
		  List<BlogInfo> blogList = session.createQuery("from BlogInfo").list();    
		   session.close();  
		  return blogList;  
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public BlogInfo getRowById(int id) {
		Session session = sessionFactory.openSession();  
		BlogInfo b = (BlogInfo) session.load(BlogInfo.class, id);  
		  return b;
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public int updateRow(BlogInfo b) {
		Session session = sessionFactory.openSession();  
		  Transaction tx = session.beginTransaction();
		   session.saveOrUpdate(b);
	        session.flush();
		  tx.commit();  
		  Serializable id = session.getIdentifier(b);  
		  session.close();  
		  return (Integer) id; 
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public int deleteRow(int id) {
		Session session = sessionFactory.openSession();  
		  Transaction tx = session.beginTransaction();  
		  BlogInfo b = (BlogInfo) session.load(BlogInfo.class, id);
		   session.delete(b);
	       session.flush();
		   tx.commit();  
		  Serializable ids = session.getIdentifier(b);  
		  session.close();  
		  return (Integer) ids;  
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public List<Users> getuserDet(String s) {
		Session session=sessionFactory.openSession();
        Query q=session.createQuery("from Users where username=?");
        q.setString(0, s);
        List<Users> st=q.list();
		return st;
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public List<Users> getuserList() {
		Session session = sessionFactory.openSession();  
		  @SuppressWarnings("unchecked")  
		  List<Users> uList = session.createQuery("from Users").list();    
		   session.close();  
		  return uList;  
	}
	
	@Transactional(propagation=Propagation.SUPPORTS)
	public List<BlogInfo> getuserBlog(String s) {
		Session session=sessionFactory.openSession();
        Query q=session.createQuery("from BlogInfo where busername=?");
        q.setString(0, s);
        List<BlogInfo> st=q.list();
		return st;
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public List<BlogInfo> getTagDetail(String s) {
		Session session=sessionFactory.openSession();
        Query q=session.createQuery("from BlogInfo where btag=?");
        q.setString(0, s);
        List<BlogInfo> tg=q.list();
		return tg;
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public List<BlogInfo> getTitle(String s) {
		Session session=sessionFactory.openSession();
        Query q=session.createQuery("from BlogInfo where btitle=?");
        q.setString(0, s);
        List<BlogInfo> tit=q.list();
		return tit;
	}

	
	
}
