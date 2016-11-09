package com.letzchaat.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ForumCmt {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int cmtId;

	private int cforumId;
	private String cusername;
	private String ctitle;
	private String ccontent;
	private String ccategory;
	private String ccreate_date;
	private String rating;

	public int getCforumId() {
		return cforumId;
	}

	public void setCforumId(int cforumId) {
		this.cforumId = cforumId;
	}

	public String getCcontent() {
		return ccontent;
	}

	public void setCcontent(String ccontent) {
		this.ccontent = ccontent;
	}

	public String getCcategory() {
		return ccategory;
	}

	public void setCcategory(String ccategory) {
		this.ccategory = ccategory;
	}

	public String getCcreate_date() {
		return ccreate_date;
	}

	public void setCcreate_date(String ccreate_date) {
		this.ccreate_date = ccreate_date;
	}

	public int getCmtId() {
		return cmtId;
	}

	public void setCmtId(int cmtId) {
		this.cmtId = cmtId;
	}

	public String getCusername() {
		return cusername;
	}

	public void setCusername(String cusername) {
		this.cusername = cusername;
	}

	public String getCtitle() {
		return ctitle;
	}

	public void setCtitle(String ctitle) {
		this.ctitle = ctitle;
	}

	public String getRating() {
		return rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

}
