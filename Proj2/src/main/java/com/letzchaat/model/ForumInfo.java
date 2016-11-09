package com.letzchaat.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class ForumInfo {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
    private int forumId;
	
	@NotEmpty(message="Username field is mandatory.")
	private String fusername;
	
	@NotEmpty(message="Title field is mandatory.")
    private String ftitle;
	
	@NotEmpty(message="Post your content field is mandatory.")
    private String  fcontent;
	
	@NotEmpty(message="Topic subject (i.e., java,php,android,etc.,) to be mentioned is mandatory.")
    private String category;
	
	@NotEmpty(message="Date field is mandatory.")
	private String fcreate_date;
	
	@NotEmpty(message="Rating can be given.")
	private String frate;
	
	public String getFrate() {
		return frate;
	}
	
	public void setFrate(String frate) {
		this.frate = frate;
	}
	
	public String getFcreate_date() {
		return fcreate_date;
	}
	
	public void setFcreate_date(String fcreate_date) {
		this.fcreate_date = fcreate_date;
	}
	
	public int getForumId() {
		return forumId;
	}
	
	public void setForumId(int forumId) {
		this.forumId = forumId;
	}
	
	public String getFusername() {
		return fusername;
	}
	
	public void setFusername(String fusername) {
		this.fusername = fusername;
	}
	
	public String getFtitle() {
		return ftitle;
	}
	
	public void setFtitle(String ftitle) {
		this.ftitle = ftitle;
	}
	
	public String getFcontent() {
		return fcontent;
	}
	
	public void setFcontent(String fcontent) {
		this.fcontent = fcontent;
	}
	
	public String getCategory() {
		return category;
	}
	
	public void setCategory(String category) {
		this.category = category;
	}	
}
