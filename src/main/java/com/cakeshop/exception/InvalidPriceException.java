package com.cakeshop.exception;

public class InvalidPriceException extends Exception {

	public String getMessage() {
		return "Product Not Available";
	}
}
