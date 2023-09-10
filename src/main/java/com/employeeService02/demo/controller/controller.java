package com.employeeService02.demo.controller;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.employeeService02.demo.EmployeeService02Application;
import com.employeeService02.demo.entity.employee;
import com.employeeService02.demo.repo.employeeRepository;
import com.employeeService02.demo.service.serviceClass;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.util.Map;
@RestController
public class controller {
	@Autowired
	serviceClass service;
	@Autowired
	employeeRepository emp;
@PostMapping(value="saveEmployee")
public ModelAndView saveEmployee (@ModelAttribute employee employee, HttpSession session, Model model)
{
	String status=(String)session.getAttribute("status");
	if(status!=null)
	{
employee emp=service.saveEmployee(employee);
if(emp!=null) 
{
	return new ModelAndView ("addemployee","msg","record inserted successfully");
}
else {
	return new ModelAndView ("addemployee","msg","record not inserted");
}
	}
	
	else
	{
		model.addAttribute("msg", "login first");
		return new ModelAndView ("login");
	}
	
}
@GetMapping(value="fetch")
public ModelAndView fetch(HttpSession session, Model model)
{
	String status=(String)session.getAttribute("status");
	if(status!=null)
	{
	List<employee> list=service.fetch();
	return new ModelAndView("getemployee","list", list);
	}
	else
	{
		model.addAttribute("msg", "login first");
		return new ModelAndView("login");
	}
}

	

@GetMapping(value="getemployeebyId")
public ModelAndView getemployeebyId (@RequestParam String eid, @RequestParam String msg, Model model, HttpSession session)
{
	String status=(String)session.getAttribute("status");
	if(status!=null)
	{
		employee emp=service.getEmployeebyId(eid);
		if(!msg.equalsIgnoreCase("null"))
		{
		model.addAttribute("msg",msg);	
		}
		model.addAttribute("Employee",emp);
		return new ModelAndView("profile", "Employee", emp);
	}
	else
	{
		model.addAttribute("msg", "login first");
		return new ModelAndView("login");
	}


	
}
@PostMapping(value="update")
public ModelAndView update (@ModelAttribute employee employee)
{
	
	
	employee emp=service.update(employee);
	if(emp!=null)
	{
		return new ModelAndView("redirect:fetch?eid="+employee.getEmployeeId()+ "msg=updated");
	}
	else
	{
		return new ModelAndView("redirect:fetch?eid="+employee.getEmployeeId()+ "msg=notUpdated");
	}
}
@GetMapping(value="deleteEmployeeById")
public ModelAndView deleteEmployeeById(@RequestParam String eid)
{
	boolean emp=service.deleteEmployeebyId(eid);
     return new ModelAndView("redirect:/getEmployee") ;
     
}

@GetMapping(value = "getEmployee")
public ModelAndView getEmployee(HttpSession session, Model model) {
	String status=(String)session.getAttribute("status");
	if(status!=null)
	{
	List<employee> list=service.fetch();
    return new ModelAndView("getemployee", "list", list);
	}
	else
	{
		model.addAttribute("msg", "login first");
		return new ModelAndView("login");
	}

}






}
