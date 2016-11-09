package com.letzchaat.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class BlogInfo {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int blogid;
    
    @NotEmpty(message="Date field is mandatory.")
    private String bcreate_date;
    
    @NotEmpty(message="Title field is mandatory.")
    private String btitle;
    
    @NotEmpty(message="Post your content field is mandatory.")
    private String bcontent;
    
    @NotEmpty(message="Tag your blog with its subject.")
    private String btag;
    
    @NotEmpty(message="Username field is mandatory.")
    private String busername;
    
    @NotEmpty(message="Comment blog post.")
    private String bcomment;
    
    @NotEmpty(message="For an additional reference of the topic.")
    private String bwebsite;
    
    @NotEmpty(message="Rate blog post.")
	private String brate;
   
    public int getBlogid() {
		return blogid;
	}
	public void setBlogid(int blogid) {
		this.blogid = blogid;
	}
	public String getBcreate_date() {
		return bcreate_date;
	}
	public void setBcreate_date(String bcreate_date) {
		this.bcreate_date = bcreate_date;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBcontent() {
		return bcontent;
	}
	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	public String getBtag() {
		return btag;
	}
	public void setBtag(String btag) {
		this.btag = btag;
	}
	public String getBusername() {
		return busername;
	}
	public void setBusername(String busername) {
		this.busername = busername;
	}
	public String getBcomment() {
		return bcomment;
	}
	public void setBcomment(String bcomment) {
		this.bcomment = bcomment;
	}
	public String getBwebsite() {
		return bwebsite;
	}
	public void setBwebsite(String bwebsite) {
		this.bwebsite = bwebsite;
	}
	public String getBrate() {
		return brate;
	}
	public void setBrate(String brate) {
		this.brate = brate;
	}
	
}
