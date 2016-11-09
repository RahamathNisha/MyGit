package com.letzchaat.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ChatMessages {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int no_msgs;
    
	private String message;
    
	private String msgDate;

	public int getNo_msgs() {
		return no_msgs;
	}

	public void setNo_msgs(int no_msgs) {
		this.no_msgs = no_msgs;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	public String getMsgDate() {
		return msgDate;
	}

	public void setMsgDate(String msgDate) {
		this.msgDate = msgDate;
	}
}
