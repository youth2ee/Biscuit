package com.biscuit.b1.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class ExceptionController {
	
	/*
	 * @ResponseStatus(HttpStatus.NOT_FOUND) public ModelAndView getClient() {
	 * ModelAndView mv = new ModelAndView();
	 * mv.setViewName("common/common_400_error"); return mv; }
	 */
	 
	
	  @ExceptionHandler(NullPointerException.class) public ModelAndView getNull() {
	  ModelAndView mv = new ModelAndView();
	  mv.setViewName("common/common_500_error"); return mv; }
	  
	  @ExceptionHandler(NumberFormatException.class) public ModelAndView
	  getNumberFormat() { ModelAndView mv = new ModelAndView();
	  mv.setViewName("common/common_500_error"); return mv; }
	  
	  @ExceptionHandler(Exception.class) public ModelAndView getException() {
	  ModelAndView mv = new ModelAndView();
	  mv.setViewName("common/common_500_error"); return mv; }

}
