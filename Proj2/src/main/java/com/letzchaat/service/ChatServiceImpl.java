package com.letzchaat.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.letzchaat.dao.ChatDao;
import com.letzchaat.model.ChatMessages;

@Service("chatService")
public class ChatServiceImpl implements ChatService{
	@Autowired
	ChatDao chatDao;
	@Transactional(propagation=Propagation.SUPPORTS)
	public int insertRow(ChatMessages s) {
		// TODO Auto-generated method stub
		return chatDao.insertRow(s);
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public List<ChatMessages> getListMessages(String s) {
		// TODO Auto-generated method stub
		return null;
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public int insertMessage(String message,String d) {
		// TODO Auto-generated method stub
		return chatDao.insertMessage( message,d);
	}
	@Transactional(propagation=Propagation.SUPPORTS)
	public List<ChatMessages> getListMessages() {
		// TODO Auto-generated method stub
		return chatDao.getListMessages();
	}

}
