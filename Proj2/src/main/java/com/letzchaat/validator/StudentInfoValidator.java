package com.letzchaat.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.letzchaat.model.StudentInfo;

public class StudentInfoValidator implements Validator{

	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return StudentInfo.class.isAssignableFrom(arg0);
	}

	public void validate(Object obj, Errors arg1) {
		// TODO Auto-generated method stub
		StudentInfo s=(StudentInfo)obj;
	}

}
