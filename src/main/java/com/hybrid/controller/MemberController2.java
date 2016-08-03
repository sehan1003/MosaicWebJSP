package com.hybrid.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hybrid.domain.MemberInfo;

@RequestMapping("/login")
public class MemberController2 {
	static Logger log = LoggerFactory.getLogger(MemberController2.class);
	
	public String LoginForm(){
		log.info("###################");
		log.info("loginForm()...");
		log.info("###################");
		
		return "loginForm";
	}
	
	public String LoginTo(MemberInfo member){
		log.info("##################");
		log.info("LoginTo()...");
		log.info("##################");
		
		log.info("id = " + member.getId());
		log.info("name = " + member.getName());
		log.info("email = " + member.getEmail());
		
		return "loginTo";
	}
}
