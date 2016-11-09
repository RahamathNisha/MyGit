package com.letzchaat.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.letzchaat.model.StudAddress;

public class StudAddressValidator implements Validator{

	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return StudAddress.class.isAssignableFrom(arg0);
	}

	public void validate(Object obj, Errors arg1) {
		// TODO Auto-generated method stub
		StudAddress sa=(StudAddress)obj;
	}

}
