package com.employeeService02.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.employeeService02.demo.entity.employee;
import com.employeeService02.demo.service.serviceClass;

import jakarta.servlet.http.HttpSession;

@Controller
public class pageController {
	@Autowired
	serviceClass service;
	@RequestMapping(value="/")
	public String  login()
	{
		return "login";
	}
	
	@RequestMapping(value="fetch1")
	public String fetch(HttpSession session, Model model)
	{
		String status=(String)session.getAttribute("status");
		if(status!=null)
		{
			return "getemployee";
		}
		else
		{
			model.addAttribute("msg","login first");
			return "login";
		}
	}
	
	
	
	@RequestMapping(value="home")
	public String  home(HttpSession session, Model model)
	{
		String status=(String)session.getAttribute("status");
		if(status!=null)
		{
			return "home";
		}
		else
		{
			model.addAttribute("msg", "Login first");
		  return "login";
	    }
		}
	
	
	@PostMapping(value="loginProcess")
	public ModelAndView loginprocess(@ModelAttribute employee emp, HttpSession session)
	{
		System.out.println(emp);
		
		employee emp1=service.loginProcess(emp);
		System.out.println(emp1);
		if(emp1!=null)
		{
			session.setAttribute("role", emp1.getRole());
			session.setAttribute("username", emp1.getUserName());
			session.setAttribute("id", emp1.getEmployeeId());
			session.setAttribute("status", emp1.getStatus());
			return new ModelAndView("home");
		}
		else
		{
			return new ModelAndView("login","msg","invalid details");
		}
	}
	@RequestMapping (value="/addemployee")
	public String addEmployees()
	{
		System.out.println(" in addEmployees controller");
		return "addemployee";
		
	}
	
	
	@RequestMapping("logout")
	public String logout(@RequestParam String eid, HttpSession session) 
	{
	service.logout(eid, session);
	return "login";

		
	}
	
  

}
