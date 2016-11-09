package com.letzchaat.dao;


import java.io.Serializable;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.letzchaat.model.ChatMessages;

@Repository("chatDao")
public class ChatDaoImpl implements ChatDao{
	@Autowired
	private SessionFactory sessionFactory;

@Transactional(propagation=Propagation.SUPPORTS)
	public int insertRow(ChatMessages s) {
	Session ses = sessionFactory.openSession();  
	  Transaction tx = ses.beginTransaction();
	  //ses.saveOrUpdate(s); 
	   HttpServletRequest request=null;
	   String u=request.getParameter("userName");
       String m=request.getParameter("message");
       //s.setUserName(u);
       s.setMessage(m);
    //s.setUsername(s.getUsername());
   // s.setMessage(s.getMessage());
   // s.setMessageIndex(s.getMessageIndex());
    //s.setChatContent(s.getChatContent());
    //s.setActivePollingXhr(s.getActivePollingXhr());
    //message=chatRepository.getMsg();
   
  
    
    ses.saveOrUpdate(s);
    
ses.flush();
	    tx.commit();  
	  Serializable id = ses.getIdentifier(s);  
	  ses.close();  
	  return (Integer) id;  

	}

@Transactional(propagation=Propagation.SUPPORTS)
public List<ChatMessages> getMessageByUser(String s) {
	Session session=sessionFactory.openSession();
    Query q=session.createQuery("from ChatMessages where username=?");
    q.setString(0, s);
    List<ChatMessages> st=q.list();
	return st;
	
}

@Transactional(propagation=Propagation.SUPPORTS)
public int insertMessage(String message,String d) {
	Session ses = sessionFactory.openSession();  
	  Transaction tx = ses.beginTransaction();
	  //ses.saveOrUpdate(s); 
	  ChatMessages s=new ChatMessages();
	      // s.setUserName(username);
     s.setMessage(message);
     s.setMsgDate(d);
  ses.saveOrUpdate(s);
  
ses.flush();
	    tx.commit();  
	  Serializable id = ses.getIdentifier(s);  
	  ses.close();  
	  return (Integer) id;  
}

@Transactional(propagation=Propagation.SUPPORTS)
public List<ChatMessages> getListMessages() {
	Session session = sessionFactory.openSession();  
	  @SuppressWarnings("unchecked")  
	  List<ChatMessages> fList = session.createQuery("from ChatMessages").list();    
	   session.close();  
	  return fList; 

}

}
