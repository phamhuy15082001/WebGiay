package com.devpro.SolveException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@ControllerAdvice
public class SolveException {
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpServletResponse response;
	
	@ExceptionHandler(value = CustomException.class)
	public void handleCustom(CustomException e) {
		try {
			response.sendRedirect(request.getContextPath() + "/home/error");
		} catch (IOException e1) {
			e1.printStackTrace();
		}
	}
	
	@ExceptionHandler(value = BindException.class)
	public String handleBind(BindException e) {
		return "redirect:/customer";
	}
	
}
