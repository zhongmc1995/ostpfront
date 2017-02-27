package com.peace.ostp.exception;


/**
 * @classname CustomException
 * @author ZMC
 * @time 2016-12-29
 * 异常处理
 */
public class CustomException extends Exception {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String message;
	public CustomException(){}
	public CustomException(String message){
		this.setMessage(message);
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
}
