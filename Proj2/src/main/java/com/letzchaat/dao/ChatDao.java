package com.letzchaat.dao;

import java.util.List;

import com.letzchaat.model.ChatMessages;




public interface ChatDao {
	public int insertRow(ChatMessages s); 
	public List<ChatMessages> getMessageByUser(String s);  
	public int insertMessage(String message,String d);
	 public List<ChatMessages> getListMessages();
}
