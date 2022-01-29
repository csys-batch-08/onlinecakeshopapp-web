package com.cakeshop.exception;

public class InvalidPriceException extends Exception {

	
	private static final long serialVersionUID = 1L;

	@Override
	public String getMessage() {
		return "Product Not Available";
	}
}
