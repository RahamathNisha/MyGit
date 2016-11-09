package com.letzchaat.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Student {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int sid;
	
	@NotEmpty(message="Name field is mandatory.")
	private String sname;
	
	@NotEmpty(message="Password field is mandatory.")
    private String password;
	
	@NotEmpty(message="DOB field is mandatory.")
	private String dob;
	
	@NotEmpty(message="Gender field is mandatory.")
	private String gender;
    
	@NotEmpty(message="Phone number field is mandatory.")
	private String number;
	
	@NotEmpty(message="Email field is mandatory.")
	private String email;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="studentAddressId")
	private StudAddress studentAddress;
	
    public Student() {
		super();
	}
	   
	public StudAddress getStudentAddress() {
		return studentAddress;
	}

	public void setStudentAddress(StudAddress studentAddress) {
		this.studentAddress = studentAddress;
	}

	public int getSid() {
		return sid;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}
	
	public String getSname() {
		return sname;
	}
	
	public void setSname(String sname) {
		this.sname = sname;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getNumber() {
		return number;
	}
	
	public void setNumber(String number) {
		this.number = number;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}	
}
