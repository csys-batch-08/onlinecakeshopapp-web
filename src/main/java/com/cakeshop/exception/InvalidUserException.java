package com.cakeshop.exception;

public class InvalidUserException extends Exception {

	private static final long serialVersionUID = 1L;

	@Override
	public String getMessage() {
		return "Invalid user";
	}
		
}
