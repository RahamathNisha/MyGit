package com.letzchaat.service;

import java.util.List;

import com.letzchaat.model.ChatMessages;



public interface ChatService {
	public int insertRow(ChatMessages s); 
	public List<ChatMessages> getListMessages(String s);  
	public int insertMessage(String message,String d);
	 public List<ChatMessages> getListMessages();
}
